#!/usr/bin/env bash
set -euo pipefail

ARCHIVE="2017-10-01-juliet-test-suite-for-c-cplusplus-v1-3.zip"
URL="https://samate.nist.gov/SARD/downloads/test-suites/$ARCHIVE"
SHA256="ada9d7e1c323d283446df3f55bdee0d00bda1fed786785fe98764d58688f38eb"

mkdir -p data dataset work


echo
echo "=== Загрузка Juliet Test Suite ==="

wget -O "data/$ARCHIVE" "$URL"


echo
echo "=== Проверка SHA-256 ==="

ACTUAL_SHA256=$(sha256sum "data/$ARCHIVE" | awk '{print $1}')

if [ "$ACTUAL_SHA256" != "$SHA256" ]; then
    echo "Ошибка SHA-256"
    echo "Ожидалось: $SHA256"
    echo "Получено:   $ACTUAL_SHA256"
    exit 1
fi

echo "SHA-256 совпадает."


echo
echo "=== Распаковка Juliet ==="

rm -rf data/C
unzip -q "data/$ARCHIVE" -d data


echo
echo "=== Проверка исходных данных ==="

CWE23_COUNT=$(
    find data/C/testcases/CWE23_Relative_Path_Traversal \
        -type f -name '*.cpp' |
    grep -E '_[0-9][0-9]\.cpp$' |
    wc -l
)

CWE78_COUNT=$(
    find data/C/testcases/CWE78_OS_Command_Injection \
        -type f -name '*.c' |
    grep -E '_[0-9][0-9]\.c$' |
    wc -l
)

CWE134_COUNT=$(
    find data/C/testcases/CWE134_Uncontrolled_Format_String \
        -type f -name '*.c' |
    grep -E '_[0-9][0-9]\.c$' |
    wc -l
)

echo "CWE-23:  $CWE23_COUNT"
echo "CWE-78:  $CWE78_COUNT"
echo "CWE-134: $CWE134_COUNT"


[ "$CWE23_COUNT" -eq 1400 ] || {
    echo "Ошибка: ожидалось 1400 исходников CWE-23"
    exit 1
}

[ "$CWE78_COUNT" -eq 2600 ] || {
    echo "Ошибка: ожидалось 2600 исходников CWE-78"
    exit 1
}

[ "$CWE134_COUNT" -eq 1560 ] || {
    echo "Ошибка: ожидалось 1560 исходников CWE-134"
    exit 1
}


echo
echo "=== Компиляция CWE-134 ==="

python build_cwe134.py


echo
echo "=== Компиляция CWE-23 ==="

python build_cwe23.py


echo
echo "=== Компиляция CWE-78 ==="

python build_cwe78.py


echo
echo "=== Проверка LLVM IR ==="

LL23=$(find dataset/cwe23/ll -type f -name '*.ll' | wc -l)
LL78=$(find dataset/cwe78/ll -type f -name '*.ll' | wc -l)
LL134=$(find dataset/cwe134/ll -type f -name '*.ll' | wc -l)

echo "CWE-23:  $LL23"
echo "CWE-78:  $LL78"
echo "CWE-134: $LL134"

[ "$LL23" -eq 1568 ] || {
    echo "Ошибка: ожидалось 1568 LLVM IR объектов CWE-23"
    exit 1
}

[ "$LL78" -eq 2080 ] || {
    echo "Ошибка: ожидалось 2080 LLVM IR объектов CWE-78"
    exit 1
}

[ "$LL134" -eq 2860 ] || {
    echo "Ошибка: ожидалось 2860 LLVM IR объектов CWE-134"
    exit 1
}


echo
echo "=== Балансировка выборки ==="

python select_cases.py


echo
echo "=== Создание dataset.csv ==="

python make_dataset.py


echo
echo "=== Финальная проверка dataset.csv ==="

python - <<'PY'
import pandas as pd

df = pd.read_csv("dataset/dataset.csv")

print("Размер:", df.shape)

print("\nПо CWE:")
print(df["cwe"].value_counts().sort_index())

print("\nПо меткам:")
print(df["label"].value_counts().sort_index())

assert df.shape == (4704, 5)

assert (df["cwe"] == "cwe23").sum() == 1568
assert (df["cwe"] == "cwe78").sum() == 1568
assert (df["cwe"] == "cwe134").sum() == 1568

assert (df["label"] == "bad").sum() == 2352
assert (df["label"] == "good").sum() == 2352

assert (df["target"] == 1).sum() == 2352
assert (df["target"] == 0).sum() == 2352

print("\nВсе контрольные значения совпадают.")
PY


echo
echo "=== ГОТОВО ==="
