// Converted from matmul_partition_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: combined.cpp ----
/**
* Copyright (C) 2019-2021 Xilinx, Inc
*
* Licensed under the Apache License, Version 2.0 (the "License"). You may
* not use this file except in compliance with the License. A copy of the
* License is located at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations
* under the License.
*/

// Includes
/**
* Copyright (C) 2019-2021 Xilinx, Inc
*
* Licensed under the Apache License, Version 2.0 (the "License"). You may
* not use this file except in compliance with the License. A copy of the
* License is located at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations
* under the License.
*/

#define MAX_DIM 16

void matmul_partition(int* in1, int* in2, int* out_r, int dim, int rep_count);

// TRIPCOUNT identifier
const unsigned int c_dim = MAX_DIM;

void matmul_partition(int* in1, int* in2, int* out_r, int dim, int rep_count) { // Matrix Dimension. Assuming Square Matrix

    int A[MAX_DIM * MAX_DIM];
    int B[MAX_DIM * MAX_DIM];
    int C[MAX_DIM * MAX_DIM];
// Cyclic Partition for A as matrix multiplication needs row-wise parallel
// access

// Block Partition for B as matrix multiplication needs column-wise parallel
// access

// As A and B Matrix are partitioned with the factor of MAX_DIM, so to get
// parallel row/column access, input square matrix[dimXdim] should be written
// into local Array in MATRIX[MAX_DIM * MAX_DIM] format

// Burst read for matrix A
// Auto-pipeline is going to apply pipeline to these loops
readA:
    for (int itr = 0, i = 0, j = 0; itr < dim * dim; itr++, j++) {

        if (j == dim) {
            j = 0;
            i++;
        }
        A[i * MAX_DIM + j] = in1[itr];
    }

// Burst read for matrix B
readB:
    for (int itr = 0, i = 0, j = 0; itr < dim * dim; itr++, j++) {

        if (j == dim) {
            j = 0;
            i++;
        }
        B[i * MAX_DIM + j] = in2[itr];
    }

loop2:
    for (int x = 0; x < rep_count; x++) {

    lreorder1:
        for (int i = 0; i < dim; i++) {

        // As A and B are partition correctly so loop pipelining is applied
        // at 2nd level loop and which will eventually unroll the lower loop
        lreorder2:
            for (int j = 0; j < dim; j++) {

                int result = 0;
            lreorder3:
                for (int k = 0; k < MAX_DIM; k++) {

                    //#pragma HLS LOOP_TRIPCOUNT min = c_dim max = c_dim
                    result += A[i * MAX_DIM + k] * B[k * MAX_DIM + j];
                }
                C[i * MAX_DIM + j] = result;
            }
        }
    }

// Burst write from output matrices to global memory
// Burst write from matrix C
writeC:
    for (int itr = 0, i = 0, j = 0; itr < dim * dim; itr++, j++) {

        if (j == dim) {
            j = 0;
            i++;
        }
        out_r[itr] = C[i * MAX_DIM + j];
    }
}
