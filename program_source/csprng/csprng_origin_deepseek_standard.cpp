// Converted from csprng_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: csprng.cpp ----
#include <cstdint>

#define SIZE 1024

void csprng(uint32_t seed, uint32_t output[SIZE]) {

    uint32_t state = seed;
    uint32_t multiplier = 1664525u;
    uint32_t increment = 1013904223u;

    for (int i = 0; i < SIZE; i++) {
        state = state * multiplier + increment;
        output[i] = state;
    }
}

// Top function name: csprng
