// Converted from sliding_window_protocol_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: sliding_window_protocol.cpp ----
#include <iostream>

#define WINDOW_SIZE 8
#define BUFFER_SIZE 1024

void sliding_window_protocol(int input[BUFFER_SIZE], int output[BUFFER_SIZE]) {

    int window[WINDOW_SIZE];
    int i, j;

    // Initialize the window
    for (i = 0; i < WINDOW_SIZE; i++) {

        window[i] = 0;
    }

    // Process the input data with the sliding window
    for (i = 0; i < BUFFER_SIZE; i++) {

        // Shift the window
        for (j = WINDOW_SIZE - 1; j > 0; j--) {

            window[j] = window[j - 1];
        }
        // Insert the new element into the window
        window[0] = input[i];

        // Compute the output as the sum of the window elements
        int sum = 0;
        for (j = 0; j < WINDOW_SIZE; j++) {

            sum += window[j];
        }
        output[i] = sum;
    }
}

// Top function name: sliding_window_protocol
