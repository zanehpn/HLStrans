// Converted from run_length_encoding.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: run_length_encoding.cpp ----
#include <iostream>

#define MAX_SIZE 1024

void run_length_encoding(int input[MAX_SIZE], int output[MAX_SIZE][2], int &output_size) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=2 factor=4
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    int count = 1;
    int out_index = 0;

    for (int i = 1; i < MAX_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (input[i] == input[i - 1]) {
            count++;
        } else {
            output[out_index][0] = input[i - 1];
            output[out_index][1] = count;
            out_index++;
            count = 1;
        }
    }

    // Handle the last sequence
    output[out_index][0] = input[MAX_SIZE - 1];
    output[out_index][1] = count;
    out_index++;

    output_size = out_index;
}

// Top function name: run_length_encoding
