// Converted from crc32.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: crc32.cpp ----
#include <stdint.h>

#define DATA_SIZE 1024

void crc32(uint32_t data[DATA_SIZE], uint32_t &crc) {
#pragma HLS ARRAY_PARTITION variable=data type=cyclic dim=1 factor=1
    uint32_t polynomial = 0xEDB88320;
    crc = 0xFFFFFFFF;

    for (int i = 0; i < DATA_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        uint32_t current_byte = data[i];
        crc ^= current_byte;
        for (int j = 0; j < 8; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            if (crc & 1) {
                crc = (crc >> 1) ^ polynomial;
            } else {
                crc = crc >> 1;
            }
        }
    }
    crc ^= 0xFFFFFFFF;
}

// Top function name: crc32
