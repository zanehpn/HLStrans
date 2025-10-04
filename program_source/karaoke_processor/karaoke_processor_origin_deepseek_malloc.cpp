// MALLOC_VARIANT

#include <cmath>

#define SIZE 1024

void karaoke_processor(float input_audio[SIZE], float output_audio[SIZE], float vocal_gain, float music_gain) {
    float* input_dyn = new float[SIZE];
    float* output_dyn = new float[SIZE];

    // Copy input to dynamic buffer
    for (int i = 0; i < SIZE; i++) {
        input_dyn[i] = input_audio[i];
    }

    // Compute using dynamic buffers
    for (int i = 0; i < SIZE; i++) {
        float vocal = input_dyn[i] * vocal_gain;
        float music = input_dyn[i] * music_gain;
        output_dyn[i] = vocal + music;
    }

    // Copy result back to output
    for (int i = 0; i < SIZE; i++) {
        output_audio[i] = output_dyn[i];
    }

    delete[] input_dyn;
    delete[] output_dyn;
}
