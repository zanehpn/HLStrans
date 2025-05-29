import torch
import json
from transformers import AutoTokenizer, AutoModelForCausalLM
import re
import os
import torch
from transformers import AutoConfig, AutoTokenizer, AutoModelForCausalLM
import re
from typing import Dict
from llm_api import Qwen32B

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
1. Identify memory contention: single‐port arrays limit one access per cycle.

2. Partition arrays: use #pragma HLS ARRAY_PARTITION variable=A/B/C cyclic factor=4 to split each into 4 banks for parallel access.

3. Unroll the loop: add #pragma HLS UNROLL factor=4 so 4 additions execute in one cycle, matching the 4‐way partition.

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
    智能识别是 JSONL 还是 JSON 数组，然后返回一个 Python list。
    """
    # 先尝试当作 JSON 数组一次性加载
    try:
        with open(path, 'r', encoding='utf-8-sig') as f:
            data = json.load(f)
        if isinstance(data, list):
            return data
    except json.JSONDecodeError:
        pass

    # 否则退回到按行解析 JSONL：
    items = []
    with open(path, 'r', encoding='utf-8-sig') as f:
        for lineno, raw in enumerate(f, start=1):
            line = raw.strip()
            # 跳过空行
            if not line:
                continue
            # 去掉行尾的 // 注释
            line = re.sub(r'//.*$', '', line).strip()
            if not line:
                continue
            try:
                items.append(json.loads(line))
            except json.JSONDecodeError as e:
                print(f"[Warning] 跳过第 {lineno} 行，解析失败：{e}")
    return items

if __name__ == "__main__":
    file_path = '/shared/hdd/qingyun/prompt_data.json'

    # 加载全部 prompt 记录
    data_list = load_prompt_data(file_path)
    if not data_list:
        raise RuntimeError("没有读到任何 prompt 数据，请检查文件格式。")

    # 为每个 app 创建 5 个版本文件夹
    num_versions = 5

    for entry in data_list:
        prompt = entry.get('input', '')
        app = entry.get('app', 'unknown_app')

        # 创建主目录
        base_dir = os.path.join("generate_32B_cot_best5", app)
        os.makedirs(base_dir, exist_ok=True)

        # 针对每个版本进行推理并保存
        for v in range(1, num_versions + 1):
            version_dir = os.path.join(base_dir, f"version_{v}")
            os.makedirs(version_dir, exist_ok=True)

            cpp_path = os.path.join(version_dir, f"{app}_v{v}.cpp")
            h_path   = os.path.join(version_dir, f"{app}_v{v}.h")

            # 如果两个文件都已经存在，则跳过
            if os.path.exists(cpp_path) and os.path.exists(h_path):
                print(f"Skip app={app}, version={v}: files already exist")
                continue

            # 构造带 CoT 的 prompt
            prompt_v = f"{prompt}\n# Version: {v}\n"
            prompt_v = COT + prompt_v

            # 调用模型（假设返回 dict 包含 'cpp' 和 'header' 两键）
            parsed = Qwen32B(prompt_v)

            # 写入 .cpp
            with open(cpp_path, "w", encoding="utf-8") as f_cpp:
                f_cpp.write(parsed.get('cpp', ''))

            # 写入 .h
            with open(h_path, "w", encoding="utf-8") as f_h:
                f_h.write(parsed.get('header', ''))

            print(f"Processed app={app}, version={v}, saved to {version_dir}")


