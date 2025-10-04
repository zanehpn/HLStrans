// ---- file: rotate_array.cpp ----
#include <ap_int.h>

#define ARRAY_SIZE 1024

void rotate_array(int input_array[ARRAY_SIZE], int output_array[ARRAY_SIZE], int rotate_by) {
#pragma HLS ARRAY_PARTITION variable=output_array type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input_array type=cyclic dim=1 factor=1
    int i;
    for (i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        int new_index = (i + rotate_by) % ARRAY_SIZE;
        output_array[new_index] = input_array[i];
    }
}

// Top function name: rotate_array
