// Converted from embedded_microprocessor_fpu.c to .cpp by convert_and_transform_with_deepseek_auto.py

// ---- file: embedded_microprocessor_fpu.cpp ----
#include <cmath>
#include <cstdint>

#define ARRAY_SIZE 1024

void embedded_microprocessor_fpu(float input1[ARRAY_SIZE], float input2[ARRAY_SIZE], float output[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input2 type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input1 type=cyclic dim=1 factor=1
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        float temp1 = input1[i];
        float temp2 = input2[i];
        float result = temp1 * temp2 + std::sqrt(temp1) - std::log(temp2 + 1.0f);
        output[i] = result;
    }
}

// Top function name: embedded_microprocessor_fpu
