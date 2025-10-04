// Converted from matrix_multiply_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: matrix_multiply.cpp ----
#include <cstdint>

#define SIZE 1024

void matrix_multiply(int16_t A[SIZE][SIZE], int16_t B[SIZE][SIZE], int32_t C[SIZE][SIZE]) {

    for (int i = 0; i < SIZE; i++) {

        for (int j = 0; j < SIZE; j++) {

            C[i][j] = 0;
            for (int k = 0; k < SIZE; k++) {

                C[i][j] += static_cast<int32_t>(A[i][k]) * static_cast<int32_t>(B[k][j]);
            }
        }
    }
}

// Top function name: matrix_multiply
