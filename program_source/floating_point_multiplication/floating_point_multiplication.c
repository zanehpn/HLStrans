// ---- file: floating_point_multiplication.cpp ----
#include <ap_fixed.h>

#define ARRAY_SIZE 1024

void floating_point_multiplication(float A[ARRAY_SIZE], float B[ARRAY_SIZE], float C[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=C type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=B type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=1 factor=1
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        C[i] = A[i] * B[i];
    }
}

// Top function name: floating_point_multiplication
