// Converted from bluetooth_module_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: bluetooth_module.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void bluetooth_module(uint8_t input_data[ARRAY_SIZE], uint8_t output_data[ARRAY_SIZE]) {

    for (int i = 0; i < ARRAY_SIZE; i++) {

        // Simple processing: invert the bits of each byte
        output_data[i] = ~input_data[i];
    }
}

// Top function name: bluetooth_module
