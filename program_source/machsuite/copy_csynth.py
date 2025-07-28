#!/usr/bin/env python3
import os
import shutil

# Paths
SYNC_ROOT   = "/local_data/zqy/syn_dataset"
NEW_ROOT    = SYNC_ROOT
SRC_ROOT    = "/home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/machsuite"
DATASET_DIR = "dataset"
REPORT_REL  = os.path.join("solution", "syn", "report", "csynth.rpt")

def main():
    # 1) Find all folders under /local_data/zqy/syn_dataset ending with _new
    new_folders = [
        name[10:]  # strip trailing "_new"
        for name in os.listdir(NEW_ROOT)
        if name.startswith("machsuite-") and os.path.isdir(os.path.join(NEW_ROOT, name))
    ]
    print(f"Found {len(new_folders)} 'machsuite' folders: {new_folders}")

    # 2) For each base name xxx, copy csynth.rpt from
    #    /home/.../New/xxx/solution1/.../csynth.rpt
    #    into /local_data/.../syn_dataset/xxx/dataset/csynth.rpt
    
    for xxx in new_folders:
        src_rpt = os.path.join(SRC_ROOT, xxx, "hls_prj", REPORT_REL)
        if not os.path.isfile(src_rpt):
            print(f"[WARN] Source report not found for {xxx}: {src_rpt}")
            continue
        xxx = "machsuite-" + xxx  # restore the original name
        dst_dir = os.path.join(SYNC_ROOT, xxx, DATASET_DIR)
        os.makedirs(dst_dir, exist_ok=True)
        dst_rpt = os.path.join(dst_dir, "csynth.rpt")
        try:
            shutil.copy2(src_rpt, dst_rpt)
            print(f"Copied {src_rpt} → {dst_rpt}")
        except Exception as e:
            print(f"[ERROR] Copying for {xxx}: {e}")

if __name__ == "__main__":
    main()
