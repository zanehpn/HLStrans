// Converted from floating_point_dsp.c to .cpp by convert_and_transform_with_deepseek_auto.py

// ---- file: floating_point_dsp.cpp ----
#include <cmath>

#define SIZE 1024

void floating_point_dsp(float input[SIZE], float output[SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        float temp = input[i];
        temp = std::sin(temp);
        temp = std::cos(temp);
        temp = std::tan(temp);
        temp = std::log(temp + 1.0f); // Adding 1 to avoid log(0)
        temp = std::exp(temp);
        temp = std::sqrt(temp);
        output[i] = temp;
    }
}

// Top function name: floating_point_dsp
