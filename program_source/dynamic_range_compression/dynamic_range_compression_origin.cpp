// Converted from dynamic_range_compression_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: dynamic_range_compression.cpp ----
#include <cmath>
#include <algorithm>

#define ARRAY_SIZE 1024

void dynamic_range_compression(float input[ARRAY_SIZE], float output[ARRAY_SIZE], float threshold, float compression_ratio) {

    for (int i = 0; i < ARRAY_SIZE; i++) {

        if (input[i] > threshold) {
            output[i] = threshold + (input[i] - threshold) / compression_ratio;
        } else if (input[i] < -threshold) {
            output[i] = -threshold + (input[i] + threshold) / compression_ratio;
        } else {
            output[i] = input[i];
        }
    }
}

// Top function name: dynamic_range_compression
