// MALLOC_VARIANT

#include <cmath>

#define N 1024

void carradio_signal_processor(float input_signal[N], float output_signal[N], float gain, float offset) {
    // Allocate dynamic buffers
    float* in_buf = new float[N];
    float* out_buf = new float[N];

    // Copy input to dynamic buffer
    for (int i = 0; i < N; i++) {
        in_buf[i] = input_signal[i];
    }

    // Process using dynamic buffers
    for (int i = 0; i < N; i++) {
        float amplified_signal = in_buf[i] * gain;
        float shifted_signal = amplified_signal + offset;
        out_buf[i] = shifted_signal * shifted_signal;
    }

    // Copy results back to output
    for (int i = 0; i < N; i++) {
        output_signal[i] = out_buf[i];
    }

    // Free dynamic buffers
    delete[] in_buf;
    delete[] out_buf;
}
