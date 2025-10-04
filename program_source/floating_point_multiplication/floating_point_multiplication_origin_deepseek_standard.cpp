// ---- file: floating_point_multiplication.cpp ----

#define ARRAY_SIZE 1024

void floating_point_multiplication(float A[ARRAY_SIZE], float B[ARRAY_SIZE], float C[ARRAY_SIZE]) {
    for (int i = 0; i < ARRAY_SIZE; i++) {
        C[i] = A[i] * B[i];
    }
}

// Top function name: floating_point_multiplication
