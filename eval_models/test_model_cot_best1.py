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


few_shot_template = '''
# Example 1
This is a slow HLS FPGA program: slow code Version:

```cpp
void stage1(float *input, float *output) {
    for (int i = 0; i < N; i++) output[i] = input[i] * 2;
}
void stage2(float *input, float *output) {
    for (int i = 0; i < N; i++) output[i] = input[i] + 1;
}
void top(float *input, float *output) {
    float temp[N];
    stage1(input, temp);
    stage2(temp, output);
}
```
optimized code version with dataflow:
```cpp
void stage1(float *input, hls::stream<float>& output) {
#pragma HLS pipeline II=1
    for (int i = 0; i < N; i++) {
        output.write(input[i] * 2);  // Write to stream
    }
}

void stage2(hls::stream<float>& input, float *output) {
#pragma HLS pipeline II=1
    for (int i = 0; i < N; i++) {
        float temp = input.read();   // Read from stream
        output[i] = temp + 1;        // Store in output array
    }
}

void top(float *input, float *output) {
#pragma HLS DATAFLOW

    hls::stream<float> temp_stream;  // Replaces float temp[N]
    #pragma HLS stream variable=data_stream depth=128  // the depth needs to be set according to program
    stage1(input, temp_stream);
    stage2(temp_stream, output);
}
```
Example 2
This is a slow HLS FPGA program: slow code Version:
```cpp
void vector_add(const int A[32], const int B[32], int C[32]) {\n    for (int i = 0; i < 32; i++) {\n        C[i] = A[i] + B[i];\n    }\n}\n
```

optimized code version with array partitioning and loop unrolling:
```cpp
void vector_add(const int A[32], const int B[32], int C[32]) 
{\n    /* Partition arrays into 4 cyclic parts so that each partition can be accessed in parallel */\n    
#pragma HLS ARRAY_PARTITION variable=A cyclic factor=4\n    
#pragma HLS ARRAY_PARTITION variable=B cyclic factor=4\n    
#pragma HLS ARRAY_PARTITION variable=C cyclic factor=4\n    \n    
for (int i = 0; i < 32; i++) {\n        /* Unroll loop by factor of 4 to match the partitioning factor */\n        #pragma HLS UNROLL factor=4\n        C[i] = A[i] + B[i];\n    }\n}\n
```
You can refer the above examples to optimize following code.
'''

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
Now apply the same step-by-step reasoning to the following slow HLS code and provide the fully annotated, optimized version:'''

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

    # 对 JSON 中的每条记录依次推理并保存结果
    for entry in data_list:
        prompt = entry.get('input', '')
        app = entry.get('app', 'unknown_app')

        # 批量创建目录
        dir_path = os.path.join("generate_32B_cot_best1", app)
        if not os.path.exists(dir_path):
            os.makedirs(dir_path)
        prompt = COT + prompt
        parsed = Qwen32B(prompt)
        #parsed = parse_code_blocks(raw_result)

        # 写入文件
        with open(os.path.join(dir_path, f"{app}_fast.cpp"), "w", encoding="utf-8") as f_cpp:
            f_cpp.write(parsed.get('cpp', ''))
            print(parsed.get('cpp', ''))
        with open(os.path.join(dir_path, f"{app}.h"), "w", encoding="utf-8") as f_h:
            f_h.write(parsed.get('header', ''))
            print(parsed.get('header', ''))

        print(f"Processed app={app}, results saved to {dir_path}")


