import math
import random
import subprocess
import re
import os
from typing import List, Dict
from optimization_table import optimization_table
#from AST_analysis.Ast_analysis import *
from bug_table import bug_table
from lib_functions.lib_function import *
from lib_functions.extract_warning import *
from lib_functions.extract_report import *
from lib_functions.llm_api import *

# Global counters for attempts and failures
global_attempt_count = 0
global_function_error_count = 0  # Counts errors from function compilation (compile_and_check)
global_synthesis_error_count = 0  # Counts synthesis errors captured from Vitis logs
global_list = []

###############################################
# Monte Carlo Tree Search (MCTS) Implementation
###############################################
def random_subset(lst):
    """Return a random non-empty subset of lst."""
    subset = [x for x in lst if random.choice([True, False])]
    if not subset:
        subset = [random.choice(lst)]
    return subset

class Node:
    def __init__(self, state, parent=None):
        self.state = state        # The current prompt state
        self.parent = parent      # Parent node
        self.children = []        # List of child nodes
        self.visits = 0           # Number of times node has been visited
        self.value = 0            # Total value of simulations from this node

    def is_fully_expanded(self):
        return len(self.state.get_possible_moves()) == 0
    
    def best_child(self, exploration_weight=0.1):
        return max(
            self.children,
            key=lambda child: child.value +
            exploration_weight * math.sqrt(math.log(self.visits + 1) / (child.visits + 1e-6))
        )
    
    def expand(self):
        possible_moves, new_move = self.state.get_possible_moves()
        flattened_moves = flatten(possible_moves)
        new_flattened_moves = flatten(new_move)
        print("expand possible move: ", flattened_moves)
        new_state = self.state.generate_new_prompt(new_flattened_moves, flattened_moves)
        print("new_state: ", new_state.current_prompt)
        if not any(child.state.current_prompt == new_state.current_prompt for child in self.children):
            child_node = Node(new_state, parent=self)
            self.children.append(child_node)
            return child_node
        return None
    
    def backpropagate(self, result):
        self.visits += 1
        self.value += result
        if self.parent:
            self.parent.backpropagate(result)

def monte_carlo_tree_search(root, top_function, iterations=1000):
    for _ in range(iterations):
        node = root
        while True:
            if not node.is_fully_expanded():
                new_node = node.expand()
                if new_node:
                    node = new_node
                break
            elif node.children:
                node = node.best_child()
                print("best child: ", node.state.current_prompt)
            else:
                break
        print("node state: ", node.state.current_prompt)
        result = simulate(node.state, top_function)
        node.backpropagate(result)
    return root.best_child(exploration_weight=0.1)

def simulate(state, top_function):
    """Evaluate the prompt state."""
    return state.evaluate_prompt(top_function)

###############################################
# PromptState Definition
###############################################
class PromptState:
    def __init__(self, current_prompt, optimization_table, selected_strategies=None):
        self.current_prompt = current_prompt
        self.optimization_table = optimization_table
        self.selected_strategies = selected_strategies if selected_strategies is not None else []
        code_path = f"../demo_case/{top_function}/{top_function}.cpp"
        self.previous_code = read_code_path(code_path)

    def generate_prompt_from_strategies_for(self, strategies):
        if not strategies:
            return "Optimize code for performance."
        explanations = []
        header_content = []
        #code_path = ""
        code_path = f"../demo_case/{top_function}/{top_function}.cpp"
        with open(code_path, 'r') as code_file:
            code_content = code_file.read()
        if os.path.exists(f"../demo_case/{top_function}/{top_function}.h"):
            with open(f"../demo_case/{top_function}/{top_function}.h", 'r') as header_file:
                header_content = header_file.read()
        combined_content = header_content + "\n" + code_content        
        # if not os.path.exists(f"../true/{top_function}/{top_function}.cpp"):
        #     code_path = f"../demo_case/{top_function}/{top_function}.cpp"
        #     with open(code_path, 'r') as code_file:
        #         code_content = code_file.read()
        #     if os.path.exists(f"../demo_case/{top_function}/{top_function}.h"):
        #         with open(f"../demo_case/{top_function}/{top_function}.h", 'r') as header_file:
        #             header_content = header_file.read()
        #     combined_content = header_content + "\n" + code_content
        # else:
        #     code_path = f"../true/{top_function}/{top_function}.cpp"
        #     code_header = f"../true/{top_function}/{top_function}.h"   
        #     with open(code_header, 'r') as header_file:
        #         header_content = header_file.read()
        #     with open(code_path, 'r') as code_file:
        #         code_content = code_file.read()
        #     combined_content = header_content + "\n" + code_content
        here = os.path.dirname(os.path.abspath(__file__))
        code_path = os.path.join(
            here,
            '..',
            'demo_case',
            top_function,
            f'{top_function}.cpp'
        )            
        here = os.path.dirname(os.path.abspath(__file__))
        os.chdir(here)
        II_log_file = f"../true/{top_function}/vitis_hls.log"
        if os.path.exists(II_log_file):
            non_dataflow = extract_dataflow_warning(II_log_file)
            non_one_ii = extract_interval_warning(II_log_file)
            non_flatten = extract_flatten_warning(II_log_file)
            non_unroll = extract_unroll_warning(II_log_file)
        else:
            non_one_ii = ""
            non_flatten = ""
            non_unroll = ""
            non_dataflow = ""
        print("prompt strategies: ", strategies)
        if "Self-reflection" not in strategies:
            for strat in strategies:
                details = self.optimization_table.get(strat, {})
                explanation = details.get("Explanation", "")
                Type = details.get("Type", "")
                if details.get("Example", {}).get("Optimized", ""):
                    baseline = details.get("Example", {}).get("Baseline", "")
                    example = details.get("Example", {}).get("Optimized", "")
                    explanations.append(f"- {strat}: {explanation}")
                    explanations.append(f"You can revise the code according to: {Type}")
                    explanations.append(f"Baseline: {baseline}")
                    explanations.append(f"Optimized: {example}")
            prompt = f'''Let optimize the code {combined_content} step by step. The name of top_function is {top_function}  can not be changed.  
                    The code should have a header(h) file named {top_function}.h and a cpp file named {top_function}.cpp. The defination of variables, constants and functions are only in header file.
                    In cpp file, the codes of top function should be at the end of cpp file. Code is just code, Must not add your thinking or comments.
                    Your aim is to make sure the function of code is right and the pipeline interval from Xilinx HLS log to be one to achieve better performance. 
                    You can optimize the following HLS code using these strategies:\n\n''' + "\n".join(explanations)      
        elif "Self-reflection" in strategies:
            prompt = (
                f"observe that the loop trip count is specified. Reflect on the current loop structure—especially the {non_one_ii} {non_flatten} {non_unroll}  {non_dataflow} loop—and identify any potential performance bottlenecks. "
                f"Then, provide a detailed explanation of your reasoning and outline precise optimization actions to enhance the code's performance."
            )
        return prompt

    def get_possible_moves(self):
        all_keys = set(self.optimization_table.keys())
        remaining = list(all_keys - set(self.selected_strategies))
        if not remaining:
            return []
        candidate_moves = []
        new_move = []
        if len(self.selected_strategies):
            candidate_moves.append(self.selected_strategies)
        move = random.choice(remaining)
        print("possible move:", move)
        if move not in candidate_moves:
            candidate_moves.append(move)
            new_move.append(move)
        return candidate_moves, new_move

    def generate_new_prompt(self, new_strategies, new_selected_strategies):
        new_selected = list(dict.fromkeys(new_selected_strategies))
        current_strategies = list(dict.fromkeys(new_strategies))
        new_prompt = self.generate_prompt_from_strategies_for(current_strategies)
        return PromptState(new_prompt, self.optimization_table, new_selected)

    def evaluate_prompt(self, top_function):
        full_prompt = self.current_prompt
        generated_result = deepseek_R1_mcts(full_prompt)
        print("generate_result cpp: ", generated_result['cpp'])
        print("generate_result header: ", generated_result['header'])
        if not os.path.exists(f"../generate/{top_function}"):
            os.makedirs(f"../generate/{top_function}")
        with open(f"../generate/{top_function}/{top_function}.cpp", "w") as f:
            f.write(generated_result['cpp'])
        with open(f"../generate/{top_function}/{top_function}.h", "w") as f:
            f.write(generated_result['header'])   

        command = ["cp", f"../demo_case/{top_function}/{top_function}_tb.cpp", f"../generate/{top_function}"]
        print("Trying to copy from:", os.path.abspath(f"../demo_case/{top_function}/{top_function}_tb.cpp"))
        subprocess.run(command)
        print("Generated Code from Deepseek-R1:")
        Q = self.run_vitis(top_function, full_prompt)
        C = 1 / len(self.current_prompt) if self.current_prompt else 0
        score = Q - C
        print("Evaluating Prompt:\n")
        print("Score:", score, "\n")
        return score

    def run_vitis(self, top_function, prompt):
        global global_list
        true_path = f"../true/{top_function}"
        if os.path.exists(true_path):
            global_list = grasp_latency(true_path)        
        global global_attempt_count, global_function_error_count, global_synthesis_error_count
        tcl_template = f"""open_project {top_function}
add_files {top_function}.cpp
set_top {top_function}
open_solution solution1
create_clock -period 5 -name default
set_part {{xcu55c-fsvh2892-2L-e}}
csynth_design
exit
"""
        output_file = f"run_hls_{top_function}.tcl"
        here = os.path.dirname(os.path.abspath(__file__))
        output_file = os.path.join(
            here,
            output_file
        )    
        with open(output_file, "w") as file:
            file.write(tcl_template)
        print(f"TCL script generated and saved to {output_file}")

        log_file = f"../generate/{top_function}/vitis_hls.log"
        new_log_file = f"../generate/{top_function}/vitis_hls_new.log"
        command = ["vitis_hls", "-f", output_file, ">", log_file]
        attempts = 0
        error_history = []
        res_errors = []
        syn_errors = []
        while attempts < 3:
            global_attempt_count += 1  # Increment global attempt counter
            current_dir = os.path.dirname(os.path.abspath(__file__))
            output_path = os.path.abspath(
                os.path.join(current_dir, "..", "generate", top_function)
            )
            header_file_generate = os.path.abspath(
                os.path.join(output_path, f"{top_function}.h")
            )
            cpp_file = os.path.abspath(
                os.path.join(output_path, f"{top_function}.cpp")
            )
            tb_file = os.path.abspath(
                os.path.join(output_path, f"{top_function}_tb.cpp")
            )
            function_errors = compile_and_check(
                header_file_generate, 
                cpp_file, 
                tb_file, 
                output_path
            )
            if function_errors:
                # Count each error as a function error
                global_function_error_count += 1
                errors = str(function_errors)
            else:
                try:
                    with open(new_log_file, "w") as log:
                        subprocess.run(command, stdout=log, stderr=log, timeout=600, cwd=f"../generate/{top_function}") 
                    print(f"Vitis HLS run completed. Logs are saved to {log_file}")
                    error_pattern = re.compile(r"ERROR: .*")
                    with open(log_file, "r") as log:
                        syn_errors = error_pattern.findall(log.read())
                    if syn_errors:
                        global_synthesis_error_count += 1
                    errors = syn_errors
                except subprocess.TimeoutExpired:
                    print("Vitis HLS execution timed out after 10 minutes. Process terminated.")
                    error_timeout = "Vitis HLS execution timed out, please reduce the parameter of unroll factor and tiling size, simplify the code."
                    error_history.append(error_timeout)
                    global_synthesis_error_count += 1
                    errors = error_timeout
            error_debug = []
            if errors:
                print("Captured ERROR messages:")
                for error in errors if isinstance(errors, list) else [errors]:
                    error_history.append(error)
                    bug_key = None
                    for key in bug_table:
                        error_code = key.split("_")[1]
                        if error_code in error:
                            bug_key = key
                            break
                    if bug_key is not None:
                        bug_entry = bug_table[bug_key]
                        debug_info = {
                            "how_to_correct": bug_entry["how_to_correct"],
                            "example_error_code": bug_entry["Example"]["ERROR code"],
                            "example_corrected_code": bug_entry["Example"]["right code"]
                        }
                        error_debug = debug_info
                        # For simplicity, only take the first debug info per attempt
                        break
                if os.path.exists(f"../generate/{top_function}/{top_function}.h") and os.path.exists(f"../generate/{top_function}/{top_function}.cpp"):
                    with open(f"../generate/{top_function}/{top_function}.h", 'r') as header_file:
                        header_content = header_file.read()
                    with open(f"../generate/{top_function}/{top_function}.cpp", 'r') as code_file:
                        code_content = code_file.read()
                    combined_content = header_content + "\n" + code_content
                else:
                    combined_content = ""
                new_prompt = f'''The code which has errors is:\n{combined_content}\n
And generate new code to avoid the following errors:\n{errors}\n
You can refer to these guidelines to correct the code:\n{error_debug}\n
Check the error positions and repair the code.'''
                generated_result = deepseek_R1_mcts(new_prompt)
                print("Corrected results cpp: ", generated_result['cpp'])
                print("Corrected results header: ", generated_result['header'])
                with open(f"../generate/{top_function}/{top_function}.cpp", "w") as f:
                    f.write(generated_result['cpp'])
                with open(f"../generate/{top_function}/{top_function}.h", "w") as f:
                    f.write(generated_result['header'])
                attempts += 1
                print(f"Vitis run error on attempt {attempts}. Regenerating code using deepseek_R1_mcts with current prompt.")
            else:
                print("No ERROR messages found in the log.")
                break

        if not errors:
            curr_rpt = f"../generate/{top_function}/{top_function}/solution1/syn/report/csynth.rpt"
            previous_log_file = f"../demo_case/{top_function}/vitis_hls.log"
            pre_non_one_final_ii = find_non_one_final_ii(previous_log_file)
            pre_non_II_number = sum_final_ii_numbers(pre_non_one_final_ii)
            curr_non_one_final_ii = find_non_one_final_ii(log_file)
            curr_non_II_number = sum_final_ii_numbers(curr_non_one_final_ii)
            print("curr_non_II_number: ", curr_non_II_number)
            print("pre_non_II_number: ", pre_non_II_number)
            previous_rpt = f"../demo_case/{top_function}/{top_function}/solution1/syn/report/csynth.rpt"
            reward = 0
            if os.path.exists(previous_rpt):
                result_previous = parse_hls_report_with_checks(previous_rpt)
                if os.path.exists(curr_rpt):
                    result_current = parse_hls_report_with_checks(curr_rpt)
                    print("Previous result latency: ", result_previous["total_latency_cycles"])
                    print("Current result latency: ", result_current["total_latency_cycles"])
                    if result_current["total_latency_cycles"] != '-' and result_previous["total_latency_cycles"] != '-':
                        if int(result_previous["total_latency_cycles"]) > int(result_current["total_latency_cycles"]) and result_current["resource_constraint_met"] == True and not int(result_current["total_latency_cycles"]) in global_list:
                            reward = 2
                            copy_directory(f"../generate/{top_function}/", f"../true/", curr_rpt)
                    elif result_previous["resource_constraint_met"] == True and int(curr_non_II_number) < int(pre_non_II_number):
                        if result_previous["timing_constraint_met"] == True:
                            reward = 3
                        else:
                            reward = 2
                        copy_directory(f"../generate/{top_function}", f"../true/", curr_rpt)
                else:
                    reward = 0
        else:
            reward = 0
        if function_errors:
            return -2
        elif syn_errors or res_errors:
            return -1
        elif reward:
            return reward
        else:
            return 1

###############################################
# Main Execution
###############################################
if __name__ == '__main__':
    initial_prompt = "You are a FPGA engineer, You should obey Xilinx HLS code guidelines. You should optimize the following HLS code."
    top_function = "atax"
    root_state = PromptState(initial_prompt, optimization_table)
    best_node = monte_carlo_tree_search(Node(root_state), top_function, iterations=32)
    
    print("\nBest prompt found:")
    print(best_node.state.current_prompt)
    print("Final evaluation score:", best_node.state.evaluate_prompt(top_function))
    print("Global attempt count:", global_attempt_count)
    print("Global function error count:", global_function_error_count)
    print("Global synthesis error count:", global_synthesis_error_count)
    print("Success rate: ", (global_attempt_count - global_function_error_count - global_synthesis_error_count) / global_attempt_count)
