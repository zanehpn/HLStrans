// ---- file: option_pricing.cpp ----
#include <cmath>

#define N 1024

void option_pricing(double S[N], double K[N], double T[N], double r, double sigma, double option_price[N]) {
#pragma HLS ARRAY_PARTITION variable=option_price type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=T type=cyclic dim=1 factor=4
#pragma HLS ARRAY_PARTITION variable=K type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=S type=cyclic dim=1 factor=1
    const double pi = 3.14159265358979323846;
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        double d1 = (log(S[i] / K[i]) + (r + 0.5 * sigma * sigma) * T[i]) / (sigma * sqrt(T[i]));
        double d2 = d1 - sigma * sqrt(T[i]);
        double Nd1 = 0.5 * (1.0 + erf(d1 / sqrt(2.0)));
        double Nd2 = 0.5 * (1.0 + erf(d2 / sqrt(2.0)));
        option_price[i] = S[i] * Nd1 - K[i] * exp(-r * T[i]) * Nd2;
    }
}

// Top function name: option_pricing
