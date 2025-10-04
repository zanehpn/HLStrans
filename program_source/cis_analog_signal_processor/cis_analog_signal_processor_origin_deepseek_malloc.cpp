// MALLOC_VARIANT

#include <cmath>

#define ARRAY_SIZE 1024

void cis_analog_signal_processor(float input_signal[ARRAY_SIZE], float output_signal[ARRAY_SIZE], float gain, float offset) {
    // Use dynamic allocation for a working buffer
    float* tmp_output = new float[ARRAY_SIZE];

    for (int i = 0; i < ARRAY_SIZE; i++) {
        float processed_signal = input_signal[i] * gain + offset;

        if (processed_signal > 0) {
            processed_signal = std::log(1 + processed_signal);
        } else {
            processed_signal = -std::log(1 - processed_signal);
        }

        tmp_output[i] = processed_signal;
    }

    // Copy results to the provided output array
    for (int i = 0; i < ARRAY_SIZE; i++) {
        output_signal[i] = tmp_output[i];
    }

    delete[] tmp_output;
}
