// ---- file: data_integrity_with_checksum.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void data_integrity_with_checksum(uint32_t input_data[ARRAY_SIZE], uint32_t *checksum) {
#pragma HLS ARRAY_PARTITION variable=input_data type=cyclic dim=1 factor=1
    uint32_t sum = 0;
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        sum += input_data[i];
    }
    *checksum = sum;
}

// Top function name: data_integrity_with_checksum
