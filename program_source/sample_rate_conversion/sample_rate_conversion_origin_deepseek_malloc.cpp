#include <iostream>

#define INPUT_SIZE 1024
#define OUTPUT_SIZE 512

void sample_rate_conversion(const float input[INPUT_SIZE], float output[OUTPUT_SIZE]) {
    const int factor = INPUT_SIZE / OUTPUT_SIZE;

    // Dynamic copies of input and output buffers
    float* input_dyn = new float[INPUT_SIZE];
    float* output_dyn = new float[OUTPUT_SIZE];

    for (int idx = 0; idx < INPUT_SIZE; ++idx) {
        input_dyn[idx] = input[idx];
    }

    for (int i = 0; i < OUTPUT_SIZE; ++i) {
        float sum = 0.0f;
        int base = i * factor;
        for (int j = 0; j < factor; ++j) {
            sum += input_dyn[base + j];
        }
        output_dyn[i] = sum / factor;
    }

    for (int i = 0; i < OUTPUT_SIZE; ++i) {
        output[i] = output_dyn[i];
    }

    delete[] input_dyn;
    delete[] output_dyn;
}
