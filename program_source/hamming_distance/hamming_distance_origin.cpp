// Converted from hamming_distance_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: hamming_distance.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void hamming_distance(uint32_t array1[ARRAY_SIZE], uint32_t array2[ARRAY_SIZE], uint32_t result[ARRAY_SIZE]) {

    for (int i = 0; i < ARRAY_SIZE; i++) {

        uint32_t x = array1[i] ^ array2[i];
        uint32_t dist = 0;
        for (int j = 0; j < 32; j++) {

            dist += (x >> j) & 1;
        }
        result[i] = dist;
    }
}

// Top function name: hamming_distance
