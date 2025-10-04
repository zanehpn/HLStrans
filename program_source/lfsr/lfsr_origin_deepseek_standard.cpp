// Converted from lfsr_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: lfsr.cpp ----
#include <cstdint>

#define LFSR_SIZE 1024

void lfsr(uint32_t seed, uint32_t lfsr_output[LFSR_SIZE]) {

    uint32_t lfsr_reg = seed;
    uint32_t feedback;

    for (int i = 0; i < LFSR_SIZE; i++) {

        feedback = (lfsr_reg ^ (lfsr_reg >> 1) ^ (lfsr_reg >> 21) ^ (lfsr_reg >> 31)) & 1u;
        lfsr_reg = (lfsr_reg >> 1) | (feedback << 31);
        lfsr_output[i] = lfsr_reg;
    }
}

// Top function name: lfsr
