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
        dir_path = os.path.join("generate_32B_best1", app)
        if not os.path.exists(dir_path):
            os.makedirs(dir_path)

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


