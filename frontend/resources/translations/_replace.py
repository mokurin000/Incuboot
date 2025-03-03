import json
from os import listdir


def process(d: dict):
    for k, v in d.items():
        if isinstance(v, dict):
            process(v)
        if isinstance(v, str):
            src = "GNY"
            dst = "Incuboot"

            while "GNY" in v:
                v = v.replace(src, dst)

            d[k] = v


for json_file in listdir():
    if not json_file.endswith(".json"):
        continue

    with open(json_file, "r", encoding="utf-8") as fp:
        d: dict = json.load(fp)
    process(d)
    with open(json_file, "w", encoding="utf-8") as fp:
        json.dump(d, fp, indent=4, ensure_ascii=False)
