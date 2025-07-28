import os
import json
import re

# 正则模式，用于去除 C/C++ 单行和多行注释
_COMMENT_PATTERN = re.compile(r"//.*?$|/\*.*?\*/", re.DOTALL | re.MULTILINE)

def remove_comments(text):
    """
    从文本中移除所有 C/C++ 风格的注释。
    """
    return re.sub(_COMMENT_PATTERN, '', text)


def generate_c2hls_json(root_dir, output_path):
    """
    遍历 root_dir 下的子目录，配对 *_slow.cpp 和 *_fast.cpp 文件，
    读取内容后去除注释，并生成 JSON 数组：{input, output}。
    """
    entries = []

    for subname in os.listdir(root_dir):
        subdir = os.path.join(root_dir, subname)
        if not os.path.isdir(subdir):
            continue

        slow_files = [f for f in os.listdir(subdir) if f.endswith('_slow.cpp')]
        fast_files = [f for f in os.listdir(subdir) if f.endswith('_fast.cpp')]

        for slow_file in slow_files:
            prefix = slow_file[:-len('_slow.cpp')]
            fast_file = f"{prefix}_fast.cpp"
            if fast_file in fast_files:
                slow_path = os.path.join(subdir, slow_file)
                fast_path = os.path.join(subdir, fast_file)

                # 读取并去除注释
                with open(slow_path, 'r', encoding='utf-8', errors='ignore') as f:
                    raw_input = f.read()
                with open(fast_path, 'r', encoding='utf-8', errors='ignore') as f:
                    raw_output = f.read()

                input_code = remove_comments(raw_input).strip()
                src_code = (
                    f"slow code Version:\n\n"
                    f"```cpp\n"
                    f"{input_code}\n"
                    f"```"
                )
                output_code = remove_comments(raw_output).strip()

                # 格式化输入输出字段
                inputs = f"please adjust the unsynthesized C code: {src_code} to be synthesizable high-level synthesis (HLS) FPGA codes, give me HLS code."
                outputs = (
                    "Optimized Version:\n```cpp\n"
                    f"{output_code}\n"
                    f"```"
                    )

                entries.append({
                    'input': inputs,
                    'output': outputs,
                    'app': subname
                })

    # 写入 JSON 文件
    with open(output_path, 'w', encoding='utf-8') as fout:
        json.dump(entries, fout, indent=2, ensure_ascii=False)

    print(f"Generated {len(entries)} entries in {output_path}")


if __name__ == '__main__':
    root = '/home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/Unsupported_C'
    out_file = os.path.join(root, 'c2hls.json')
    generate_c2hls_json(root, out_file)
