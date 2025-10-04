// Converted from synchronous_processor_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: synchronous_processor.cpp ----
#include <ap_int.h>

#define SIZE 1024

void synchronous_processor(ap_int<16> input1[SIZE], ap_int<16> input2[SIZE], ap_int<16> output[SIZE]) {

    for (int i = 0; i < SIZE; i++) {

        output[i] = input1[i] + input2[i];
    }
}

// Top function name: synchronous_processor
