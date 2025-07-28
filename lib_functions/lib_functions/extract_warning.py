import random
import subprocess
import requests
import re
import os
import shutil
import json
from typing import Dict, List
import sys

def find_non_one_final_ii(log_path):
    with open(log_path, 'r') as file:
        log_content = file.read()
    pattern = r"Pipelining result : .*?Final II = (\d+).*?loop '(\w+)'"
    matches = re.findall(pattern, log_content)
    non_one_final_ii = [(loop, int(final_ii)) for final_ii, loop in matches if int(final_ii) != 1]
    
    result_str = "\n".join(f"Loop: {loop}, Final II: {final_ii}" for loop, final_ii in non_one_final_ii)
    print(result_str)
    return result_str

def extract_flatten_warning(log_path):
    keyword = "WARNING: [HLS 200-960] Cannot flatten loop"
    warnings = []
    seen_loops = set()  
    loop_re = re.compile(r"loop '([^']+)'")  

    try:
        with open(log_path, "r") as f:
            for line in f:
                if keyword in line:
                    m = loop_re.search(line)
                    loop_name = m.group(1) if m else None

                    if loop_name and loop_name in seen_loops:
                        continue

                    if loop_name:
                        seen_loops.add(loop_name)
                    warnings.append(line.strip())

    except FileNotFoundError:
        print(f"Error: can not find the log {log_path}")

    return warnings

def extract_unroll_warning(log_path):
    keyword = "WARNING: [HLS 200-936] Cannot unroll loop"
    warnings = []
    seen_loops = set()
    loop_re = re.compile(r"loop '([^']+)'")


    try:
        with open(log_path, "r") as f:
            for line in f:
                if keyword in line:
                    m = loop_re.search(line)
                    loop_name = m.group(1) if m else None

                    if loop_name and loop_name in seen_loops:
                        continue

                    if loop_name:
                        seen_loops.add(loop_name)
                    warnings.append(line.strip())

    except FileNotFoundError:
        print(f"Error: can not find the log {log_path}")

    return warnings

def extract_dataflow_warning(log_path):

    keyword = "WARNING: [HLS 200-471]"
    warnings = []

    try:
        with open(log_path, "r") as f:
            for line in f:
                if keyword in line:
                    warnings.append(line.strip())
    except FileNotFoundError:
        print(f"Error: can not find the log {log_path}")

    return warnings


def extract_interval_warning(log_path):
    keyword = "WARNING: [HLS 200-880] The II Violation in module"
    warnings = []
    seen_modules = set()
    module_re = re.compile(r"module '([^']+)'")

    try:
        with open(log_path, "r") as f:
            for line in f:
                if keyword in line:
                    m = module_re.search(line)
                    module_name = m.group(1) if m else None

                    if module_name and module_name in seen_modules:
                        continue

                    if module_name:
                        seen_modules.add(module_name)
                    warnings.append(line.strip())

    except FileNotFoundError:
        print(f"Error: can not find {log_path}")

    return warnings