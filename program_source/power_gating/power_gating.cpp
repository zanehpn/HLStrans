// Converted from power_gating.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: power_gating.cpp ----
#include <iostream>

#define ARRAY_SIZE 1024

void power_gating(int input[ARRAY_SIZE], int output[ARRAY_SIZE], int threshold) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (input[i] > threshold) {
            output[i] = input[i];
        } else {
            output[i] = 0;
        }
    }
}

// Top function name: power_gating
