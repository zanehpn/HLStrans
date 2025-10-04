// Converted from semiconductor_signal_processor_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: semiconductor_signal_processor.cpp ----
#include <ap_fixed.h>

#define ARRAY_SIZE 1024

typedef ap_fixed<16, 8> fixed_point_t;

void semiconductor_signal_processor(fixed_point_t input_signal[ARRAY_SIZE], fixed_point_t output_signal[ARRAY_SIZE]) {

    fixed_point_t filter_coefficients[5] = {0.1, 0.15, 0.5, 0.15, 0.1};
    fixed_point_t temp_signal[ARRAY_SIZE + 4] = {0};

    // Extend the input signal with zeros at the beginning and end
    for (int i = 0; i < ARRAY_SIZE; i++) {

        temp_signal[i + 2] = input_signal[i];
    }

    // Apply the filter
    for (int i = 0; i < ARRAY_SIZE; i++) {

        fixed_point_t result = 0;
        for (int j = 0; j < 5; j++) {

            result += temp_signal[i + j] * filter_coefficients[j];
        }
        output_signal[i] = result;
    }
}

// Top function name: semiconductor_signal_processor
