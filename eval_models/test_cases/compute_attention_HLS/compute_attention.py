#!/usr/bin/env python3
import os
import shutil
import subprocess

# Base paths
ROOT     = "/local_data/zqy/compute_attention_HLS"
HLS_CMD  = "vitis_hls"

# Template for run_hls.tcl
TCL_TEMPLATE = """open_project compute_attention_HLS
add_files {cpp_path}
set_top compute_attention_HLS
open_solution solution1
create_clock -period 5 -name default
set_part {{xcu55c-fsvh2892-2L-e}}
csynth_design
exit
"""

def process_folder(folder):
    name = os.path.basename(folder)
    cpp = os.path.join(folder, "compute_attention_HLS.cpp")
    if not os.path.isfile(cpp):
        print(f"  [SKIP] no compute_attention_HLS.cpp in {name}")
        return

    # Skip if csynth.rpt already exists
    rpt_root   = os.path.join(folder, "csynth.rpt")
    rpt_report = os.path.join(folder, "compute_attention_HLS/solution1/syn/report/csynth.rpt")
    if os.path.isfile(rpt_root) or os.path.isfile(rpt_report):
        print(f"  [SKIP] csynth.rpt already present for {name}")
        return

    # 1) Patch include
    with open(cpp, 'r', encoding='utf-8') as f:
        src = f.read()
    patched = src.replace('#include "dcl.h"', '#include "compute_attention_HLS.h"')
    if patched != src:
        with open(cpp, 'w', encoding='utf-8') as f:
            f.write(patched)
        print(f"  [PATCH] include patched in {name}")

    # 2) Write run_hls.tcl
    tcl = os.path.join(folder, "run_hls.tcl")
    with open(tcl, 'w', encoding='utf-8') as f:
        f.write(TCL_TEMPLATE.format(cpp_path=cpp))
    print(f"  [WRITE] {tcl}")

    # 3) Run Vitis HLS, but on error just continue
    try:
        print(f"  [RUN] vitis_hls in {name}")
        subprocess.run([HLS_CMD, "-f", tcl], cwd=folder, check=True)
    except subprocess.CalledProcessError as e:
        print(f"  [ERROR] vitis_hls failed for {name} (exit {e.returncode}), skipping.")
        return

    # 4) Move csynth.rpt out of report
    if os.path.isfile(rpt_report):
        shutil.move(rpt_report, rpt_root)
        print(f"  [MOVE] csynth.rpt → {folder}")
    else:
        print(f"  [WARN] no csynth.rpt found in report for {name}")

    # 5) Clean up compute_attention_HLS directory
    compute_dir = os.path.join(folder, "compute_attention_HLS")
    if os.path.isdir(compute_dir):
        shutil.rmtree(compute_dir)
        print(f"  [CLEAN] removed compute_attention_HLS/ in {name}")

def main():
    print(f"Scanning {ROOT} …")
    for entry in os.listdir(ROOT):
        sub = os.path.join(ROOT, entry)
        if os.path.isdir(sub):
            print(f"Processing {entry}")
            process_folder(sub)
    print("All done.")

if __name__ == "__main__":
    main()
