// ---- file: mixed_signal_processor.cpp ----

#define ARRAY_SIZE 1024

using fixed_point_t = float;

void mixed_signal_processor(fixed_point_t input_signal[ARRAY_SIZE], fixed_point_t output_signal[ARRAY_SIZE]) {

    fixed_point_t gain = 1.5f;
    fixed_point_t offset = 0.25f;

    for (int i = 0; i < ARRAY_SIZE; i++) {

        fixed_point_t amplified_signal = input_signal[i] * gain;
        fixed_point_t biased_signal = amplified_signal + offset;
        output_signal[i] = biased_signal;
    }
}

// Top function name: mixed_signal_processor
