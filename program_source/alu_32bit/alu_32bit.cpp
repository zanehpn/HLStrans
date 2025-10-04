// Converted from alu_32bit.c to .cpp by convert_and_transform_with_deepseek_auto.py

// ---- file: alu_32bit.cpp ----
#include <cstdint>

#define ARRAY_SIZE 1024

void alu_32bit(uint32_t A[ARRAY_SIZE], uint32_t B[ARRAY_SIZE], uint8_t op[ARRAY_SIZE], uint32_t result[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=result type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=op type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=B type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=1 factor=1
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        switch (op[i]) {
            case 0: // Addition
                result[i] = A[i] + B[i];
                break;
            case 1: // Subtraction
                result[i] = A[i] - B[i];
                break;
            case 2: // Multiplication
                result[i] = A[i] * B[i];
                break;
            case 3: // Bitwise AND
                result[i] = A[i] & B[i];
                break;
            case 4: // Bitwise OR
                result[i] = A[i] | B[i];
                break;
            case 5: // Bitwise XOR
                result[i] = A[i] ^ B[i];
                break;
            case 6: // Logical left shift
                result[i] = A[i] << (B[i] & 0x1F);
                break;
            case 7: // Logical right shift
                result[i] = A[i] >> (B[i] & 0x1F);
                break;
            default: // Default case (NOP)
                result[i] = A[i];
                break;
        }
    }
}

// Top function name: alu_32bit
