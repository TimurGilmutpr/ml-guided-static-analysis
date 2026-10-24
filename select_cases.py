from pathlib import Path
import random

BASE = Path.home() / "Desktop/juliet/dataset"

CWES = ["cwe23", "cwe78", "cwe134"]

N_CASES = 784
SEED = 42

for cwe in CWES:
    root = BASE / cwe

    valid_file = root / "valid_cases.txt"
    selected_file = root / "selected_cases.txt"

    cases = valid_file.read_text().splitlines()

    if len(cases) < N_CASES:
        raise RuntimeError(
            f"{cwe}: только {len(cases)} valid cases"
        )

    rng = random.Random(SEED)
    selected = rng.sample(cases, N_CASES)

    selected_file.write_text(
        "\n".join(selected) + "\n"
    )

    print(
        f"{cwe}: "
        f"valid={len(cases)}, "
        f"selected={len(selected)}"
    )
