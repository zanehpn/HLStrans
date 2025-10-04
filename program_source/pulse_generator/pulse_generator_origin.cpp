// Converted from pulse_generator_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: pulse_generator.cpp ----
#include <iostream>

#define SIZE 1024

void pulse_generator(int threshold, int pulse_width, int output[SIZE]) {

    for (int i = 0; i < SIZE; i++) {

        if (i % pulse_width < threshold) {
            output[i] = 1;
        } else {
            output[i] = 0;
        }
    }
}

// Top function name: pulse_generator
