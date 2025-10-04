// ---- file: fixed_point_multiplication.cpp ----
#include <ap_fixed.h>

#define SIZE 1024

typedef ap_fixed<16, 8> fixed_point_t;

void fixed_point_multiplication(fixed_point_t A[SIZE], fixed_point_t B[SIZE], fixed_point_t C[SIZE]) {
#pragma HLS ARRAY_PARTITION variable=C type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=B type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=1 factor=1
    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        C[i] = A[i] * B[i];
    }
}

// Top function name: fixed_point_multiplication
