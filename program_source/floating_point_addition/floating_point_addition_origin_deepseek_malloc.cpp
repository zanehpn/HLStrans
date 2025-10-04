// MALLOC_VARIANT: dynamic allocation for working buffers, standard C++
#include <cstring>

#define ARRAY_SIZE (1 << 10)

void floating_point_addition(float A[ARRAY_SIZE], float B[ARRAY_SIZE], float C[ARRAY_SIZE]) {
    float* Ad = new float[ARRAY_SIZE];
    float* Bd = new float[ARRAY_SIZE];
    float* Cd = new float[ARRAY_SIZE];

    // Copy inputs to dynamically allocated buffers
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        Ad[i] = A[i];
        Bd[i] = B[i];
    }

    // Core computation on dynamic buffers
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        Cd[i] = Ad[i] + Bd[i];
    }

    // Copy result back to output
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        C[i] = Cd[i];
    }

    delete[] Ad;
    delete[] Bd;
    delete[] Cd;
}
