// Converted from noise_suppression_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: noise_suppression.cpp ----
#include <cmath>
#include <cstdint>

#define SIZE 1024

void noise_suppression(int16_t input[SIZE], int16_t output[SIZE], int16_t threshold) {

    for (int i = 0; i < SIZE; i++) {

        if (std::abs(input[i]) < threshold) {
            output[i] = 0;
        } else {
            output[i] = input[i];
        }
    }
}

// Top function name: noise_suppression
