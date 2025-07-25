import random
import subprocess
import requests
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

def extract_percentage(resource_str):
    if not resource_str:
        return None
    match = re.search(r"\((\d+)%\)", resource_str)
    if match:
        return int(match.group(1))
    return None

def flatten(lst):
    flat_list = []
    for item in lst:
        if isinstance(item, list):
            flat_list.extend(item)
        else:
            flat_list.append(item)
    return flat_list

def compute_unroll_factors(loop_details):
    if not loop_details:
        return []

    # 处理最后一个 loop
    last_loop = loop_details[-1]
    if last_loop['iteration_count'] > 128:
        last_factor = 128
    else:
        last_factor = last_loop['iteration_count']
    last_loop['unroll_factor'] = last_factor

    candidate = int(128 / last_loop['iteration_count']) if last_loop['iteration_count'] else 1

    start_index = len(loop_details) - 1

    for i in range(len(loop_details) - 2, -1, -1):
        if candidate <= 1:
            break

        current_loop = loop_details[i]
        if candidate > current_loop['iteration_count']:
            current_factor = current_loop['iteration_count']
        else:
            current_factor = candidate
        current_loop['unroll_factor'] = current_factor

        start_index = i

        candidate = int(128 / current_loop['iteration_count']) if current_loop['iteration_count'] else 1

    return loop_details[start_index:]

import re

def sum_final_ii_numbers(text):
    numbers = re.findall(r'Final II:\s*(\d+)', text)
    total_sum = sum(map(int, numbers))
    return total_sum