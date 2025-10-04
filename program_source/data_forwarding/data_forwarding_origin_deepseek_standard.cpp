// Converted from data_forwarding_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: data_forwarding.cpp ----
#include <cstdint>

#define SIZE 1024

void data_forwarding(int32_t input[SIZE], int32_t output[SIZE]) {

    for (int i = 0; i < SIZE; i++) {

        output[i] = input[i];
    }
}

// Top function name: data_forwarding
