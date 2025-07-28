# HLS-driven Design Space Exploration Using Genetic Algorithms

**GenHLSOptimizer** is an automated optimizer for conducting **Design Space Exploration (DSE)** of **High-Level Synthesis (HLS)** directive configurations using **Genetic Algorithms**, specifically the **NSGA-II** algorithm. It enables fine-grained exploration and tuning of hardware performance vs. resource usage for HLS designs targeting **Xilinx/AMD FPGAs** via the **Vitis HLS** toolchain.

---

## Key Features

* **Supported Directives**:

  * `Loop Pipeline`
  * `Loop Unroll`
  * `Array Partition`

* **Multi-objective optimization** across:

  * Design Latency (msec)
  * BRAM%, DSP%, LUT%, and FF% Utilization

* **Parallelized evaluations**

---

## Inputs

1. **C/C++ source code** annotated with labeled action points (i.e. loops and arrays) such as `L1`, `L2`, etc.
2. **`kernel_info.txt`** file, generated using the companion tool [HLSAnalysisTools](https://github.com/aferikoglou/HLSAnalysisTools), which contains:

   * The top-level function name
   * Metadata for each action point such as the loop trip counts and array dimensions

---

## Output

* **SQLite Database** that logs every explored directive configuration along with its corresponding HLS performance and resource metrics. All databases are stored in the `databases/` directory, and users can directly extract Pareto-optimal configurations from them for further analysis or reuse.

---

## Getting Started

Follow these instructions to get a copy of the project on your local machine.

### Prerequisites

This project has been validated on **Ubuntu 18.04.6 LTS** with **Python 3.6.9** and the **Vitis 2021.1** toolchain. To ensure proper functionality, the following Python libraries are required:

* [`pymoo`](https://pypi.org/project/pymoo/) (version 0.5.0)
* [`sqlitedict`](https://pypi.org/project/sqldict/) (version 2.0.0)
* [`psutil`](https://pypi.org/project/psutil/) (version 5.9.0)

You can install all required dependencies with:

```bash
python3 -m pip install -r requirements.txt
```

### Run

After downloading the software in the *Prerequisites* section you can clone this repository on your local machine.

**Perform HLS-based DSE for Xilinx/AMD FPGAs, targeting UltraScale+ MPSoC ZCU104 and Alveo U200 at 100, 200, and 300 MHz**

```bash
exec.sh run <ApplicationName> <Extension>
```
