// Converted from dma_controller_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: dma_controller.cpp ----
#include <stdint.h>

#define SIZE 1024

void dma_controller(uint32_t input[8][SIZE], uint32_t output[8][SIZE]) {

    for (int channel = 0; channel < 8; channel++) {

        for (int i = 0; i < SIZE; i++) {

            output[channel][i] = input[channel][i];
        }
    }
}

// Top function name: dma_controller
