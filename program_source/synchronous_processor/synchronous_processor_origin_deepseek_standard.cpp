// Converted from synchronous_processor_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: synchronous_processor.cpp ----
#include <cstdint>

#define SIZE 1024

void synchronous_processor(int16_t input1[SIZE], int16_t input2[SIZE], int16_t output[SIZE]) {
    for (int i = 0; i < SIZE; i++) {
        output[i] = static_cast<int16_t>(input1[i] + input2[i]);
    }
}

// Top function name: synchronous_processor
