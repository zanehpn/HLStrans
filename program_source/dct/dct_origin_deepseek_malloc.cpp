#include <cmath>
#include <cstdint>

#define N 1024

void dct(int16_t input[N], int16_t output[N]) {
    const double PI = 3.14159265358979323846;
    double factor = std::sqrt(2.0 / N);

    // Dynamic copies of input and output
    int16_t* in = new int16_t[N];
    int16_t* out_temp = new int16_t[N];

    for (int j = 0; j < N; ++j) {
        in[j] = input[j];
    }

    for (int i = 0; i < N; i++) {
        double sum = 0.0;
        for (int j = 0; j < N; j++) {
            sum += in[j] * std::cos(PI * (j + 0.5) * i / N);
        }
        if (i == 0) {
            out_temp[i] = (int16_t)(sum * std::sqrt(1.0 / N));
        } else {
            out_temp[i] = (int16_t)(sum * factor);
        }
    }

    for (int i = 0; i < N; ++i) {
        output[i] = out_temp[i];
    }

    delete[] in;
    delete[] out_temp;
}
