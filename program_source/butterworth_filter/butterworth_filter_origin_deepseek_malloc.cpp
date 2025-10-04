// ---- MALLOC_VARIANT: butterworth_filter.cpp ----
#include <cmath>
#include <cstdint>

#define N 1024

void butterworth_filter(const float input[N], float output[N], const float a[3], const float b[3]) {

    float* w = new float[3];
    w[0] = 0.0f;
    w[1] = 0.0f;
    w[2] = 0.0f;

    for (int i = 0; i < N; i++) {
        float new_w = input[i] - a[1] * w[1] - a[2] * w[2];
        output[i] = b[0] * new_w + b[1] * w[1] + b[2] * w[2];
        w[2] = w[1];
        w[1] = new_w;
    }

    delete[] w;
}
