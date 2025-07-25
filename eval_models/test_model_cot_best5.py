import json
import re
import os
import re
from typing import Dict
from lib_functions.llm_api import Qwen32B

COT = '''
Let's think step by step to optimize the HLS code.
Example 2:
```cpp
Q: This is a slow HLS FPGA program. Please optimize it with array partitioning and loop unrolling to improve parallelism.
void vector_add(const int A[32], const int B[32], int C[32]) {
    for (int i = 0; i < 32; i++) {
        C[i] = A[i] + B[i];
    }
}
```
1. Identify memory contention: single-port arrays limit one access per cycle.

2. Partition arrays: use #pragma HLS ARRAY_PARTITION variable=A/B/C cyclic factor=4 to split each into 4 banks for parallel access.

3. Unroll the loop: add #pragma HLS UNROLL factor=4 so 4 additions execute in one cycle, matching the 4-way partition.

4. Keep pipelining: you may optionally add #pragma HLS PIPELINE II=1 for consistency.

```cpp
void vector_add(const int A[32], const int B[32], int C[32]) {
#pragma HLS ARRAY_PARTITION variable=A cyclic factor=4
#pragma HLS ARRAY_PARTITION variable=B cyclic factor=4
#pragma HLS ARRAY_PARTITION variable=C cyclic factor=4
    for (int i = 0; i < 32; i++) {
        #pragma HLS UNROLL factor=4
        C[i] = A[i] + B[i];
    }
}
```
Now apply the same step-by-step reasoning to the following slow HLS code and provide the fully annotated, optimized version, just give me code:'''

def load_prompt_data(path):
    """
    to load prompt data from a JSON or JSONL file.
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

        # Create main directory
        here = os.path.dirname(__file__)                # folder where test_model_best1.py lives
        here = os.path.join(here, "generate_32B_cot_best5")
        base_dir = os.path.join(here, app)
        os.makedirs(base_dir, exist_ok=True)

        # Create version directories
        for v in range(1, num_versions + 1):
            version_dir = os.path.join(base_dir, f"version_{v}")
            os.makedirs(version_dir, exist_ok=True)

            cpp_path = os.path.join(version_dir, f"{app}_v{v}.cpp")
            h_path   = os.path.join(version_dir, f"{app}_v{v}.h")

            # if already exists, skip
            if os.path.exists(cpp_path) and os.path.exists(h_path):
                print(f"Skip app={app}, version={v}: files already exist")
                continue

            # Construct prompt with CoT
            prompt_v = f"{prompt}\n# Version: {v}\n"
            prompt_v = COT + prompt_v

            # Call model (assume returns dict with 'cpp' and 'header' keys)
            parsed = Qwen32B(prompt_v)

            # Write to .cpp
            with open(cpp_path, "w", encoding="utf-8") as f_cpp:
                f_cpp.write(parsed.get('cpp', ''))

            # Write to .h
            with open(h_path, "w", encoding="utf-8") as f_h:
                f_h.write(parsed.get('header', ''))

            print(f"Processed app={app}, version={v}, saved to {version_dir}")


