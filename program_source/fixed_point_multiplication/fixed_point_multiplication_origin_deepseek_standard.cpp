// Converted from fixed_point_multiplication_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: fixed_point_multiplication.cpp ----

#define SIZE 1024

typedef float fixed_point_t;

void fixed_point_multiplication(fixed_point_t A[SIZE], fixed_point_t B[SIZE], fixed_point_t C[SIZE]) {
    for (int i = 0; i < SIZE; i++) {
        C[i] = A[i] * B[i];
    }
}

// Top function name: fixed_point_multiplication
