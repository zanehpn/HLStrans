// ---- file: memory_allocation.cpp ----
#include <iostream>

#define SIZE 1024

void memory_allocation(int input[SIZE], int output[SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    int temp[SIZE];

    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        temp[i] = input[i] * 2;
    }

    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        output[i] = temp[i] + 1;
    }
}

// Top function name: memory_allocation
