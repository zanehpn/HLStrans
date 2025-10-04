// MALLOC_VARIANT
#include <cmath>
#include <cstdint>

#define N 1024

void pitch_detection(float signal[N], float pitch[N]) {

    float* autocorrelation = new float[N];
    for (int i = 0; i < N; ++i) {
        autocorrelation[i] = 0.0f;
    }

    // Compute autocorrelation
    for (int lag = 0; lag < N; lag++) {

        float sum = 0;
        for (int i = 0; i < N - lag; i++) {

            sum += signal[i] * signal[i + lag];
        }
        autocorrelation[lag] = sum;
    }

    // Find the peak in the autocorrelation
    int peak_index = 0;
    float peak_value = 0;
    for (int i = 1; i < N; i++) {

        if (autocorrelation[i] > peak_value) {
            peak_value = autocorrelation[i];
            peak_index = i;
        }
    }

    // Calculate pitch
    for (int i = 0; i < N; i++) {

        pitch[i] = (peak_index != 0) ? (44100.0f / peak_index) : 0;
    }

    delete[] autocorrelation;
}
