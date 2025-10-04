// Converted from nat_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: nat.cpp ----
#include <stdint.h>

#define LARGE_SCALE 1024

void nat(uint32_t src_ip[LARGE_SCALE], uint32_t dst_ip[LARGE_SCALE], uint32_t translated_ip[LARGE_SCALE]) {

    for (int i = 0; i < LARGE_SCALE; i++) {

        // Simple NAT translation: add a fixed offset to the source IP
        translated_ip[i] = src_ip[i] + 0x01000000; // Example offset for translation
    }
}
// Top function name: nat
