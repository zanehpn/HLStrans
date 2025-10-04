// Converted from bubble_sort.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: bubble_sort.cpp ----
#include <ap_int.h>

#define ARRAY_SIZE 1024

void bubble_sort(ap_int<32> array[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=array type=cyclic dim=1 factor=1
    for (int i = 0; i < ARRAY_SIZE - 1; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        for (int j = 0; j < ARRAY_SIZE - i - 1; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
            if (array[j] > array[j + 1]) {
                ap_int<32> temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }
}

// Top function name: bubble_sort
