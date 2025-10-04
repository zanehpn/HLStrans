// Converted from frequency_divider_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: frequency_divider.cpp ----
#include <ap_int.h>

#define ARRAY_SIZE 1024

void frequency_divider(int input_freq[ARRAY_SIZE], int divisor, int output_freq[ARRAY_SIZE]) {

    for (int i = 0; i < ARRAY_SIZE; i++) {

        output_freq[i] = input_freq[i] / divisor;
    }
}

// Top function name: frequency_divider
