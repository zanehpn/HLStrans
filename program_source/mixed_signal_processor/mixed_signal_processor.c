// ---- file: mixed_signal_processor.cpp ----
#include <ap_fixed.h>

#define ARRAY_SIZE 1024

typedef ap_fixed<16, 8> fixed_point_t;

void mixed_signal_processor(fixed_point_t input_signal[ARRAY_SIZE], fixed_point_t output_signal[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output_signal type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input_signal type=cyclic dim=1 factor=1
    fixed_point_t gain = 1.5;
    fixed_point_t offset = 0.25;

    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        fixed_point_t amplified_signal = input_signal[i] * gain;
        fixed_point_t biased_signal = amplified_signal + offset;
        output_signal[i] = biased_signal;
    }
}

// Top function name: mixed_signal_processor
