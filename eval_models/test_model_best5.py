import json
import re
import os
import re
from typing import Dict
from lib_functions.llm_api import Qwen32B



def load_prompt_data(path):
    """
    to know the json and jsonl, and return a Python list.
    """
    # First, try to load it as a JSON array all at once
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
                print(f"[Warning] skip {lineno}, failed to parse: {e}")
    return items

if __name__ == "__main__":
    here = os.path.dirname(__file__)                # folder where test_model_best1.py lives
    file_path = os.path.join(here, "prompt_data.json")

    # Load all prompt records
    data_list = load_prompt_data(file_path)
    if not data_list:
        raise RuntimeError("No prompt data found, please check the file format.")

    # Create 5 version directories for each app
    num_versions = 5

    for entry in data_list:
        prompt = entry.get('input', '')
        app = entry.get('app', 'unknown_app')

        # Create directories in bulk
        here = os.path.dirname(__file__)                # folder where test_model_best1.py lives
        here = os.path.join(here, "generate_32B_best5")
        base_dir = os.path.join(here, app)
        os.makedirs(base_dir, exist_ok=True)

        # Create version directories
        for v in range(1, num_versions + 1):
            version_dir = os.path.join(base_dir, f"version_{v}")
            os.makedirs(version_dir, exist_ok=True)

            prompt_v = f"{prompt}\n# Version: {v}\n"
            parsed = Qwen32B(prompt_v)
            #parsed = parse_code_blocks(raw_result)

            # Write to .cpp and .h
            cpp_path = os.path.join(version_dir, f"{app}_v{v}.cpp")
            h_path = os.path.join(version_dir, f"{app}_v{v}.h")
            with open(cpp_path, "w", encoding="utf-8") as f_cpp:
                f_cpp.write(parsed.get('cpp', ''))
            with open(h_path, "w", encoding="utf-8") as f_h:
                f_h.write(parsed.get('header', ''))

            print(f"Processed app={app}, version={v}, saved to {version_dir}")


