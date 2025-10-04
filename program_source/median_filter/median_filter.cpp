// Converted from median_filter.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: median_filter.cpp ----
#include <algorithm>

#define SIZE 1024

void median_filter(int input[SIZE], int output[SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    int window[3];
    for (int i = 1; i < SIZE - 1; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        window[0] = input[i - 1];
        window[1] = input[i];
        window[2] = input[i + 1];
        
        // Sort the window to find the median
        for (int j = 0; j < 2; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
            for (int k = j + 1; k < 3; k++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
                if (window[j] > window[k]) {
                    int temp = window[j];
                    window[j] = window[k];
                    window[k] = temp;
                }
            }
        }
        
        output[i] = window[1];
    }
    // Handle boundary conditions
    output[0] = input[0];
    output[SIZE - 1] = input[SIZE - 1];
}

// Top function name: median_filter
