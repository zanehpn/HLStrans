optimization_table = {
  "LoopTiling": {
    "Explanation": "Loop tiling (or blocking) is an optimization technique that partitions large loops into smaller blocks (tiles) to enhance data locality and cache reuse. In HLS designs, using local buffers to store these tiles allows you to reduce global memory accesses by working on data that is resident in fast on-chip memory. This leads to improved performance, especially in compute-intensive tasks such as matrix multiplication.",
    "Example": {
      "Baseline": "for (int i = 0; i < N; i++) {\n    for (int j = 0; j < N; j++) {\n        for (int k = 0; k < N; k++) {\n            C[i][j] += A[i][k] * B[k][j];\n        }\n    }\n}\n",
      "Optimized": "for (int ii = 0; ii < N; ii += TILE_SIZE) {\n    for (int jj = 0; jj < N; jj += TILE_SIZE) {\n        // Local buffer for the C tile\n        int localC[TILE_SIZE][TILE_SIZE];\n        for (int kk = 0; kk < N; kk += TILE_SIZE) {\n            // Local buffers for the A and B tiles\n            int localA[TILE_SIZE][TILE_SIZE];\n            int localB[TILE_SIZE][TILE_SIZE];\n            \n            // Load tile of A from global memory into local buffer\n            for (int i = 0; i < TILE_SIZE; i++) {\n                for (int k = 0; k < TILE_SIZE; k++) {\n                    localA[i][k] = A[ii + i][kk + k];\n                }\n            }\n            \n            // Load tile of B from global memory into local buffer\n            for (int k = 0; k < TILE_SIZE; k++) {\n                for (int j = 0; j < TILE_SIZE; j++) {\n                    localB[k][j] = B[kk + k][jj + j];\n                }\n            }\n            \n            // Multiply the local tiles and accumulate the result into localC\n            for (int i = 0; i < TILE_SIZE; i++) {\n                for (int j = 0; j < TILE_SIZE; j++) {\n                    for (int k = 0; k < TILE_SIZE; k++) {\n                        localC[i][j] += localA[i][k] * localB[k][j];\n                    }\n                }\n            }\n        }\n        // Write the computed tile back to global memory C\n        for (int i = 0; i < TILE_SIZE; i++) {\n            for (int j = 0; j < TILE_SIZE; j++) {\n                C[ii + i][jj + j] = localC[i][j];\n            }\n        }\n    }\n}\n"
    }
  },

  "Array Partitioning and Unroll": {
    "Explanation": "Divide an array into smaller partitions to allow parallel access. When combined with loop unrolling, the unroll factor and the partitioning factor should be coordinated so that each unrolled iteration accesses a different partition, maximizing parallelism.",
    "Example": {
      "Baseline": "void vector_add(const int A[32], const int B[32], int C[32]) {\n    for (int i = 0; i < 32; i++) {\n        C[i] = A[i] + B[i];\n    }\n}\n",
      "Optimized": "void vector_add(const int A[32], const int B[32], int C[32]) {\n    /* Partition arrays into 4 cyclic parts so that each partition can be accessed in parallel */\n    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=4\n    #pragma HLS ARRAY_PARTITION variable=B cyclic factor=4\n    #pragma HLS ARRAY_PARTITION variable=C cyclic factor=4\n    \n    for (int i = 0; i < 32; i++) {\n        /* Unroll loop by factor of 4 to match the partitioning factor */\n        #pragma HLS UNROLL factor=4\n        C[i] = A[i] + B[i];\n    }\n}\n"
    }
  },
  "Tune the parameter": {
    "Explanation": "if no timeout, increase parameters: the loop unroll factor, array partitioning factor and tiling size if no timeout. If tiemout, reduce the parameters.",
    "Example": {
    "Baseline": "void tuned_vector_add(const int A[128], const int B[128], int C[128]) {\n    /* Configure the memory interface for high throughput */\n    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem\n    #pragma HLS INTERFACE m_axi port=B offset=slave bundle=gmem\n    #pragma HLS INTERFACE m_axi port=C offset=slave bundle=gmem\n\n    /* Partition the arrays into 8 cyclic parts to allow parallel access */\n   int buffer_A[128]; int buffer_B[128]; int buffer_C[128]\n; #pragma HLS ARRAY_PARTITION variable=buffer_A cyclic factor=8\n    #pragma HLS ARRAY_PARTITION variable=buffer_B cyclic factor=8\n    #pragma HLS ARRAY_PARTITION variable=buffer_C cyclic factor=8\n\n     for (int i = 0; i < 128; i++) {\n        /* Unroll the loop by a factor of 8 so that each iteration accesses a distinct partition */\n        #pragma HLS UNROLL factor=8\n        buffer_A[i] = A[i]; buffer_B[i] = B[i];  buffer_C[i] = buffer_A[i] + buffer_B[i]; C[i] = buffer_C[i]\n    }\n}\n",
    "Optimized": "void tuned_vector_add(const int A[128], const int B[128], int C[128]) {\n    /* Configure the memory interface for high throughput */\n    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem\n    #pragma HLS INTERFACE m_axi port=B offset=slave bundle=gmem\n    #pragma HLS INTERFACE m_axi port=C offset=slave bundle=gmem\n\n    /* Partition the arrays into 8 cyclic parts to allow parallel access */\n   int buffer_A[128]; int buffer_B[128]; int buffer_C[128]\n; #pragma HLS ARRAY_PARTITION variable=buffer_A cyclic factor=32\n    #pragma HLS ARRAY_PARTITION variable=buffer_B cyclic factor=32\n    #pragma HLS ARRAY_PARTITION variable=buffer_C cyclic factor=32\n\n     for (int i = 0; i < 128; i++) {\n        /* Unroll the loop by a factor of 8 so that each iteration accesses a distinct partition */\n        #pragma HLS UNROLL factor=8\n        buffer_A[i] = A[i]; buffer_B[i] = B[i];  buffer_C[i] = buffer_A[i] + buffer_B[i]; C[i] = buffer_C[i]\n    }\n}\n"
  }
  },  
  "Self-relection": {
    "Explanation": "Analyze the HLS code and optimize the code. The code has been optimized, but there is still room for improvement.",
    "Example": {
        "Baseline": """
        "Optimized": """
  },   
  },

"Control Flow Optimization": 
{ "Explanation": "Replace conditional branch statements with predicated execution to minimize pipeline stalls and improve performance.", 
  "Type": "Need to refactor the code", 
  "Example": 
  { "Baseline": "void compute(int &a, bool flag) {\n if (flag) {\n a = a * 2;\n } else {\n a = a + 1;\n }\n}\nfor (int i = 0; i < N; i++) {\n compute(output[i], condition[i]);\n}", 
    "Optimized": "void compute(int &a, bool flag) {\n#pragma HLS INLINE\n a = flag ? (a * 2) : (a + 1);\n}\nfor (int i = 0; i < N; i++) {\n compute(output[i], condition[i]);\n}" 
  } 
},    

  "Loop Merge": {
    "Explanation": "merge consecutive loops into a single loop, reducing overall latency, promoting sharing, and improving logic optimization.",
    "Type": "Need to refactor the code",
    "Example":{
    "Baseline": "void process_array(int input[100], int output[100]) {\n    int temp[100];\n\n    // Loop 1: Compute intermediate values\n    for (int i = 0; i < 100; i++) {\n        temp[i] = input[i] + 1;\n    }\n\n    // Loop 2: Compute final output based on the intermediate values\n    for (int i = 0; i < 100; i++) {\n        output[i] = temp[i] * 2;\n    }\n}",
    "Optimized": "void process_array_optimized(int input[100], int output[100]) {\n    int temp[100];\n\n    // Apply loop_merge to merge the two loops into one\n    #pragma HLS loop_merge force\n\n    // Merged loop: both compute the intermediate result and the final output in each iteration\n    for (int i = 0; i < 100; i++) {\n        temp[i] = input[i] + 1;\n        output[i] = temp[i] * 2;\n    }\n}"
  }
}, 

  "Loop Flatten": {
    "Explanation": "The pragma HLS loop_flatten allows the flattening of nested loops into a single loop hierarchy to improve latency. Flattening nested loops can reduce clock cycles.",
    "Type": "Need to refactor the code",
    "Example": {
      "Baseline": "void matrix_add(int A[4][4], int B[4][4], int C[4][4]) {\n    // Two-level nested loop for matrix addition\n    for (int i = 0; i < 4; i++) {\n        for (int j = 0; j < 4; j++) {\n            C[i][j] = A[i][j] + B[i][j];\n        }\n    }\n}",
      "Optimized": "void matrix_add_flatten(int A[4][4], int B[4][4], int C[4][4]) {\n    // The loop_flatten pragma instructs the HLS tool to merge the inner loop into the outer loop\n    #pragma HLS loop_flatten\n    for (int i = 0; i < 4; i++) {\n        for (int j = 0; j < 4; j++) {\n            C[i][j] = A[i][j] + B[i][j];\n        }\n    }\n}"
    }
  },
    "ping-pong buffers": {
        "Explanation": "Use ping-pong buffers to overlap computation and data transfer.",
        "Type": "Need to refactor the code",
        "Example": {
            "Baseline": """
for (int i = 0; i < N; i++) {
    compute(input[i]);
}
""",
            "Optimized": """
float buffer1[SIZE], buffer2[SIZE];
for (int i = 0; i < N; i += SIZE) {
    if (i % 2 == 0) {
        memcpy(buffer1, input + i, SIZE * sizeof(float)); // memcpy function need to be designed
        compute(buffer2);
    } else {
        memcpy(buffer2, input + i, SIZE * sizeof(float));
        compute(buffer1);
    }
}
"""
        }
    },
        "Dataflow": {
        "Explanation": "Use #pragma HLS dataflow to enable task-level parallelism, the transmission between modules should be stream.",
        "Type": "Need to refactor the code",
        "Example": {
            "Baseline": """
void stage1(float *input, float *output) {
    for (int i = 0; i < N; i++) output[i] = input[i] * 2;
}
void stage2(float *input, float *output) {
    for (int i = 0; i < N; i++) output[i] = input[i] + 1;
}
void top(float *input, float *output) {
    float temp[N];
    stage1(input, temp);
    stage2(temp, output);
}
""",
            "Optimized": """
void stage1(float *input, hls::stream<float>& output) {
#pragma HLS pipeline II=1
    for (int i = 0; i < N; i++) {
        output.write(input[i] * 2);  // Write to stream
    }
}

void stage2(hls::stream<float>& input, float *output) {
#pragma HLS pipeline II=1
    for (int i = 0; i < N; i++) {
        float temp = input.read();   // Read from stream
        output[i] = temp + 1;        // Store in output array
    }
}

void top(float *input, float *output) {
#pragma HLS DATAFLOW

    hls::stream<float> temp_stream;  // Replaces float temp[N]
    #pragma HLS stream variable=data_stream depth=128  // the depth needs to be set according to program
    stage1(input, temp_stream);
    stage2(temp_stream, output);
}
"""
        }
    }
}

optimization_table_easy = {
  "Tune the parameter": {
    "Explanation": "if no timeout, increase parameters: the loop unroll factor, array partitioning factor and tiling size if no timeout. If tiemout, reduce the parameters.",
    "Example": {
    "Baseline": "void vector_add(const int A[128], const int B[128], int C[128]) {\n    for (int i = 0; i < 128; i++) {\n        C[i] = A[i] + B[i];\n    }\n}\n",
    "Optimized": "void tuned_vector_add(const int A[128], const int B[128], int C[128]) {\n    /* Configure the memory interface for high throughput */\n    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem\n    #pragma HLS INTERFACE m_axi port=B offset=slave bundle=gmem\n    #pragma HLS INTERFACE m_axi port=C offset=slave bundle=gmem\n\n    /* Partition the arrays into 8 cyclic parts to allow parallel access */\n    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=8\n    #pragma HLS ARRAY_PARTITION variable=B cyclic factor=8\n    #pragma HLS ARRAY_PARTITION variable=C cyclic factor=8\n\n    for (int i = 0; i < 128; i++) {\n        /* Unroll the loop by a factor of 8 so that each iteration accesses a distinct partition */\n        #pragma HLS UNROLL factor=8\n        C[i] = A[i] + B[i];\n    }\n}\n"
  }
},  
  "Self-relection": {
    "Explanation": "Analyze the HLS code and optimize the code. The code has been optimized, but there is still room for improvement.",
    "Example": {
        "Baseline": """
        "Optimized": """
  },   
},
}
#   "Loop Merge": {
#     "Explanation": "merge consecutive loops into a single loop, reducing overall latency, promoting sharing, and improving logic optimization.",
#     "Type": "Need to refactor the code",
#     "Example":{
#     "Baseline": "void process_array(int input[100], int output[100]) {\n    int temp[100];\n\n    // Loop 1: Compute intermediate values\n    for (int i = 0; i < 100; i++) {\n        temp[i] = input[i] + 1;\n    }\n\n    // Loop 2: Compute final output based on the intermediate values\n    for (int i = 0; i < 100; i++) {\n        output[i] = temp[i] * 2;\n    }\n}",
#     "Optimized": "void process_array_optimized(int input[100], int output[100]) {\n    int temp[100];\n\n    // Apply loop_merge to merge the two loops into one\n    #pragma HLS loop_merge force\n\n    // Merged loop: both compute the intermediate result and the final output in each iteration\n    for (int i = 0; i < 100; i++) {\n        temp[i] = input[i] + 1;\n        output[i] = temp[i] * 2;\n    }\n}"
#   }
# }, 

#   "Loop Flatten": {
#     "Explanation": "The pragma HLS loop_flatten allows the flattening of nested loops into a single loop hierarchy to improve latency. Flattening nested loops can reduce clock cycles.",
#     "Type": "Need to refactor the code",
#     "Example": {
#       "Baseline": "void matrix_add(int A[4][4], int B[4][4], int C[4][4]) {\n    // Two-level nested loop for matrix addition\n    for (int i = 0; i < 4; i++) {\n        for (int j = 0; j < 4; j++) {\n            C[i][j] = A[i][j] + B[i][j];\n        }\n    }\n}",
#       "Optimized": "void matrix_add_flatten(int A[4][4], int B[4][4], int C[4][4]) {\n    // The loop_flatten pragma instructs the HLS tool to merge the inner loop into the outer loop\n    #pragma HLS loop_flatten\n    for (int i = 0; i < 4; i++) {\n        for (int j = 0; j < 4; j++) {\n            C[i][j] = A[i][j] + B[i][j];\n        }\n    }\n}"
#     }
#   },
#     "Dataflow": {
#         "Explanation": "Use #pragma HLS dataflow to enable task-level parallelism, the transmission between modules should be stream.",
#         "Type": "Need to refactor the code",
#         "Example": {
#             "Baseline": """
# void stage1(float *input, float *output) {
#     for (int i = 0; i < N; i++) output[i] = input[i] * 2;
# }
# void stage2(float *input, float *output) {
#     for (int i = 0; i < N; i++) output[i] = input[i] + 1;
# }
# void top(float *input, float *output) {
#     float temp[N];
#     stage1(input, temp);
#     stage2(temp, output);
# }
# """,
#             "Optimized": """
# void stage1(float *input, hls::stream<float>& output) {
# #pragma HLS pipeline II=1
#     for (int i = 0; i < N; i++) {
#         output.write(input[i] * 2);  // Write to stream
#     }
# }

# void stage2(hls::stream<float>& input, float *output) {
# #pragma HLS pipeline II=1
#     for (int i = 0; i < N; i++) {
#         float temp = input.read();   // Read from stream
#         output[i] = temp + 1;        // Store in output array
#     }
# }

# void top(float *input, float *output) {
# #pragma HLS DATAFLOW

#     hls::stream<float> temp_stream;  // Replaces float temp[N]
#     #pragma HLS stream variable=data_stream depth=128  // the depth needs to be set according to program
#     stage1(input, temp_stream);
#     stage2(temp_stream, output);
# }
# """
#         }
#     }

# }