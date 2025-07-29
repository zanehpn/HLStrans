import re
import os
import shutil
import json
from typing import Dict, List
import sys

def parse_hls_report_with_checks(file_path):
    latency_values = []
    slack_values = []
    bram_values = []
    dsp_values = []
    ff_values = []
    lut_values = []
    with open(file_path, "r", encoding="utf-8") as f:
        lines = f.readlines()
    
    for line in lines:
        line = line.strip()
        # Process only table rows that start with a pipe and are likely data rows.
        # Skip header lines (e.g., containing "Modules" or "Latency (ns)") or separator lines.
        if line.startswith("|") and "Modules" not in line and "Latency (cycles)" not in line:
            # Skip lines that are just table borders.
            if set(line) <= {"|", "+", "-", " "}:
                continue

            # Split the row into columns (the table uses '|' as the delimiter).
            columns = [col.strip() for col in line.split("|") if col.strip()]
            # Check if we have enough columns.
            # According to the header, the columns order is:
            # [Modules, Issue/Type, Slack, Latency (cycles), Latency (ns), Iteration Latency, Interval, Trip Count, Pipelined, BRAM, DSP, FF, LUT, URAM]
            # The "Latency (ns)" should be the 5th column (index 4 if counting from 0).
            if len(columns) >= 12:
                latency_cyles = columns[3]
                slack_ns = columns[2]
                bram_usage = columns[9]
                dsp_usage = columns[10]
                ff_usage = columns[11]
                lut_usage = columns[12]
                try:
                    latency_values.append(latency_cyles)
                    slack_values.append(slack_ns)
                    bram_values.append(bram_usage)
                    dsp_values.append(dsp_usage)
                    ff_values.append(ff_usage)
                    lut_values.append(lut_usage)
                except ValueError:
                    # If conversion fails, ignore this entry.
                    continue
            
    print("slack_ns: " ,slack_values)
    pattern = re.compile(r'\(\s*(?:~\s*)?(\d+)\s*%\s*\)')
    print("dsp_values: ",dsp_values)
    dsp_match = pattern.search(dsp_values[1])
    if dsp_match:
        dsp_last = dsp_match.group(1)
    else:
        dsp_last = 0
    bram_match = pattern.search(bram_values[1])
    if bram_match:
        bram_last = bram_match.group(1)
    else:
        bram_last = 0 
    ff_match = pattern.search(ff_values[1])
    if ff_match:
        ff_last = ff_match.group(1)
    else:
        ff_last = 0
    lut_match = pattern.search(lut_values[1])
    if lut_match:
        lut_last = lut_match.group(1)
    else:
        lut_last = 0

    if int(dsp_last) >= 60 or int(bram_last) >= 60 or int(ff_last) >= 60 or int(lut_last) >= 60:
        resource_constraint_met = False
    else:
        resource_constraint_met = True
    if slack_values[1].startswith("-"):
        timing_constraint_met = False
    else:
        timing_constraint_met = True

    result = {
        "total_latency_cycles": latency_values[1],
        "resource_constraint_met": resource_constraint_met,
        "timing_constraint_met": timing_constraint_met
    }

    return result

root_dir = os.getcwd()  

for alg in os.listdir(root_dir):
    alg_dir = os.path.join(root_dir, alg)
    dataset_dir = os.path.join(alg_dir, 'dataset')
    true_dir = os.path.join(alg_dir, 'true')

    if not os.path.isdir(dataset_dir):
        continue

    os.makedirs(true_dir, exist_ok=True)

    baseline_report = os.path.join(dataset_dir, 'csynth.rpt')
    print(baseline_report)
    if not os.path.isfile(baseline_report):
        print(f"[{alg}] baseline report not found, skip.")
        continue

    baseline_result = parse_hls_report_with_checks(baseline_report)
    print(f"[{alg}] Baseline result: {baseline_result}")

    for entry in os.listdir(dataset_dir):
        subdir = os.path.join(dataset_dir, entry)
        rpt_path = os.path.join(subdir, 'csynth.rpt')
        if os.path.isdir(subdir) and os.path.isfile(rpt_path):
            try:
                result = parse_hls_report_with_checks(rpt_path)
                print(f"[{alg}/{entry}] result: {result}")
                # if results is better than baseline, move to true directory
                if result["total_latency_cycles"] < baseline_result["total_latency_cycles"]:
                    dest = os.path.join(true_dir, entry)
                    if os.path.exists(dest):
                        shutil.rmtree(dest)
                    shutil.move(subdir, true_dir)
                    print(f"Moved {alg}/{entry} -> {alg}/true/{entry}")
            except Exception as e:
                print(f"Failed to parse {rpt_path}: {e}")

    print(f"[{alg}] processing complete.\n")
