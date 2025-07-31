# HLStrans

HLStrans, a first Dataset for LLM-Driven C-to-HLS Hardware Code Synthesis for [HLStrans](https://huggingface.co/datasets/qingyun777yes/HLStrans). The dataset generation pipeline is below:

![](./data/datagen.png)

In this project, the directory structure is organized as follows:

   * DSE_flow and MCTS_flow: Dataset augmentation workflows
   * eval_models: Model evaluation scripts and utilities
   * lib_functions: Core library functions and helpers
   * model_sft: Model fine‑tuning and training pipelines
   * demo_case: Example cases demonstrating data augmentation
   * program_source: Source data and scripts used to build our datasets
## Prerequisites

This project was tested on Xilinx Alveo U55C and Vitis HLS 2022.1 suite. The tools are needed: 

* Vitis HLS tool chain

The following python libraries are required: 
   ```shell
   pip install -r requirements.txt
   ```

set your LLM API in lib_functions/lib_functions/llm_api.py

## Program Source

The dataset’s real‑world program sources are organized under the program_source directory, drawing from benchmarks like Polybench and MachSuite—as well as other GitHub projects. Polybench and MachSuite provide representative kernels, while the Unsupported_C folder contains C codes that failed synthesis alongside their human‑revised HLS counterparts. Each subfolder follows a consistent structure:

* Original C source
* Human‑optimized HLS code
* Corresponding testbench
* HLS synthesis script

This layout ensures that for every benchmark or project, you have both the unmodified and hand‑tuned HLS implementations, along with the support files needed for validation and synthesis.

## Dataset_Agumentation
The Dataset_Augmentation pipeline proceeds in two stages. First, it applies an MCTS‑driven transformation flow to convert original C/C++ sources into synthesizable HLS implementations, yielding a diverse set of optimized HLS variants. Next, it fine‑tunes pragma parameters using a genetic‑algorithm‑based Design Space Exploration (DSE), further improving performance and resource efficiency. 

1. MCTS exploration flow: In this phase, we leverage Monte Carlo Tree Search to navigate the vast, combinatorial space of code transformations with exceptional efficiency. Our system integrates a curated knowledge base of domain‑specific optimizations—enabling context‑aware, compiler‑informed decisions that significantly enhance an LLM’s native reasoning capabilities. Moreover, whenever synthesis errors arise, we consult a specialized bug‑repair table to automatically diagnose and correct them, ensuring a smooth and reliable transformation pipeline. 

   ```shell
   cd lib_functions
   pip install -e .
   cd ../MCTS_flow
   python3 exploration/mcts_exlore.py
   ```
2. Design Space Exploration (DSE) flow: mainly forcus on directive configurations using **Genetic Algorithms**, specifically the **NSGA-II** algorithm. It enables fine-grained exploration and tuning of hardware performance vs. resource usage for HLS designs targeting **Xilinx/AMD FPGAs** via the **Vitis HLS** toolchain. 

   * **Supported Directives**:
   * Loop Directives
      * pipeline
      * unroll
      * loop_flatten

   * Array Directives
      * array_partition
         * Modes: complete, block, cyclic
         * Parameters: variable, factor, dim
      * array_reshape
         * Modes: complete, block, cyclic
         * Parameters: variable, factor, dim
      * bind_storage
         * Parameters: variable, type (e.g., RAM_1P, RAM_2P, ROM_1P, ROM_2P), impl (e.g., bram, uram, lutram)

   * **Example: How to run DSE**:
   Here is an example, which shows how you run DSE for the given codes. 
      ```shell
      cd DSE_flow/vitis-convolution
      ../exec.sh run vitis-convolution .cpp
      ```
   After you finished the first step MCTS_flow, you get the optimized new codes:app.cpp. You can explore it with the DSE flow , follow these steps:

   (1). Create the dataset directory
      ```bash
      mkdir -p DSE_flow/dataset/app
      ```
   (2). Generate kernel information
   Run the [HLSAnalysisTools](https://github.com/aferikoglou/HLSAnalysisTools) on your `app.cpp` to produce `kernel_info.txt`.
   (3). Populate the dataset folder
      ```bash
      cp app.cpp kernel_info.txt DSE_flow/dataset/app/
      ```
   (4). Create the output directory
      ```bash
      mkdir -p DSE_flow/app
      ```
   (5). Run the design-space exploration
   Follow the existing examples in the `DSE_flow` repository, replacing the dataset path with your new `app` folder:
      ```bash
      ../exec.sh run app .cpp
      ```
   * **Multi-objective optimization** across:

   * Design Latency (msec)
   * BRAM%, DSP%, LUT%, and FF% Utilization

3. run the following codes to get the codes which has better performance with less resource than berfore.  
      ```bash
      python3 mv.py
      python3 collect_data.py
      ```
## Eval LLM
The script in eval_models adopt zero-shot, chain-of-thought, and retrieval-based prompt to evaluate the ability of LLM for HLS codes. The default model is Qwen2.5-Coder-32B-Instruct. 
   ```shell
   cd lib_functions
   pip install -e .
   cd eval_models/
   python3 test_model_best1.py
   python3 model_results_eval.py
   ```

## Training

After downloading the HLStrans dataset, place it under the data/ directory, then launch the preprocessing script. First, the removal script remove_testcase_from_dataset will strip out test cases. Next, fine‑tune your LLM on the cleaned dataset. If you’d like to evaluate on different data, simply pick one of the programs in program_source/ at random and use that as your test set.

```shell
python3 data/remove_testcase_from_dataset.py
# 3b
llamafactory-cli train model_sft/c2hls_3b.yaml
# 7b
llamafactory-cli train model_sft/c2hls_7b.yaml
```

## Acknowledgements
- [LLaMA-Factory](https://github.com/hiyouga/LLaMA-Factory) 🔗
# rebuttal
1. fintue
   
| Setting | Model         | Acceleration (Opt) | Acceleration (Min) | Acceleration (Avg) | Acceleration (Max) | Function Correct       | Synthesis Correct |
| :------ | :------------ | :----------------- | :----------------- | :----------------- | :----------------- | :---------------------- | :---------------- |
| Best@1  | Qwen Coder 3B | 11.8%              | 0.1×               | 2.2× (+0.1)        | 8.5× (+0.8)        | 41.2% (+5.9%)           | 35.3%             |
| Best@1  | Qwen Coder 7B | 17.6%              | 0.5× (+0.1)        | 3.2× (+0.4)        | 18.9× (+1.7)       | 41.2% (+5.9%)           | 29.4%             |
| Best@5  | Qwen Coder 3B | 29.4%（+5.9%）      | 0.8× (+0.2)        | 3.1× (+0.2)        | 9.7× (+0.8)        | 47.0% (+5.9%)           | 35.3%             |
| Best@5  | Qwen Coder 7B | 29.4%              | 0.9× (+0.1)        | 3.6× (+0.5)        | 22.0× (+0.6)       | 52.9% (+11.8%)          | 41.2%             |


2.
| Method                                | Setting | Model         | Opt   | Min  | Avg  | Max   | Function correct | Synthesis correct |
| :------------------------------------ | :------ | :------------ | :---- | :--- | :--- | :---- | :--------------- | :---------------- |
| **Finetune and Zero-Shot Prompting**  | Best\@1 | Qwen coder 3B | 11.8% | 0.1× | 2.1× | 7.7×  | 35.3%            | 35.3%             |
|                                       | Best\@1 | Qwen coder 7B | 17.6% | 0.4× | 2.8× | 17.2× | 41.1%            | 29.4%             |
| **Retrieval Prompting**               | Best\@1 | Qwen coder 3B | 11.8% | 0.7× | 1.0× | 3.4×  | 29.4%            | 11.8%             |
|                                       | Best\@1 | Qwen coder 7B | 17.6% | 0.3× | 2.1× | 5.2×  | 52.9%            | 35.3%             |
| **Finetune with Retrieval Prompting** | Best\@1 | Qwen coder 3B | 11.8% | 0.5× | 3.4× | 7.7×  | 41.1%            | 35.3%             |
|                                       | Best\@1 | Qwen coder 7B | 17.6% | 0.9× | 3.9× | 21.1× | 52.9%            | 41.1%             |

3. Nl to HLS
| Method        | Model          | Acceleration (Opt) | Acceleration (Min) | Acceleration (Avg) | Acceleration (Max) | Function correct | Synthesis correct |
| :------------ | :------------- | :----------------: | :----------------: | :----------------: | :----------------: | :--------------- | :---------------- |
| **Zero-shot** | Deepseek-R1    |        17.6%       |        0.3×        |        2.8×        |        24.6×       | 47.1%            | 29.4%             |
|               | GPT-4o         |        17.6%       |        0.5×        |        1.6×        |        10.9×       | 35.3%            | 29.4%             |
|               | Qwen Coder 32B |        5.9%        |        0.8×        |        1.3×        |        1.5×        | 41.2%            | 11.8%             |
|               | Qwen Coder 7B  |         0%         |        0.66×       |        0.9×        |        1.0×        | 38.8%            | 11.8%             |
|               | Qwen Coder 3B  |         0%         |        0.75×       |        0.8×        |        1.0×        | 38.8%            | 11.8%             |
| **CoT**       | Deepseek-R1    |        17.6%       |        0.9×        |        4.3×        |        41.0×       | 52.9%            | 29.4%             |
|               | GPT-4o         |        29.4%       |        0.5×        |        1.3×        |        4.0×        | 52.9%            | 35.3%             |
|               | Qwen Coder 32B |        11.8%       |        0.1×        |        2.4×        |        24.6×       | **58.8%**        | 17.6%             |
|               | Qwen Coder 7B  |        17.6%       |        0.04×       |        1.2×        |        2.0×        | 52.9%            | 35.3%             |
|               | Qwen Coder 3B  |        5.9%        |        0.8×        |        1.1×        |        1.8×        | 47.1%            | 29.4%             |
| **Retrieval** | Deepseek-R1    |      **41.2%**     |        0.9×        |      **7.2×**      |      **57.0×**     | 47.1%            | **47.1%**         |
| **Prompting** | GPT-4o         |      **41.2%**     |        0.9×        |        4.7×        |        24.6×       | **58.8%**        | 35.3%             |
|               | Qwen Coder 32B |        29.4%       |        0.7×        |        4.9×        |        24.6×       | 47.1%            | 35.3%             |
|               | Qwen Coder 7B  |        17.6%       |        0.3×        |        2.1×        |        5.1×        | 52.9%            | 35.3%             |
|               | Qwen Coder 3B  |        11.7%       |        0.7×        |        1.0×        |        3.4×        | 29.4%            | 11.8%             |

4. mcts runtime
| Metric                 | 8 iterations | 16 iterations | 32 iterations | 48 iterations | 64 iterations |
|----------------------  |--------------|---------------|---------------|---------------|---------------|
| **Best accelerations** |      6.59    |       20.2    |    54.7       |     56.7      |       58.9    |
| **Runtime**            |    1.41      |     2.52      |       4.05    |      6.21     |       8.32    | 
   
| Metric                      |  adi | atax | bicg | correlation | covariance | doitgen | fdtd\_2d | gesummv |
| :-------------------------- | :--: | :--: | :--: | :---------: | :--------: | :-----: | :------: | :-----: |
| Number of effective samples |  11  |  26  |  21  |      7      |      7     |    17   |     6    |    17   |
| Runtime (hours)             | 3.92 | 4.64 | 3.64 |     4.85    |    3.21    |   4.53  |   3.47   |   4.11  |

| Metric                          | Brute-Force DFS | Our MCTS |
| :------------------------------ | --------------: | -------: |
| **Best Accelerations**          |        40.3     |    54.7  |
| **Number of Effective Samples** |        69       |    112   |

5. framework evaluations 


| Application   | Baseline | HLSPilot \[7] GPT-4o | Ours GPT-4o | Ours Deepseek-R1 |
| :------------ | -------: | -------------------: | ----------: | ---------------: |
| cfd\_flux     |       13 |                 6.71 |        4.57 |             1.61 |
| hotspot       |   1879.1 |                712.7 |       300.5 |             22.3 |
| kmeans        |   2243.2 |                 65.9 |        17.9 |             15.7 |
| knn           |     17.0 |                  2.8 |        0.83 |             0.82 |
| dilate        |     48.8 |                 16.0 |        0.75 |             1.64 |
| gicov         |    107.0 |                 93.0 |        82.3 |             30.7 |
| mgvf          |   8047.5 |               3212.0 |      1231.0 |            446.0 |
| lud           |    226.4 |                112.0 |        81.2 |             52.6 |
| nw            |    206.4 |                145.0 |        73.0 |             13.0 |
| pathfinder    |      7.8 |                  5.9 |        1.09 |             1.51 |
| srad          |     35.7 |                  9.4 |         6.4 |              6.6 |
| streamcluster |  16173.0 |               9388.0 |      8162.3 |           3966.0 |

|     Dataset Ratio | 25% | 50% | 75% | 100% | Average |
| ----------------: | --: | --: | --: | ---: | ------: |
| **Accelerations** |15.21|6.71 | 2.32|  1.51| 5.21    |


