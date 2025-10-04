// Converted from vector_addition_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: vector_addition.cpp ----
#include <cstdint>

#define VECTOR_SIZE 1024

void vector_addition(int32_t A[VECTOR_SIZE], int32_t B[VECTOR_SIZE], int32_t C[VECTOR_SIZE]) {

    for (int i = 0; i < VECTOR_SIZE; i++) {

        C[i] = A[i] + B[i];
    }
}

// Top function name: vector_addition
