import os,re
import json
import numpy as np
import faiss
from sentence_transformers import SentenceTransformer
from lib_functions.llm_api import Qwen32B

def extract_code_blocks(text):
    blocks = []
    parts = text.split("```")
    for i in range(1, len(parts), 2):
        lang_and_code = parts[i].strip().split('\n', 1)
        if len(lang_and_code) == 2:
            lang, code = lang_and_code
            if lang.strip() in ("cpp", "h"):
                blocks.append(code.strip())
    return blocks

def extract_simple_c_code(input_text):
    match = re.search(r"simple C code\s*(.*)", input_text, re.DOTALL | re.IGNORECASE)
    return match.group(1).strip() if match else None

def extract_code_by_label(text, label):
    if label in text:
        part = text.split(label, 1)[-1]
        return "\n\n".join(extract_code_blocks(part))
    return ""

def find_similar_code(input_code, json_file="../data/database.json", k=1):

    if not os.path.exists(json_file):
        print(f"file {json_file} not exists")
        return
    
    with open(json_file, "r", encoding="utf-8") as f:
        data = json.load(f)
    
    src_codes = []
    mapping = []  
    for folder, content in data.items():
        src_code = content.get("src", "")
        tgt_code = content.get("tgt", "")
        src_codes.append(src_code)
        mapping.append((folder, src_code, tgt_code))
    
    if not src_codes:
        print("No src code found")
        return
    
    model = SentenceTransformer('neulab/codebert-cpp')
    doc_embeddings = model.encode(src_codes)
    dimension = doc_embeddings.shape[1]
    
    index = faiss.IndexFlatL2(dimension)
    index.add(np.array(doc_embeddings, dtype=np.float32))
    
    query_embedding = model.encode([input_code])
    query_embedding = np.array(query_embedding, dtype=np.float32)
    distances, indices = index.search(query_embedding, k)
    
    for idx, distance in zip(indices[0], distances[0]):
        folder, src_code, tgt_code = mapping[idx]
    
    prompt = f'''Tgt is the optimized code of Src, Src: {src_code}\n, Tgt: {tgt_code}\n, you can refer to it to optimize your code {input_code}
    Not just copy the Tgt code, try to understand why the code is optimized and what optimizations are used from Src to Tgt, and optimize the input_code accordingly'''
    return prompt
    
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
    file_path = os.path.join(here, "test.json")

    # Load all prompt records
    data_list = load_prompt_data(file_path)
    if not data_list:
        raise RuntimeError("No prompt data found, please check the file format.")

    # Create 5 version directories for each app
    num_versions = 5

    for entry in data_list:
        prompt = entry.get('input', '')
        app = entry.get('app', 'unknown_app')
        slow_code = extract_code_by_label(prompt, "slow code Version:")
        if not slow_code:
            slow_code = extract_simple_c_code(prompt)

        retriver_prompt = find_similar_code(slow_code)

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
            prompt_v = retriver_prompt + prompt_v
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