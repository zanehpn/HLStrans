// Converted from black_scholes_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: black_scholes.cpp ----
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
    for (int i = 0; i < ARRAY_SIZE; i++) {

        double d1 = (log(S[i] / X[i]) + (r + 0.5 * v * v) * T[i]) / (v * sqrt(T[i]));
        double d2 = d1 - v * sqrt(T[i]);

        double cdf_d1 = 0.5 * (1.0 + erf(d1 / sqrt(2.0)));
        double cdf_d2 = 0.5 * (1.0 + erf(d2 / sqrt(2.0)));

        call[i] = S[i] * cdf_d1 - X[i] * exp(-r * T[i]) * cdf_d2;
        put[i] = X[i] * exp(-r * T[i]) * (1.0 - cdf_d2) - S[i] * (1.0 - cdf_d1);
    }
}

// Top function name: black_scholes
