// Converted from dma_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: dma.cpp ----
#include <cstdint>

#define SIZE 1024

void dma(uint32_t input[SIZE], uint32_t output[SIZE]) {

    for (int i = 0; i < SIZE; i++) {

        output[i] = input[i];
    }
}

// Top function name: dma
