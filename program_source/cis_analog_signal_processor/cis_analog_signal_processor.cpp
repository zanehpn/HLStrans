// Converted from cis_analog_signal_processor.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: cis_analog_signal_processor.cpp ----
#include <cmath>

#define ARRAY_SIZE 1024

void cis_analog_signal_processor(float input_signal[ARRAY_SIZE], float output_signal[ARRAY_SIZE], float gain, float offset) {
#pragma HLS ARRAY_PARTITION variable=output_signal type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input_signal type=cyclic dim=1 factor=1
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        // Apply gain and offset
        float processed_signal = input_signal[i] * gain + offset;
        
        // Apply a simple non-linear transformation
        if (processed_signal > 0) {
            processed_signal = std::log(1 + processed_signal);
        } else {
            processed_signal = -std::log(1 - processed_signal);
        }
        
        // Store the processed signal
        output_signal[i] = processed_signal;
    }
}

// Top function name: cis_analog_signal_processor
