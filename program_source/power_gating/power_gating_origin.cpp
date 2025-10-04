// Converted from power_gating_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: power_gating.cpp ----
#include <iostream>

#define ARRAY_SIZE 1024

void power_gating(int input[ARRAY_SIZE], int output[ARRAY_SIZE], int threshold) {

    for (int i = 0; i < ARRAY_SIZE; i++) {

        if (input[i] > threshold) {
            output[i] = input[i];
        } else {
            output[i] = 0;
        }
    }
}

// Top function name: power_gating
