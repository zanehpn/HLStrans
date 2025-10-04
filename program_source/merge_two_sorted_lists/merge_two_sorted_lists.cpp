// Converted from merge_two_sorted_lists.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: merge_two_sorted_lists.cpp ----
#include <iostream>

#define SIZE 1024

void merge_two_sorted_lists(int list1[SIZE], int list2[SIZE], int merged_list[2*SIZE]) {
#pragma HLS ARRAY_PARTITION variable=merged_list type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=list2 type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=list1 type=cyclic dim=1 factor=1
    int i = 0, j = 0, k = 0;
    
    for (k = 0; k < 2 * SIZE; k++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (i < SIZE && (j >= SIZE || list1[i] <= list2[j])) {
            merged_list[k] = list1[i];
            i++;
        } else {
            merged_list[k] = list2[j];
            j++;
        }
    }
}

// Top function name: merge_two_sorted_lists
