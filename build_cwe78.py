from pathlib import Path
import subprocess
import re

JULIET = Path("data/C")
SRC_ROOT = JULIET / "testcases/CWE78_OS_Command_Injection"
SUPPORT = JULIET / "testcasesupport"

OUT_ROOT = Path("dataset/cwe78")
LL_ROOT = OUT_ROOT / "ll"
VALID_FILE = OUT_ROOT / "valid_cases.txt"

LL_ROOT.mkdir(parents=True, exist_ok=True)

pattern = re.compile(r"_[0-9][0-9]\.c$")

sources = sorted(
    p for p in SRC_ROOT.rglob("*.c")
    if pattern.search(p.name)
)

print("Найдено исходников:", len(sources))

valid_cases = []
failed = []

for i, source in enumerate(sources, 1):

    rel = source.relative_to(SRC_ROOT)

    # Например:
    # s02/CWE78_..._01.c
    #
    # превращаем в:
    # s02__CWE78_..._01
    case_id = "__".join(rel.with_suffix("").parts)

    case_dir = LL_ROOT / case_id
    case_dir.mkdir(parents=True, exist_ok=True)

    bad_path = case_dir / "bad.ll"
    good_path = case_dir / "good.ll"

    common = [
        "clang",
        "-S",
        "-emit-llvm",
        "-O0",
        "-I", str(SUPPORT),
    ]

    bad_cmd = common + [
        "-DOMITGOOD",
        str(source),
        "-o", str(bad_path),
    ]

    good_cmd = common + [
        "-DOMITBAD",
        str(source),
        "-o", str(good_path),
    ]

    bad_result = subprocess.run(
        bad_cmd,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
    )

    good_result = subprocess.run(
        good_cmd,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
    )

    if bad_result.returncode == 0 and good_result.returncode == 0:
        valid_cases.append(case_id)
    else:
        failed.append(case_id)

        # Не оставляем половинчатую пару
        bad_path.unlink(missing_ok=True)
        good_path.unlink(missing_ok=True)

    if i % 100 == 0:
        print(
            f"{i}/{len(sources)} | "
            f"valid={len(valid_cases)} | "
            f"failed={len(failed)}"
        )

VALID_FILE.write_text("\n".join(valid_cases) + "\n")

print()
print("Готово")
print("Всего исходников:", len(sources))
print("Успешных пар:", len(valid_cases))
print("Неуспешных:", len(failed))
print("LLVM IR объектов:", len(valid_cases) * 2)
