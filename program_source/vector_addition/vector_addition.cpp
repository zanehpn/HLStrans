// Converted from vector_addition.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: vector_addition.cpp ----
#include <ap_int.h>

#define VECTOR_SIZE 1024

void vector_addition(ap_int<32> A[VECTOR_SIZE], ap_int<32> B[VECTOR_SIZE], ap_int<32> C[VECTOR_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=C type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=B type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=1 factor=1
    for (int i = 0; i < VECTOR_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        C[i] = A[i] + B[i];
    }
}

// Top function name: vector_addition
