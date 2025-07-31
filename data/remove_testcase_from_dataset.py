import json

# List of keywords to filter out (case‑insensitive)
KEYWORDS = {
    "block_mm", "compute_attention_HLS", "compute_near","compute_neighbor_near",
    "compute_neighbor_tables", "cordic", "edge_detect","gather_node_neighbors", 
    "kalman_filter", "latnrm","queries_search", "shortpath", 
    "spam_filter", "sparse_matrix_multiply_HLS", "svm", "syrk",
    "process_audio"
}

def load_jsonl(path):
    """
    Load a JSONL file and return a list of objects.
    """
    records = []
    with open(path, 'r', encoding='utf-8') as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            records.append(json.loads(line))
    return records

def save_jsonl(records, path):
    """
    Save a list of Python objects to a JSONL file.
    """
    with open(path, 'w', encoding='utf-8') as f:
        for rec in records:
            f.write(json.dumps(rec, ensure_ascii=False) + "\n")

def contains_keyword(record, keywords):
    """
    Check if the JSON record (serialized) contains any of the keywords.
    """
    text = json.dumps(record).lower()
    for kw in keywords:
        if kw.lower() in text:
            return True
    return False

def filter_jsonl(input_path, output_path, keywords):
    """
    Read a JSONL file, filter out any records containing a keyword,
    and write the remaining records to a new JSONL file.
    """
    all_records = load_jsonl(input_path)
    filtered = [rec for rec in all_records if not contains_keyword(rec, keywords)]
    save_jsonl(filtered, output_path)
    print(f"Processed {input_path}: {len(all_records)} → {len(filtered)} records")

if __name__ == "__main__":
    # Paths for train and validation JSONL files
    train_in  = "merged.jsonl"
    # valid_in  = "validation.jsonl"
    train_out = "merged.jsonl"
    # valid_out = "validation_filtered.jsonl"

    # Filter both datasets
    filter_jsonl(train_in, train_out, KEYWORDS)
    # filter_jsonl(valid_in, valid_out, KEYWORDS)
