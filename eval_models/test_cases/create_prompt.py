import os
import glob
import json
import re

# regex to strip C/C++ comments
_comment_pattern = re.compile(r"//.*?$|/\*.*?\*/", re.DOTALL | re.MULTILINE)
def remove_comments(text: str) -> str:
    return re.sub(_comment_pattern, '', text)

def normalize_app_name(name: str) -> str:
    # your normalization logic here (or simply return the folder name)
    return name

def process_test_cases(test_cases_root: str):
    entries = []
    # iterate each app folder under test_cases_root
    for app in os.listdir(test_cases_root):
        tc_subdir = os.path.join(test_cases_root, app)
        if not os.path.isdir(tc_subdir):
            continue

        # read all *_slow.cpp in this app folder
        slow_code = ''
        for slow_path in glob.glob(os.path.join(tc_subdir, '*_slow.cpp')):
            with open(slow_path, 'r', encoding='utf-8', errors='ignore') as f:
                src = f.read()
            slow_code += remove_comments(src) + "\n\n"

        slow_code = slow_code.strip()
        if not slow_code:
            continue

        # wrap in markdown
        src_code = f"slow code Version:\n\n```cpp\n{slow_code}\n```"

        # select prompt
        if app in ("add_cur", "shortpath"):
            input_text = (
                "This is an unsynthesizable C code:\n"
                f"{src_code}\n"
                "We want to turn it into synthesizable C code. Just give me the HLS code."
            )
        else:
            input_text = (
                "This is a slow high level synthesis (HLS) FPGA program:\n"
                f"{src_code}\n"
                "We want to optimize its performance with fewer resources. Just give me the optimized HLS code."
            )

        entries.append({'input': input_text, 'app': normalize_app_name(app)})

    return entries

if __name__ == '__main__':
    test_cases_root = '/home/zqy/LLM4CHIP/dataset/pair_slow_fast/test_cases'
    data = process_test_cases(test_cases_root)
    out_path = os.path.join(test_cases_root, 'prompt_data.json')
    with open(out_path, 'w', encoding='utf-8') as fout:
        json.dump(data, fout, ensure_ascii=False, indent=2)
    print(f"Saved {len(data)} entries to {out_path}")
