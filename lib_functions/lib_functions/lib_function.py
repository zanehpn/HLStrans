import os
import re

import math
import random
import subprocess
import requests
import glob
from typing import List, Iterable
from typing import Dict, List
import shutil
from typing import List, Tuple, Union
######### lib functions #########
def read_code_path(code_path):
    with open(code_path, "r") as code_file:
        CODE = "\n" + code_file.read()
    return CODE

def flatten(lst):
    flat_list = []
    for item in lst:
        if isinstance(item, list):
            flat_list.extend(item)
        else:
            flat_list.append(item)
    return flat_list

def extract_top_function_line(file_path, keyword):
    last_matching_line = None
    pattern = re.compile(rf"^\s*void\s+{re.escape(keyword)}\s*\(")
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            for line in file:
                if pattern.search(line) and "#" not in line:
                    last_matching_line = line.rstrip()
        print(last_matching_line)
        return last_matching_line
    except Exception as error:
        print(f"read file is wrong: {error}")
        return None

def extract_top_function_line(file_path, keyword):
    last_matching_line = None
    pattern = re.compile(rf"^\s*void\s+{re.escape(keyword)}\s*\(")
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            for line in file:
                if pattern.search(line) and "#" not in line:
                    last_matching_line = line.rstrip()
        return last_matching_line
    except Exception as error:
        print(f"read file is wrong: {error}")
        return None

def flatten(lst):
    flat_list = []
    for item in lst:
        if isinstance(item, list):
            flat_list.extend(item)
        else:
            flat_list.append(item)
    return flat_list

def extract_cpp_code(text):
    pattern = r"```cpp(.*?)```"
    match = re.search(pattern, text, re.DOTALL)
    if match:
        return match.group(1).strip()
    return ""

def extract_cpp_code_block(text):

    pattern = r"^###\s*(\S+)\s*$\s*(\S+)\s*$([\s\S]*?)(?=^###|\Z)"
    matches = re.findall(pattern, text, re.MULTILINE)
    code_dict = {}
    for match in matches:
        filename = match[0].strip()
        language = match[1].strip()  
        code_content = match[2].strip()
        code_content = code_content.replace("```", "")
        code_dict[filename] = code_content
    return code_dict


def copy_directory(src_dir: str, dest_parent: str, copy_file: str):

    base_name = os.path.basename(os.path.normpath(src_dir))
    target_dir = os.path.join(dest_parent, base_name)
    
    if os.path.exists(target_dir):
        counter = 1
        new_target_dir = os.path.join(dest_parent, f"{base_name}_{counter}")
        while os.path.exists(new_target_dir):
            counter += 1
            new_target_dir = os.path.join(dest_parent, f"{base_name}_{counter}")
        target_dir = new_target_dir
        print(f"Use new folder: {target_dir}")
    
    shutil.copytree(src_dir, target_dir)
    print(f"copy {src_dir} into {target_dir}")

    if os.path.isfile(copy_file):
        shutil.copy(copy_file, target_dir)
        print(f"Also copy file {copy_file} into {target_dir}")
    else:
        print(f"Warning: {copy_file} is not a valid file, skip copying.")

def find_non_one_final_ii(log_path):
    with open(log_path, 'r') as file:
        log_content = file.read()
    pattern = r"Pipelining result : .*?Final II = (\d+).*?loop '(\w+)'"
    matches = re.findall(pattern, log_content)
    non_one_final_ii = [(loop, int(final_ii)) for final_ii, loop in matches if int(final_ii) != 1]
    
    result_str = "\n".join(f"Loop: {loop}, Final II: {final_ii}" for loop, final_ii in non_one_final_ii)
    print(result_str)
    return result_str  

def parse_gcc_errors(stderr_output):
    import subprocess
    import re     
    issues = []
    # Match GCC errors and linker issues (e.g., multiple definition)
    pattern = re.compile(
        r"(?P<file>.*?):(?P<line>\d+):(?P<column>\d+)?:(?:\s+)?(?P<type>error|warning):\s+(?P<message>.+)"
        r"|(?P<ld_message>multiple definition of `.+?');\s+(?P<ld_file>.+):(?P<ld_location>.+)"
    )

    for match in pattern.finditer(stderr_output):
        if match.group("type") == "error":
            issues.append({
                "type": "error",
                "file": match.group("file"),
                "line": int(match.group("line")),
                "column": int(match.group("column")) if match.group("column") else None,
                "message": match.group("message").strip(),
            })
        elif match.group("ld_message"):
            issues.append({
                "type": "linker_error",
                "message": match.group("ld_message").strip(),
                "file": match.group("ld_file").strip(),
                "location": match.group("ld_location").strip(),
            })
    return issues

def execute_program(output_path):
    import subprocess
    import re     
    print("Executing the program...")
    try:
        result = subprocess.run(
            [output_path],
            capture_output=True,
            text=True,
            timeout=60
        )
        print(result)
        if result.returncode == 0 and ("pass" or "PASS" or "PASSED" or "passed" or "Success" in result.stdout) and not "Failed" in result.stdout and not "failed" in result.stdout:
            print("function is right")
            return None
        else:
            print("Program execution failed or did not pass.")
            print("Output:", result.stdout)
            print("Error:", result.stderr)
            return "function is not right, please make sure the function is right"
    except Exception as e:
        print(f"An error occurred during execution: {e}")
        return [{"type": "exception", "message": str(e)}]

def compile_and_check(source_file0, source_file1, source_file2, output_path):
    import subprocess
    import re    
    print("Compiling the code...")
    try:
        comond = ["g++", "-I", "/tools/Xilinx/new/Vitis_HLS/2022.2/include", source_file0, source_file1, source_file2, "-o", output_path,"-fsanitize=address"]
        print(comond)
        result = subprocess.run(
            ["g++", "-I", "/tools/Xilinx/new/Vitis_HLS/2022.2/include", source_file0, source_file1, source_file2, "-o", output_path,"-fsanitize=address"],
            capture_output=True,
            text=True,
            timeout=60
        )
        issues = parse_gcc_errors(result.stderr)
        if not issues and "multiple definition" not in result.stderr:
            print("compile pass")
            return execute_program(output_path)
        else:
            print("Compilation completed with issues:")
            issues = parse_gcc_errors(result.stderr)
            print(issues)
            for issue in issues:
                if issue["type"] == "error":
                    print(f"Error at {issue['file']}:{issue['line']}:{issue.get('column', '')}: {issue['message']}")
                elif issue["type"] == "linker_error":
                    print(f"Linker Error: {issue['message']} in {issue['file']} at {issue['location']}")
            return issues
    except Exception as e:
        print(f"An error occurred during compilation: {e}")
        return [{"type": "exception", "message": str(e)}]


def extract_error_lines_from_iter(lines: Iterable[str]) -> List[str]:
    return [line.rstrip() for line in lines if 'error' in line.lower()]


def extract_error_lines(file_path: str) -> List[str]:
    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
        return extract_error_lines_from_iter(f)



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
            
    #print("slack_ns: " ,slack_values)
    pattern = re.compile(r'\(\s*(?:~\s*)?(\d+)\s*%\s*\)')
    #print("dsp_values: ",dsp_values)
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

def grasp_latency(base_folder):
    latency_list = []
    for root, dirs, files in os.walk(base_folder):
        if "csynth.rpt" in files:
            csynth_path = os.path.join(root, "csynth.rpt")
            try:
                result = parse_hls_report_with_checks(csynth_path)
                if result:
                    latency_value = int(result["total_latency_cycles"])
                    latency_list.append(latency_value)
            except Exception as e:
                print(f"read file {csynth_path} failed: {e}")
    return latency_list

def sum_final_ii_numbers(text):
    numbers = re.findall(r'Final II:\s*(\d+)', text)
    total_sum = sum(map(int, numbers))
    return total_sum

def list_fast_number_cpp(folder: str, xxx: str):
    """List all files in the folder that match the pattern '{xxx}_fast_number{real_number}.cpp'"""
    # Define the file search pattern
    pattern = os.path.join(folder, f"{xxx}_fast_*.cpp")
    files = glob.glob(pattern)
    
    # Define a regex pattern to match '{xxx}_fast_number{real_number}.cpp'
    regex = re.compile(rf"^{re.escape(xxx)}_fast_[+-]?(\d+(\.\d+)?)\.cpp$")
    
    # Filter files that match the pattern
    filtered_files = [f for f in files if regex.match(os.path.basename(f))]
    
    return filtered_files

def list_fast_cpp(folder: str, xxx: str):
    """List all files in the folder that match the pattern '{xxx}_fast_number{real_number}.cpp'"""
    # Define the file search pattern
    pattern = os.path.join(folder, f"{xxx}_fast*.cpp")
    files = glob.glob(pattern)

    return files

# if __name__ == "__main__":
#     base_folder = "gemm/true"  
#     latencies = grasp_latency(base_folder)

# if __name__ == "__main__":
#     top_function = "aes_table"
#     compile_and_check_machsuite(top_function)
