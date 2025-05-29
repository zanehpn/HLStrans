#!/usr/bin/env python3
import os
import shutil

# Source and destination roots
SRC_ROOT = "/home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/c2hlsc"
DST_ROOT = "/local_data/zqy/syn_dataset"

def main():
    # Ensure destination root exists
    os.makedirs(DST_ROOT, exist_ok=True)

    # Iterate each subfolder in SRC_ROOT (xxx)
    for sub in os.listdir(SRC_ROOT):
        src_subdir = os.path.join(SRC_ROOT, sub)
        if not os.path.isdir(src_subdir):
            continue

        # Corresponding polybench-xxx in DST_ROOT
        target = f"{sub}"
        dst_dataset = os.path.join(DST_ROOT, target, "dataset")
        os.makedirs(dst_dataset, exist_ok=True)
        sub_new = sub[7:]
        # Path to csynth.rpt under xxx/xxx/solution1/syn/report/
        rpt_path = os.path.join(src_subdir, sub_new, "solution1", "syn", "report", "csynth.rpt")
        if not os.path.isfile(rpt_path):
            print(f"[WARN] {rpt_path} not found, skipping {sub}")
            continue

        # Copy to DST_ROOT/polybench-xxx/dataset/
        dst_rpt = os.path.join(dst_dataset, "csynth.rpt")
        try:
            shutil.copy2(rpt_path, dst_rpt)
            print(f"Copied {rpt_path} → {dst_rpt}")
        except Exception as e:
            print(f"[ERROR] copying {rpt_path} → {dst_rpt}: {e}")

if __name__ == "__main__":
    main()
