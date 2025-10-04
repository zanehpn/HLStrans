// MALLOC_VARIANT

#include <cmath>

#define N 1024

void echo_cancellation(float input_signal[N], float echo_signal[N], float output_signal[N], float filter_coeff[N]) {
    float* input_signal_dyn = new float[N];
    float* echo_signal_dyn = new float[N];
    float* output_signal_dyn = new float[N];
    float* filter_coeff_dyn = new float[N];

    for (int i = 0; i < N; i++) {
        input_signal_dyn[i] = input_signal[i];
        echo_signal_dyn[i] = echo_signal[i];
        filter_coeff_dyn[i] = filter_coeff[i];
    }

    for (int i = 0; i < N; i++) {
        float estimated_echo = 0.0f;
        for (int j = 0; j < N; j++) {
            if (i - j >= 0) {
                estimated_echo += filter_coeff_dyn[j] * input_signal_dyn[i - j];
            }
        }
        output_signal_dyn[i] = input_signal_dyn[i] - estimated_echo + echo_signal_dyn[i];
    }

    for (int i = 0; i < N; i++) {
        output_signal[i] = output_signal_dyn[i];
    }

    delete[] input_signal_dyn;
    delete[] echo_signal_dyn;
    delete[] output_signal_dyn;
    delete[] filter_coeff_dyn;
}
