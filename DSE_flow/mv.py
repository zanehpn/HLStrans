#!/usr/bin/env python3
import os
import shutil
import glob

# Root directory containing multiple "yyy" subfolders
ROOT_DIR = os.path.dirname(os.path.abspath(__file__))
DSE_PREFIX = "GENETIC_DSE_"

def process_one_folder(folder):
    """
    For a single "yyy" folder:
    - Scan all GENETIC_DSE_xx subdirectories and extract xx
    - Check for the presence of three files (rpt, kernel_xx.cpp, vitis_hls_xx.log):
        • If the corresponding file already exists in dataset/xx, skip it
        • If the source exists and target is missing, move the file
    - Return True/False indicating whether the folder ends up containing a dataset/ subdirectory
    """
    dst_root = os.path.join(folder, "dataset")
    moved_any = False

    # Process each GENETIC_DSE_xx subdirectory
    for d in glob.glob(os.path.join(folder, f"{DSE_PREFIX}*")):
        if not os.path.isdir(d):
            continue
        xx = os.path.basename(d)[len(DSE_PREFIX):]

        # Source file paths
        src_rpt    = os.path.join(d, "solution1", "syn", "report", "csynth.rpt")
        src_kernel = os.path.join(folder, f"kernel_{xx}.cpp")
        src_log    = os.path.join(folder, f"vitis_hls_{xx}.log")

        # Target directory and file paths
        dst_subdir = os.path.join(dst_root, xx)
        dst_rpt    = os.path.join(dst_subdir, "csynth.rpt")
        dst_kernel = os.path.join(dst_subdir, f"kernel_{xx}.cpp")
        dst_log    = os.path.join(dst_subdir, f"vitis_hls_{xx}.log")

        # Move only if the source exists and the destination does not
        to_move = []
        if os.path.isfile(src_rpt)    and not os.path.isfile(dst_rpt):
            to_move.append((src_rpt, dst_rpt))
        if os.path.isfile(src_kernel) and not os.path.isfile(dst_kernel):
            to_move.append((src_kernel, dst_kernel))
        if os.path.isfile(src_log)    and not os.path.isfile(dst_log):
            to_move.append((src_log, dst_log))

        if to_move:
            os.makedirs(dst_subdir, exist_ok=True)
            for src, dst in to_move:
                shutil.move(src, dst)
                print(f"Moved: {src} → {dst}")
            moved_any = True

    # Return whether dataset/ exists in the current folder
    return os.path.isdir(dst_root)

def main():
    # Find all first-level subdirectories
    yyy_folders = [
        os.path.join(ROOT_DIR, d)
        for d in os.listdir(ROOT_DIR)
        if os.path.isdir(os.path.join(ROOT_DIR, d))
    ]

    have_dataset = []
    for y in yyy_folders:
        name = os.path.basename(y)
        # Skip top-level dataset and operator_config folders
        if name == "dataset": 
            continue
        if y.endswith(os.path.join("modules", "operator_config")):
            continue

        if process_one_folder(y):
            have_dataset.append(y)

    # Final summary
    print("\n===== Summary =====")
    print(f"Total {len(have_dataset)} folders contain dataset/:")
    for p in have_dataset:
        print("  -", p)

if __name__ == "__main__":
    main()
