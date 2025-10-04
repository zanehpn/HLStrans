// MALLOC_VARIANT

#include <stdint.h>

#define ARRAY_SIZE 1024

void hamming_distance(uint32_t array1[ARRAY_SIZE], uint32_t array2[ARRAY_SIZE], uint32_t result[ARRAY_SIZE]) {
    // Dynamically allocate working copies to avoid large fixed-size local arrays
    uint32_t* a1 = new uint32_t[ARRAY_SIZE];
    uint32_t* a2 = new uint32_t[ARRAY_SIZE];
    uint32_t* res = new uint32_t[ARRAY_SIZE];

    // Copy inputs to dynamic buffers
    for (int i = 0; i < ARRAY_SIZE; i++) {
        a1[i] = array1[i];
        a2[i] = array2[i];
    }

    // Compute hamming distances into dynamic result buffer
    for (int i = 0; i < ARRAY_SIZE; i++) {
        uint32_t x = a1[i] ^ a2[i];
        uint32_t dist = 0;
        for (int j = 0; j < 32; j++) {
            dist += (x >> j) & 1u;
        }
        res[i] = dist;
    }

    // Copy back to output
    for (int i = 0; i < ARRAY_SIZE; i++) {
        result[i] = res[i];
    }

    // Free dynamic memory
    delete[] a1;
    delete[] a2;
    delete[] res;
}
