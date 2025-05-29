import os
import json
import numpy as np
import faiss
from sentence_transformers import SentenceTransformer
from lib_function import *

def find_similar_code(input_code, json_file="output.json", k=1):

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
    
