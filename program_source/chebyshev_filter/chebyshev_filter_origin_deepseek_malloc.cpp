#include <algorithm>

#define N 1024

void chebyshev_filter(double input[N], double output[N], double coeffs[5]) {
    double* x = new double[N + 4];
    double* y = new double[N + 4];

    std::fill(x, x + N + 4, 0.0);
    std::fill(y, y + N + 4, 0.0);

    // Copy input to extended array
    for (int i = 0; i < N; i++) {
        x[i + 2] = input[i];
    }

    // Apply Chebyshev filter
    for (int i = 2; i < N + 2; i++) {
        y[i] = coeffs[0] * x[i] + coeffs[1] * x[i - 1] + coeffs[2] * x[i - 2]
             - coeffs[3] * y[i - 1] - coeffs[4] * y[i - 2];
    }

    // Copy result to output array
    for (int i = 0; i < N; i++) {
        output[i] = y[i + 2];
    }

    delete[] x;
    delete[] y;
}
