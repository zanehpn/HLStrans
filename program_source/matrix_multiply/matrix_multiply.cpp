// Converted from matrix_multiply.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: matrix_multiply.cpp ----
#include <ap_int.h>

#define SIZE 1024

void matrix_multiply(ap_int<16> A[SIZE][SIZE], ap_int<16> B[SIZE][SIZE], ap_int<32> C[SIZE][SIZE]) {
#pragma HLS ARRAY_PARTITION variable=C type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=C type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=B type=cyclic dim=2 factor=8
#pragma HLS ARRAY_PARTITION variable=B type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=1 factor=2
    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for (int j = 0; j < SIZE; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
            C[i][j] = 0;
            for (int k = 0; k < SIZE; k++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}

// Top function name: matrix_multiply
