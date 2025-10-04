// Converted from ip_checksum_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: ip_checksum.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void ip_checksum(uint16_t data[ARRAY_SIZE], uint16_t& checksum) {

    uint32_t sum = 0;
    for (int i = 0; i < ARRAY_SIZE; i++) {

        sum += data[i];
        if (sum > 0xFFFF) {
            sum = (sum & 0xFFFF) + (sum >> 16);
        }
    }
    checksum = ~((uint16_t)sum);
}

// Top function name: ip_checksum
