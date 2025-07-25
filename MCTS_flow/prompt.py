# pragma HLS pipeline
PIPELINE_PROMPT = \
"""
pragma HLS pipeline

Function Overview:
pragma HLS pipeline is a compilation directive to reduce the initiation interval of functions or loops, thereby improving performance through concurrent execution of operations. It allows the pipelining of operations in functions or loops to process new inputs every N clock cycles, where N is the initiation interval (II) of the loop or function. The default II is 1, meaning a new input is processed every clock cycle.

Application Scenes:
- It is suitable for scenarios where reducing the initiation interval of functions or loops is desired to enhance concurrent performance.
- It is applicable for optimizing performance by pipelining loops to enable concurrent execution of operations.
"""

PIPELINE_DEMO = \
"""
Parameter Description:
- II=<int>: Specifies the desired initiation interval for pipelining operations. Vivado HLS attempts to meet this requirement, but the actual result may be affected by data dependencies and may have a larger initiation interval. The default value is 1.
- enable_flush: An optional keyword used to implement pipelining, where the pipeline flushes and clears if the active data on the pipeline inputs becomes inactive. This feature is only supported for pipelined functions and is not supported for pipelined loops.
- rewind: An optional keyword that enables rewinding or continuous loop pipelining without pausing between one loop iteration's end and the beginning of the next. It is effective only when there is a single loop (or perfectly nested loops) in the top-level function. This feature is only supported for pipelined loops and is not supported for pipelined functions.

Usage Example:
1. Pipelining function foo with an initiation interval of 1, in this example, by using #pragma HLS pipeline, the function foo is pipelined, enabling concurrent execution of operations to improve performance.
```c
void foo { a, b, c, d} { 
    #pragma HLS pipeline II=1 
    // ...
}
```
"""


# pragma HLS unroll
UNROLL_PROMPT = \
"""
pragma HLS unroll

Function Overview:
pragma HLS unroll is a compilation directive to unroll loops, creating multiple independent operations instead of a single operation set. The UNROLL compilation directive transforms loops by creating multiple copies of the loop body in the RTL design, allowing parallel execution of some or all loop iterations.

Application Scenes:
- When increased loop parallelism is desired to enhance performance and throughput.
- When optimizing hardware implementation to execute multiple loop iterations in the same clock cycle.
"""

UNROLL_DEMO = \
"""
Parameter Description:
- factor=<N>: Specifies a non-zero integer N, indicating a request for partial unrolling. The loop body will be repeated the specified number of times, adjusting iteration information accordingly. If factor= is not specified, the loop will be fully unrolled.
- region: An optional keyword used to unroll all loops within a specified loop body (region) without unrolling the enclosing loop itself.
- skip_exit_check: An optional keyword applicable only when partial unrolling is specified with factor=. It indicates whether to skip the exit condition check. If the iteration count of the loop is known and is a multiple of the factor, skip_exit_check can be used to eliminate exit checks and related logic.

Usage Examples:
1.Fully unroll a loop:
```cpp
for(int i = 0; i < X; i++) {
    #pragma HLS unroll
    a[i] = b[i] + c[i];
}
```

2. Partially unroll a loop (unroll factor of 2 with exit check skipped):
```cpp
for(int i = 0; i < X; i++) {
    #pragma HLS unroll factor=2 skip_exit_check
    a[i] = b[i] + c[i];
}
```

3. Fully unroll all loops within a specified region:
```cpp
void foo(int data_in[N], int scale, int data_out1[N], int data_out2[N]) {
    int temp1[N];
    loop_1: for(int i = 0; i < N; i++) {
        #pragma HLS unroll region
        temp1[i] = data_in[i] * scale;
        loop_2: for(int j = 0; j < N; j++) {
            data_out1[j] = temp1[j] * 123;
        }
        loop_3: for(int k = 0; k < N; k++) {
            data_out2[k] = temp1[k] * 456;
        }
    }
}
```
"""

# pragma HLS array_partition
ARRAY_PARTITION_PROMPT = \
"""
pragma HLS array_partition

Function Overview:
This pragma is used to partition arrays, dividing them into smaller arrays or individual elements. The partitioning results in generating multiple small memories or registers at the RTL (Register-Transfer Level) instead of a single large memory. This effectively increases the number of read and write ports, potentially enhancing the design's throughput.

Application Scenes:
- When there is a need to increase the number of storage read and write ports to enhance parallelism and throughput.
- Optimizing multi-dimensional arrays in HLS designs, especially in array operations within processors.
"""

ARRAY_PARTITION_DEMO = \
"""
Parameter Description:
- variable=<name>: Specifies the required parameter, the array variable to be partitioned.
- <type>: Optionally specifies the partition type, including cyclic, block, and complete (default type).
- factor=<int>: Specifies the number of smaller arrays to create. Not required for complete partitioning but necessary for block and cyclic partitioning.
- dim=<int>: Specifies which dimension of a multi-dimensional array to partition. 0 indicates all dimensions, and a non-zero value indicates partitioning only the specified dimension.

Usage Examples:
1. Partition an array AB[13] with 13 elements into four arrays, where three arrays have three elements each, and one array has four elements:
```cpp
#pragma HLS array_partition variable=AB block factor=4
```

2. Partition the second dimension of a two-dimensional array AB[6][4] into two new dimensions [6][2]:
```cpp
#pragma HLS array_partition variable=AB block factor=2 dim=2
```

3. Partition the second dimension of a two-dimensional array in_local into individual elements:
```cpp
int in_local[MAX_SIZE][MAX_DIM];
#pragma HLS ARRAY_PARTITION variable=in_local complete dim=2
```
"""

Unroll_array_combined = """
    "Explanation": "This example demonstrates how to use a local buffer along with array partitioning and loop unrolling to achieve full parallel data transfer. The local buffer is mapped to dual-port BRAM and partitioned into 200 banks so that all elements can be accessed concurrently. The loops that load and store data are fully unrolled to perform the operations in parallel.",
    "Baseline": "for (int i = 0; i < 200; i++) { output[i] = input[i]; }",
    "Optimized": "float local_buffer[200];\n#pragma HLS RESOURCE variable=local_buffer core=RAM_2P_BRAM\n#pragma HLS ARRAY_PARTITION variable=local_buffer cyclic factor=200\n\n// Load input into local buffer\nfor (int i = 0; i < 200; i++) {\n    #pragma HLS UNROLL factor=200\n    local_buffer[i] = input[i];\n}\n\n// Write data from local buffer to output\nfor (int i = 0; i < 200; i++) {\n    #pragma HLS UNROLL factor=200\n    output[i] = local_buffer[i];\n}"
    """




