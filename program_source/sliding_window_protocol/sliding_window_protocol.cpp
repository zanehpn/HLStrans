// Converted from sliding_window_protocol.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: sliding_window_protocol.cpp ----
#include <iostream>

#define WINDOW_SIZE 8
#define BUFFER_SIZE 1024

void sliding_window_protocol(int input[BUFFER_SIZE], int output[BUFFER_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=2
    int window[WINDOW_SIZE];
    int i, j;

    // Initialize the window
    for (i = 0; i < WINDOW_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=16
        window[i] = 0;
    }

    // Process the input data with the sliding window
    for (i = 0; i < BUFFER_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        // Shift the window
        for (j = WINDOW_SIZE - 1; j > 0; j--) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            window[j] = window[j - 1];
        }
        // Insert the new element into the window
        window[0] = input[i];

        // Compute the output as the sum of the window elements
        int sum = 0;
        for (j = 0; j < WINDOW_SIZE; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            sum += window[j];
        }
        output[i] = sum;
    }
}

// Top function name: sliding_window_protocol
