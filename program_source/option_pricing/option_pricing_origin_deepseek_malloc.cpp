#include <cmath>

#define N 1024

void option_pricing(double S[N], double K[N], double T[N], double r, double sigma, double option_price[N]) {
    double* s = new double[N];
    double* k = new double[N];
    double* t = new double[N];
    double* op = new double[N];

    for (int i = 0; i < N; ++i) {
        s[i] = S[i];
        k[i] = K[i];
        t[i] = T[i];
    }

    const double pi = 3.14159265358979323846;
    for (int i = 0; i < N; ++i) {
        double d1 = (std::log(s[i] / k[i]) + (r + 0.5 * sigma * sigma) * t[i]) / (sigma * std::sqrt(t[i]));
        double d2 = d1 - sigma * std::sqrt(t[i]);
        double Nd1 = 0.5 * (1.0 + std::erf(d1 / std::sqrt(2.0)));
        double Nd2 = 0.5 * (1.0 + std::erf(d2 / std::sqrt(2.0)));
        op[i] = s[i] * Nd1 - k[i] * std::exp(-r * t[i]) * Nd2;
    }

    for (int i = 0; i < N; ++i) {
        option_price[i] = op[i];
    }

    delete[] s;
    delete[] k;
    delete[] t;
    delete[] op;
}
