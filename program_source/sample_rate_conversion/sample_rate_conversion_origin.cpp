// Converted from sample_rate_conversion_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: sample_rate_conversion.cpp ----
#include <iostream>

#define INPUT_SIZE 1024
#define OUTPUT_SIZE 512

void sample_rate_conversion(const float input[INPUT_SIZE], float output[OUTPUT_SIZE]) {

    int i, j;
    const int factor = INPUT_SIZE / OUTPUT_SIZE;

    for (i = 0; i < OUTPUT_SIZE; i++) {

        float sum = 0;
        for (j = 0; j < factor; j++) {

            sum += input[i * factor + j];
        }
        output[i] = sum / factor;
    }
}

// Top function name: sample_rate_conversion
