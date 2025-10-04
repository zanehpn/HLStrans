// Converted from dma_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: dma.cpp ----
#include <ap_int.h>

#define SIZE 1024

void dma(ap_uint<32> input[SIZE], ap_uint<32> output[SIZE]) {

    for (int i = 0; i < SIZE; i++) {

        output[i] = input[i];
    }
}

// Top function name: dma
