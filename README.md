# ML-guided Static Analysis

Проект по ML-ранжированию уязвимостей в C/C++ коде на основе анализа промежуточного представления **LLVM IR**.

## Описание
В качестве датасета используется **Juliet Test Suite**. Скрипты проекта автоматически скачивают архив, компилируют исходные файлы в формат LLVM IR и формируют сбалансированную выборку для последующего обучения моделей машинного обучения.

### Поддерживаемые классы уязвимостей (CWE)
*   **CWE-23**: Relative Path Traversal
*   **CWE-78**: OS Command Injection
*   **CWE-134**: Uncontrolled Format String

## Требования
*   `python3` (`requirements.txt`)
*   `clang` (для компиляции исходного кода в LLVM IR)
*   `wget`, `unzip`, `sha256sum`

## Быстрый старт
Все этапы подготовки данных автоматизированы в едином bash-скрипте. Для запуска пайплайна выполните:

```bash
chmod +x prepare_dataset.sh
./prepare_dataset.sh
```

**Что делает скрипт:**
1. Скачивает архив Juliet Test Suite (v1.3) и валидирует его через SHA-256.
2. Распаковывает исходный код.
3. Компилирует уязвимые (`bad`) и безопасные (`good`) версии функций в LLVM IR (`.ll`).
4. Отбирает сбалансированную выборку (по 784 кейса на каждый поддерживаемый класс CWE).
5. Формирует итоговый файл `dataset/dataset.csv` (всего 4704 строки).

## Структура проекта
*   `prepare_dataset.sh` — главный пайплайн автоматической подготовки данных.
*   `build_cwe*.py` — скрипты компиляции файлов для конкретных классов CWE.
*   `select_cases.py` — модуль балансировки выборки.
*   `make_dataset.py` — скрипт сборки финального датасета в формате CSV.
*   `ML_part.ipynb` — Jupyter-ноутбук с обучением, тестированием и оценкой ML-модели.
*   `dataset/` — директория со сгенерированными данными (добавлена в `.gitignore`).

## Лицензия
Исходный код проекта распространяется под лицензией **MIT**.

### Attribution and Data Licenses
This repository contains examples derived from the Common Weakness Enumeration (CWE) made available by The MITRE Corporation.

*   **CWE™** is a trademark of The MITRE Corporation.
*   Copyright © 2006–2026, The MITRE Corporation. All rights reserved.

The CWE List is used under a non-exclusive, royalty-free license granted by MITRE for research, development, and commercial purposes. For more information, see the [MITRE CWE Terms of Use](https://mitre.org).

The test cases are generated using the **Juliet Test Suite** provided by NIST, which is in the public domain ([CC0 1.0](https://creativecommons.org)).
