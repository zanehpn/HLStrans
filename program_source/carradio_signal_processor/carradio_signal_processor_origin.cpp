// Converted from carradio_signal_processor_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: carradio_signal_processor.cpp ----
#include <cmath>

#define N 1024

void carradio_signal_processor(float input_signal[N], float output_signal[N], float gain, float offset) {

    for (int i = 0; i < N; i++) {

        // Apply gain
        float amplified_signal = input_signal[i] * gain;

        // Apply offset
        float shifted_signal = amplified_signal + offset;

        // Apply a simple non-linear transformation (e.g., squaring)
        float processed_signal = shifted_signal * shifted_signal;

        // Store the result
        output_signal[i] = processed_signal;
    }
}

// Top function name: carradio_signal_processor
