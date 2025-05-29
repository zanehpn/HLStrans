import random
import subprocess
import requests
import re
import os
from prompt import *
from typing import List
from optimization_table import optimization_table
from bug_table import bug_table
import shutil
import json
from typing import Dict, List
from openai import OpenAI

def extract_after_think(text: str) -> str:
    """
    Extracts and returns the content after the '</think>' marker.
    If no marker is found, returns an empty string.
    """
    match = re.search(r'</think>(.*)', text, re.DOTALL)
    if match:
        return match.group(1).strip()
    return ""
###############################################
# DeepseekR1 Client Implementation
###############################################
class DeepseekR1Client:
    def __init__(self, api_key: str, 
                 base_url: str = "https://api.deepinfra.com/v1/openai", 
                 model: str = "deepseek-ai/DeepSeek-V3",
                 temperature: float = 0.7):
        self.api_key = api_key
        self.base_url = base_url
        self.model = model
        self.temperature = temperature
        self.total_tokens_used = 0

    def chat_with_gpt(self, prompt: str, n: int = 1, stop: str = None) -> List[str]:
        headers = {
            'Authorization': f'Bearer {self.api_key}',
            'Content-Type': 'application/json'
        }
        data = {
            'model': self.model,
            'prompt': prompt,
            'temperature': self.temperature,
            'n': n,
        }
        if stop:
            data['stop'] = stop
        response = requests.post(f"{self.base_url}/completions", headers=headers, json=data)
        response.raise_for_status()
        
        result = response.json()
        self.total_tokens_used += result['usage']['total_tokens']
        return [choice['text'].strip() for choice in result['choices']]

def parse_code_blocks(text: str) -> Dict[str, str]:
    code_blocks = {
        "header": "",
        "cpp": "",
        "error": ""
    }

    try:
        header_match = re.search(r"```(?:h|hpp|header)[\s]*\n(.*?)```", text, re.DOTALL)
        if header_match:
            code_blocks["header"] = header_match.group(1).strip()

        cpp_match = re.search(r"```(?:cpp|c|c\+\+)[\s]*\n(.*?)```", text, re.DOTALL)
        if cpp_match:
            code_blocks["cpp"] = cpp_match.group(1).strip()

        if not code_blocks["header"] and not code_blocks["cpp"]:
            code_blocks["error"] = "No valid code blocks found in response"

    except Exception as e:
        code_blocks["error"] = f"Parsing error: {str(e)}"

    return code_blocks

def deepseek_R1_old(prompt: str) -> str:

    client = DeepseekR1Client(api_key="IM9GM9IVjPU4OeBFzoaVY6SlaVarR1h7")
    
    try:
        full_prompt = f"""Request: {prompt}, Must Only return the code use the format. \n
        Example response format:
        ```h \n
        // header content here
        ```
        ```cpp \n
        // implementation content here
        ```
        """
        completions = client.chat_with_gpt(full_prompt, n=1)
        response_text = completions[0] if completions else ""
        print(response_text)
        code_blocks = parse_code_blocks(response_text)        
        code_blocks["tokens_used"] = client.total_tokens_used
        
        return code_blocks

    except Exception as e:
        error_response = {
            "header": "",
            "cpp": "",
            "error": f"API Error: {str(e)}",
            "tokens_used": client.total_tokens_used
        }
        return error_response

def deepseek_R1(prompt: str) -> str:
    """
    Use the Deepseek-R1 API to generate code based on the prompt.
    Only returns the generated code, filtering out any chain-of-thought.
    Replace 'your_api_key_here' with your actual API key.
    """
    client = OpenAI(
        api_key = "sk-mYDMUkBi0LXmnCqjxF81CARnouWkHzFv3tNDFZaEjVigjQrZ",
        base_url = "https://api.chatfire.cn/v1",
    )
    try:
        full_prompt = f"""Request: {prompt}, Must Only return the code use the format. \n
        Example response format:
        ```h \n
        // header content here
        ```
        ```cpp \n
        // implementation content here
        ```
        """
        completions = client.chat.completions.create(
            model = "deepseek-r1",  # your model endpoint ID
            messages = [
                {"role": "system", "content": "You are a FPGA engineer."},
                {"role": "user", "content": f"{full_prompt}"},
        ],
        )
        #print("completions: ", completions)
        if completions:
            # Assume the generated code is enclosed in triple backticks.
            response_text = completions.choices[0].message.content
            code_blocks = parse_code_blocks(response_text)
            #print("code_blocks: ", code_blocks)
            return code_blocks 
    except Exception as e: 
        error_response = { "header": "", 
                          "cpp": "", 
                          "error": f"API Error: {str(e)}"}
                          #"tokens_used": client.total_tokens_used } 
        return error_response

def deepseek_judge(prompt: str, lista) -> str:

    client = DeepseekR1Client(api_key="IM9GM9IVjPU4OeBFzoaVY6SlaVarR1h7")
    
    full_prompt = f""" {prompt}\n According to the analysis of the code, optimize, there are many actions {lista}, decide which one can be
    used next, give a value of 0 to 1, the higher value is, the more possible it can be used:
    Example: given code:, given actions: [A,B,C]
        After analysis, if A can better optimize the code
    output must be: [0.8, 0.2, 0.2]  
    """
    completions = client.chat_with_gpt(full_prompt, n=1)
    response_text = completions[0] if completions else ""
    print("deepseek judge:\n", response_text)
    return response_text

def deepseek_expansion(code, llvm_analysis, lista) -> str:
    model = "deepseek-ai/DeepSeek-V3"
    client = DeepseekR1Client(model=model, api_key="IM9GM9IVjPU4OeBFzoaVY6SlaVarR1h7")
    
    full_prompt = f""" According to the llvm analysis of the code {llvm_analysis} and the code {code}, decide which one optimization from the optimization list {lista} can be
    used to optimize the code. The output must be one from the list. 
    Example input:  given code: code, given actions: [A,B,C], after analysis, if A can better optimize the code
            output: A
    """
    completions = client.chat_with_gpt(full_prompt, n=1)
    response_text = completions[0] if completions else ""
    if model == "deepseek-ai/DeepSeek-R1":
        response_text = extract_after_think(response_text)
        print("deepseek expansion:\n", response_text)
    return response_text
