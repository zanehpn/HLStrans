import json
import re
import os
import re
from typing import Dict
from lib_functions.llm_api import Qwen32B



def load_prompt_data(path):
    """
    know the jsonl and json, and return a Python list.
    """
    try:
        with open(path, 'r', encoding='utf-8-sig') as f:
            data = json.load(f)
        if isinstance(data, list):
            return data
    except json.JSONDecodeError:
        pass

    # Otherwise, fall back to line-by-line parsing for JSONL:
    items = []
    with open(path, 'r', encoding='utf-8-sig') as f:
        for lineno, raw in enumerate(f, start=1):
            line = raw.strip()
            # Skip empty lines
            if not line:
                continue
            # Remove trailing // comments
            line = re.sub(r'//.*$', '', line).strip()
            if not line:
                continue
            try:
                items.append(json.loads(line))
            except json.JSONDecodeError as e:
                print(f"[Warning] Skipped line {lineno}, failed to parse: {e}")
    return items

if __name__ == "__main__":
    here = os.path.dirname(__file__)                # folder where test_model_best1.py lives
    file_path = os.path.join(here, "descriptions.json")

    # Load all prompt records
    data_list = load_prompt_data(file_path)
    if not data_list:
        raise RuntimeError("No prompt data found, please check the file format.")

    # Iterate through each record in the JSON and save the results
    for entry in data_list:
        prompt = entry.get('input', '')
        app = entry.get('app', 'unknown_app')

        # Create directories in bulk
        here = os.path.dirname(__file__)                # folder where test_model_best1.py lives
        here = os.path.join(here, "generate_32B_nl_best1")
        dir_path = os.path.join(here, app)
        if not os.path.exists(dir_path):
            os.makedirs(dir_path)

        parsed = Qwen32B(prompt)
        # parsed = parse_code_blocks(raw_result)

        # Write to file
        with open(os.path.join(dir_path, f"{app}_fast.cpp"), "w", encoding="utf-8") as f_cpp:
            f_cpp.write(parsed.get('cpp', ''))
            print(parsed.get('cpp', ''))
        with open(os.path.join(dir_path, f"{app}.h"), "w", encoding="utf-8") as f_h:
            f_h.write(parsed.get('header', ''))
            print(parsed.get('header', ''))

        print(f"Processed app={app}, results saved to {dir_path}")


