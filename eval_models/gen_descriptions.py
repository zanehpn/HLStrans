#!/usr/bin/env python3
import os
import re
import json
from lib_functions.llm_api import deepseek_R1_describe

# Base directory containing one test_case subfolder per kernel
BASE_DIR     = "/home/zqy/LLM4CHIP/C2HLS/eval_models/test_cases"
OUTPUT_PATH  = "descriptions.json"

def extract_final_answer(text: str) -> str:
    """Extract the text after '#Final answer'."""
    m = re.search(r"#Final answer\s*(.*)", text, re.DOTALL)
    return m.group(1).strip() if m else text.strip()

def read_file(path: str) -> str:
    """Safely read a file or return empty string if missing."""
    if os.path.isfile(path):
        with open(path, 'r', encoding='utf-8') as f:
            return f.read()
    return ""

def main():
    augmented_data = []

    for subdir in sorted(os.listdir(BASE_DIR)):
        subpath = os.path.join(BASE_DIR, subdir)
        if not os.path.isdir(subpath):
            continue

        # Read the human.cpp and optional header
        code_cpp   = read_file(os.path.join(subpath, f"{subdir}_human.cpp"))
        code_hdr   = read_file(os.path.join(subpath, f"{subdir}.h"))
        optimized  = code_cpp + ("\n" + code_hdr if code_hdr else "")

        if not optimized.strip():
            print(f"[WARN] {subdir}: no code found, skipping.")
            continue

        # Build and send prompt
        prompt = (
            "optimized code:\n"
            f"{optimized}\n\n"
            "Please describe the function and optimization of the optimized Xilinx HLS FPGA code "
            "in two sentences, without giving the code.\n"
        )
        print(f"[INFO] {subdir}: sending prompt (length {len(prompt)}).")

        # Call the LLM (with simple retry)
        description = deepseek_R1_describe(prompt)
        while not (isinstance(description, str) and description.strip()):
            print(f"[WARN] {subdir}: empty response, retrying...")
            description = deepseek_R1_describe(prompt)

        final_ans = extract_final_answer(description)
        print(f"[INFO] {subdir}: final answer extracted.")

        # Build the requirement prompt
        requirement_prompt = (
            "Please generate the Xilinx FPGA HLS code according to the following description:\n"
            f"{final_ans}\n"
        )

        # Append this subdir’s record
        augmented_data.append({
            "input":      requirement_prompt
        })

    # Write all at once
    with open(OUTPUT_PATH, 'w', encoding='utf-8') as f:
        json.dump(augmented_data, f, indent=2, ensure_ascii=False)

    print(f"[DONE] Wrote {len(augmented_data)} records to {OUTPUT_PATH}")

if __name__ == "__main__":
    main()
