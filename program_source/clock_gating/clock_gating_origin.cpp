// Converted from clock_gating_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: clock_gating.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void clock_gating(uint32_t input[ARRAY_SIZE], uint32_t output[ARRAY_SIZE], uint32_t threshold) {

    for (int i = 0; i < ARRAY_SIZE; i++) {

        if (input[i] > threshold) {
            output[i] = input[i];
        } else {
            output[i] = 0;
        }
    }
}

// Top function name: clock_gating
