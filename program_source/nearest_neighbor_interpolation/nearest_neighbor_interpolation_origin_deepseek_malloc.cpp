// MALLOC_VARIANT

#include <cmath>

#define INPUT_SIZE 1024
#define OUTPUT_SIZE 2048

void nearest_neighbor_interpolation(float input[INPUT_SIZE], float output[OUTPUT_SIZE]) {
    float* input_dyn = new float[INPUT_SIZE];
    float* output_dyn = new float[OUTPUT_SIZE];

    // Copy input to dynamically allocated buffer
    for (int i = 0; i < INPUT_SIZE; ++i) {
        input_dyn[i] = input[i];
    }

    int scale_factor = OUTPUT_SIZE / INPUT_SIZE;

    // Compute using dynamic buffers
    for (int i = 0; i < OUTPUT_SIZE; ++i) {
        int nearest_index = i / scale_factor;
        output_dyn[i] = input_dyn[nearest_index];
    }

    // Copy result back to output
    for (int i = 0; i < OUTPUT_SIZE; ++i) {
        output[i] = output_dyn[i];
    }

    delete[] input_dyn;
    delete[] output_dyn;
}
