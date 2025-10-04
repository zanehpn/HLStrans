// Converted from neuron_chip_network_processor.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: neuron_chip_network_processor.cpp ----
#include <ap_fixed.h>

#define INPUT_SIZE 1024
#define OUTPUT_SIZE 1024
#define WEIGHT_SIZE 1024

typedef ap_fixed<16, 8> fixed_point_t;

void neuron_chip_network_processor(fixed_point_t input[INPUT_SIZE], 
                                   fixed_point_t weights[WEIGHT_SIZE], 
                                   fixed_point_t bias, 
                                   fixed_point_t output[OUTPUT_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=weights type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    for (int i = 0; i < OUTPUT_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        fixed_point_t sum = 0;
        for (int j = 0; j < INPUT_SIZE; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            sum += input[j] * weights[j];
        }
        output[i] = sum + bias;
    }
}
// Top function name: neuron_chip_network_processor
