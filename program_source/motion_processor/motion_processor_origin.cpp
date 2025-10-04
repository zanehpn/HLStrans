// Converted from motion_processor_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: motion_processor.cpp ----
#include <ap_int.h>

#define SIZE 1024

void motion_processor(ap_int<16> input1[SIZE], ap_int<16> input2[SIZE], ap_int<16> output[SIZE]) {

    for (int i = 0; i < SIZE; i++) {

        ap_int<16> diff = input1[i] - input2[i];
        if (diff < 0) {
            output[i] = -diff;
        } else {
            output[i] = diff;
        }
    }
}
// Top function name: motion_processor
