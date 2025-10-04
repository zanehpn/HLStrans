// ---- file: sample_rate_conversion.cpp ----
#include <iostream>

#define INPUT_SIZE 1024
#define OUTPUT_SIZE 512

void sample_rate_conversion(const float input[INPUT_SIZE], float output[OUTPUT_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=2
    int i, j;
    const int factor = INPUT_SIZE / OUTPUT_SIZE;
    
    for (i = 0; i < OUTPUT_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        float sum = 0;
        for (j = 0; j < factor; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
            sum += input[i * factor + j];
        }
        output[i] = sum / factor;
    }
}

// Top function name: sample_rate_conversion
