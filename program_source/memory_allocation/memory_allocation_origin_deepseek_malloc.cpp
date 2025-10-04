// MALLOC_VARIANT

#include <iostream>

#define SIZE 1024

void memory_allocation(int input[SIZE], int output[SIZE]) {

    int* temp = new int[SIZE];

    for (int i = 0; i < SIZE; i++) {
        temp[i] = input[i] * 2;
    }

    for (int i = 0; i < SIZE; i++) {
        output[i] = temp[i] + 1;
    }

    delete[] temp;
}

// Top function name: memory_allocation
