// MALLOC_VARIANT
#include <cmath>

#define N 1024

void audio_processor(float input[N], float output[N], float gain, float threshold) {
    float* in_buf = new float[N];
    float* out_buf = new float[N];

    for (int i = 0; i < N; ++i) {
        in_buf[i] = input[i];
    }

    for (int i = 0; i < N; ++i) {
        float amplified = in_buf[i] * gain;
        if (amplified > threshold) {
            out_buf[i] = threshold;
        } else if (amplified < -threshold) {
            out_buf[i] = -threshold;
        } else {
            out_buf[i] = amplified;
        }
    }

    for (int i = 0; i < N; ++i) {
        output[i] = out_buf[i];
    }

    delete[] in_buf;
    delete[] out_buf;
}
