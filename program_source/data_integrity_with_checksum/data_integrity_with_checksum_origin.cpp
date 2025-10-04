// Converted from data_integrity_with_checksum_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: data_integrity_with_checksum.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void data_integrity_with_checksum(uint32_t input_data[ARRAY_SIZE], uint32_t *checksum) {

    uint32_t sum = 0;
    for (int i = 0; i < ARRAY_SIZE; i++) {

        sum += input_data[i];
    }
    *checksum = sum;
}

// Top function name: data_integrity_with_checksum
