// MALLOC_VARIANT
#include <stdint.h>

#define N 1024

void branch_prediction(int32_t input[N], int32_t output[N]) {
    int32_t* in = new int32_t[N];
    int32_t* out = new int32_t[N];

    for (int i = 0; i < N; ++i) {
        in[i] = input[i];
    }

    int32_t threshold = 500;
    for (int i = 0; i < N; ++i) {
        if (in[i] > threshold) {
            out[i] = in[i] * 2;
        } else {
            out[i] = in[i] / 2;
        }
    }

    for (int i = 0; i < N; ++i) {
        output[i] = out[i];
    }

    delete[] in;
    delete[] out;
}
