from pathlib import Path
import pandas as pd

BASE = Path("dataset")

CWES = ["cwe23", "cwe78", "cwe134"]

rows = []

for cwe in CWES:

    root = BASE / cwe
    ll_root = root / "ll"
    selected_file = root / "selected_cases.txt"

    cases = selected_file.read_text().splitlines()

    for case in cases:

        for label in ["bad", "good"]:

            path = ll_root / case / f"{label}.ll"

            rows.append({
                "cwe": cwe,
                "case": case,
                "label": label,
                "target": 1 if label == "bad" else 0,
                "path": str(path),
            })

df = pd.DataFrame(rows)

print(df.head())
print()
print("Размер:", df.shape)
print()
print(df["cwe"].value_counts())
print()
print(df["label"].value_counts())

df.to_csv(
    BASE / "dataset.csv",
    index=False
)

print()
print("Сохранено:", BASE / "dataset.csv")
