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

    # 为每个 app 创建 5 个版本文件夹
    num_versions = 5

    for entry in data_list:
        prompt = entry.get('input', '')
        app = entry.get('app', 'unknown_app')

        # 创建主目录
        base_dir = os.path.join("generate_32B_best5", app)
        os.makedirs(base_dir, exist_ok=True)

        # 针对每个版本进行推理并保存
        for v in range(1, num_versions + 1):
            version_dir = os.path.join(base_dir, f"version_{v}")
            os.makedirs(version_dir, exist_ok=True)

            # 可以在 prompt 中加入 version 标识以得到多样化输出
            prompt_v = f"{prompt}\n# Version: {v}\n"
            parsed = Qwen32B(prompt_v)
            #parsed = parse_code_blocks(raw_result)

            # 写入 .cpp 和 .h
            cpp_path = os.path.join(version_dir, f"{app}_v{v}.cpp")
            h_path = os.path.join(version_dir, f"{app}_v{v}.h")
            with open(cpp_path, "w", encoding="utf-8") as f_cpp:
                f_cpp.write(parsed.get('cpp', ''))
            with open(h_path, "w", encoding="utf-8") as f_h:
                f_h.write(parsed.get('header', ''))

            print(f"Processed app={app}, version={v}, saved to {version_dir}")


