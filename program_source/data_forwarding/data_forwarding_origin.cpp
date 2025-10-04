// Converted from data_forwarding_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: data_forwarding.cpp ----
#include <ap_int.h>

#define SIZE 1024

void data_forwarding(ap_int<32> input[SIZE], ap_int<32> output[SIZE]) {

    for (int i = 0; i < SIZE; i++) {

        output[i] = input[i];
    }
}

// Top function name: data_forwarding
