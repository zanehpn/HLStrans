// MALLOC_VARIANT

#include <cmath>

#define ARRAY_SIZE 1024

void black_scholes(
    double S[ARRAY_SIZE], // Stock price
    double X[ARRAY_SIZE], // Strike price
    double T[ARRAY_SIZE], // Time to maturity
    double r,             // Risk-free rate
    double v,             // Volatility
    double call[ARRAY_SIZE], // Call option price
    double put[ARRAY_SIZE]   // Put option price
) {
    const double PI = 3.14159265358979323846;

    // Allocate dynamic buffers
    double* s_buf = new double[ARRAY_SIZE];
    double* x_buf = new double[ARRAY_SIZE];
    double* t_buf = new double[ARRAY_SIZE];
    double* call_buf = new double[ARRAY_SIZE];
    double* put_buf = new double[ARRAY_SIZE];

    // Copy inputs to dynamic buffers
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        s_buf[i] = S[i];
        x_buf[i] = X[i];
        t_buf[i] = T[i];
    }

    // Core computation using dynamic buffers
    for (int i = 0; i < ARRAY_SIZE; i++) {
        double sqrtT = sqrt(t_buf[i]);
        double d1 = (log(s_buf[i] / x_buf[i]) + (r + 0.5 * v * v) * t_buf[i]) / (v * sqrtT);
        double d2 = d1 - v * sqrtT;

        double cdf_d1 = 0.5 * (1.0 + erf(d1 / sqrt(2.0)));
        double cdf_d2 = 0.5 * (1.0 + erf(d2 / sqrt(2.0)));

        call_buf[i] = s_buf[i] * cdf_d1 - x_buf[i] * exp(-r * t_buf[i]) * cdf_d2;
        put_buf[i]  = x_buf[i] * exp(-r * t_buf[i]) * (1.0 - cdf_d2) - s_buf[i] * (1.0 - cdf_d1);
    }

    // Copy results back to outputs
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        call[i] = call_buf[i];
        put[i] = put_buf[i];
    }

    // Free dynamic buffers
    delete[] s_buf;
    delete[] x_buf;
    delete[] t_buf;
    delete[] call_buf;
    delete[] put_buf;
}
