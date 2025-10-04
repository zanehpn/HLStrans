// MALLOC_VARIANT
#include <cmath>
#include <cstdint>

#define ARRAY_SIZE 1024

void audio_compression(float input[ARRAY_SIZE], float output[ARRAY_SIZE]) {

    const float quantization_step = 0.1f;
    const float dequantization_step = 0.1f;
    const float threshold = 0.5f;

    float* in_dyn = new float[ARRAY_SIZE];
    float* tmp_dyn = new float[ARRAY_SIZE];
    float* out_dyn = new float[ARRAY_SIZE];

    // Copy input to dynamic buffer
    for (int i = 0; i < ARRAY_SIZE; i++) {
        in_dyn[i] = input[i];
    }

    // Quantization into temporary dynamic buffer
    for (int i = 0; i < ARRAY_SIZE; i++) {
        if (std::abs(in_dyn[i]) > threshold) {
            tmp_dyn[i] = std::round(in_dyn[i] / quantization_step) * quantization_step;
        } else {
            tmp_dyn[i] = 0.0f;
        }
    }

    // Dequantization into output dynamic buffer
    for (int i = 0; i < ARRAY_SIZE; i++) {
        if (tmp_dyn[i] != 0.0f) {
            out_dyn[i] = tmp_dyn[i] * dequantization_step;
        } else {
            out_dyn[i] = 0.0f;
        }
    }

    // Copy back to provided output
    for (int i = 0; i < ARRAY_SIZE; i++) {
        output[i] = out_dyn[i];
    }

    delete[] in_dyn;
    delete[] tmp_dyn;
    delete[] out_dyn;
}

// Top function name: audio_compression
