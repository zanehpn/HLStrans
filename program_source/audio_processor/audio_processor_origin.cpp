// Converted from audio_processor_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: audio_processor.cpp ----
#include <cmath>

#define N 1024

void audio_processor(float input[N], float output[N], float gain, float threshold) {

    for (int i = 0; i < N; i++) {

        // Apply gain
        float amplified = input[i] * gain;

        // Apply threshold
        if (amplified > threshold) {
            output[i] = threshold;
        } else if (amplified < -threshold) {
            output[i] = -threshold;
        } else {
            output[i] = amplified;
        }
    }
}

// Top function name: audio_processor
