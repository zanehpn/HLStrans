// Converted from magnitude_comparator.c to .cpp by convert_and_transform_with_deepseek_auto.py

// ---- file: magnitude_comparator.cpp ----
#include <ap_int.h>

#define ARRAY_SIZE 1024

void magnitude_comparator(ap_int<32> input1[ARRAY_SIZE], ap_int<32> input2[ARRAY_SIZE], ap_int<1> output[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input2 type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input1 type=cyclic dim=1 factor=1
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (input1[i] > input2[i]) {
            output[i] = 1;
        } else {
            output[i] = 0;
        }
    }
}

// Top function name: magnitude_comparator
