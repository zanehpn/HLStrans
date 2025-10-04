// Converted from memory_allocation_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: memory_allocation.cpp ----
#include <iostream>

#define SIZE 1024

void memory_allocation(int input[SIZE], int output[SIZE]) {

    int temp[SIZE];

    for (int i = 0; i < SIZE; i++) {

        temp[i] = input[i] * 2;
    }

    for (int i = 0; i < SIZE; i++) {

        output[i] = temp[i] + 1;
    }
}

// Top function name: memory_allocation
