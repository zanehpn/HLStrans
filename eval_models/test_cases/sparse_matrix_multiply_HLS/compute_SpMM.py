#!/usr/bin/env python3
import os
import shutil
import subprocess

# Base paths
ROOT     = "/local_data/zqy/compute_SpMM"
HLS_CMD  = "vitis_hls"

# Symbols to replace
OLD_INCLUDE = '#include "dcl.h"'
NEW_INCLUDE = '#include "compute_SpMM.h"'
OLD_SYM     = 'sparse_matrix_multiply_HLS'
NEW_SYM     = 'compute_SpMM'

# Template for run_hls.tcl
TCL_TEMPLATE = """open_project compute_SpMM
add_files {cpp_path}
set_top compute_SpMM
open_solution solution1
create_clock -period 5 -name default
set_part {{xcu55c-fsvh2892-2L-e}}
csynth_design
exit
"""

def process_folder(folder):
    name = os.path.basename(folder)
    # Paths for csynth reports
    rpt_root   = os.path.join(folder, "csynth.rpt")
    rpt_report = os.path.join(folder, "compute_SpMM/solution1/syn/report/csynth.rpt")

    # Skip if report already exists
    if os.path.isfile(rpt_root) or os.path.isfile(rpt_report):
        print(f"[SKIP] csynth.rpt already present for {name}")
        return

    # 1) Patch .cpp and .h
    for ext in ("cpp", "h"):
        path = os.path.join(folder, f"compute_SpMM.{ext}")
        if not os.path.isfile(path):
            alt = os.path.join(folder, f"sparse_matrix_multiply_HLS.{ext}")
            if os.path.isfile(alt):
                path = alt
        if not os.path.isfile(path):
            continue

        with open(path, 'r', encoding='utf-8',errors='ignore') as f:
            text = f.read()
        patched = text.replace(OLD_INCLUDE, NEW_INCLUDE).replace(OLD_SYM, NEW_SYM)
        if patched != text:
            with open(path, 'w', encoding='utf-8') as f:
                f.write(patched)
            print(f"[PATCH] {os.path.basename(path)}")
        else:
            print(f"[OK]    {os.path.basename(path)} up-to-date")

    # Ensure compute_SpMM.cpp exists
    cpp = os.path.join(folder, "compute_SpMM.cpp")
    if not os.path.isfile(cpp):
        print(f"[SKIP] no compute_SpMM.cpp in {name}")
        return

    # 2) Write run_hls.tcl
    tcl_path = os.path.join(folder, "run_hls.tcl")
    with open(tcl_path, 'w', encoding='utf-8') as f:
        f.write(TCL_TEMPLATE.format(cpp_path=cpp))
    print(f"[WRITE] run_hls.tcl for {name}")

    # 3) Run Vitis HLS, skip on error
    try:
        print(f"[RUN]   vitis_hls in {name}")
        subprocess.run([HLS_CMD, "-f", tcl_path], cwd=folder, check=True)
    except subprocess.CalledProcessError as e:
        print(f"[ERROR] vitis_hls failed for {name} (exit {e.returncode}), skipping.")
        return

    # 4) Move csynth.rpt up to folder root
    if os.path.isfile(rpt_report):
        shutil.move(rpt_report, rpt_root)
        print(f"[MOVE]  moved csynth.rpt to {name}/")
    else:
        print(f"[WARN] no csynth.rpt found in report for {name}")

    # 5) Remove the compute_SpMM/ directory
    compute_dir = os.path.join(folder, "compute_SpMM")
    if os.path.isdir(compute_dir):
        shutil.rmtree(compute_dir)
        print(f"[CLEAN] removed compute_SpMM/ in {name}")

def main():
    print(f"Scanning subfolders of {ROOT} …")
    for entry in os.listdir(ROOT):
        sub = os.path.join(ROOT, entry)
        if os.path.isdir(sub):
            print(f"Processing {entry}")
            process_folder(sub)
    print("All done.")

if __name__ == "__main__":
    main()
