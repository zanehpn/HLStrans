// MALLOC_VARIANT

#include <cmath>
#include <algorithm>

#define ARRAY_SIZE 1024

void dynamic_range_compression(float input[ARRAY_SIZE], float output[ARRAY_SIZE], float threshold, float compression_ratio) {
    float* in_buf = new float[ARRAY_SIZE];
    float* out_buf = new float[ARRAY_SIZE];

    // Copy input to dynamically allocated buffer
    for (int i = 0; i < ARRAY_SIZE; i++) {
        in_buf[i] = input[i];
    }

    // Process using the dynamic buffers
    for (int i = 0; i < ARRAY_SIZE; i++) {
        float val = in_buf[i];
        if (val > threshold) {
            out_buf[i] = threshold + (val - threshold) / compression_ratio;
        } else if (val < -threshold) {
            out_buf[i] = -threshold + (val + threshold) / compression_ratio;
        } else {
            out_buf[i] = val;
        }
    }

    // Copy results back to output
    for (int i = 0; i < ARRAY_SIZE; i++) {
        output[i] = out_buf[i];
    }

    delete[] in_buf;
    delete[] out_buf;
}
