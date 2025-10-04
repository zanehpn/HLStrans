// ---- file: hamming_distance.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void hamming_distance(uint32_t array1[ARRAY_SIZE], uint32_t array2[ARRAY_SIZE], uint32_t result[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=result type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=array2 type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=array1 type=cyclic dim=1 factor=1
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        uint32_t x = array1[i] ^ array2[i];
        uint32_t dist = 0;
        for (int j = 0; j < 32; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            dist += (x >> j) & 1;
        }
        result[i] = dist;
    }
}

// Top function name: hamming_distance
