// trisolv_tb.cpp
#include <iostream>
#include <cmath>
#include <cstdlib>
#include <ctime>
#include <iomanip>
#include <cstring>

// Declare your trisolv function
extern void trisolv(double L[40][40], double x[40], double b[40]);

// Naïve forward‐substitution reference implementation
void forward_solve_ref(double L[40][40], double b[40], double x_ref[40]) {
    const int n = 40;
    for (int i = 0; i < n; ++i) {
        double sum = b[i];
        for (int j = 0; j < i; ++j) {
            sum -= L[i][j] * x_ref[j];
        }
        x_ref[i] = sum / L[i][i];
    }
}

int main() {
    std::srand((unsigned)std::time(nullptr));

    const int n = 40;
    double L[40][40];
    double b[40], x[40], x_ref[40];

    // 1) Build a random lower‐triangular L with diagonal elements >= 0.1
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            if (j > i) {
                L[i][j] = 0.0;
            } else if (i == j) {
                // Diagonal large enough to avoid division by zero
                L[i][j] = 0.1 + (std::rand() % 1000) / 1000.0;
            } else {
                // Random lower‐triangular entry
                L[i][j] = (std::rand() % 2000 - 1000) / 100.0;  // [-10,10)
            }
        }
    }

    // 2) Generate random b
    for (int i = 0; i < n; ++i) {
        b[i] = (std::rand() % 2000 - 1000) / 100.0;  // [-10,10)
        x[i] = 0.0;
        x_ref[i] = 0.0;
    }

    // 3) Compute reference solution
    forward_solve_ref(L, b, x_ref);

    // 4) Call trisolv (DUT)
    trisolv(L, x, b);

    // 5) Compare with reference
    const double tol = 1e-6;
    bool pass = true;
    int err_idx = -1;
    for (int i = 0; i < n; ++i) {
        if (std::fabs(x[i] - x_ref[i]) > tol) {
            pass = false;
            err_idx = i;
            break;
        }
    }

    if (pass) {
        std::cout << "PASS\n";
        return 0;
    } else {
        std::cout << std::fixed << std::setprecision(8);
        std::cout << "FAIL at index " << err_idx
                  << ": expected x[" << err_idx << "]=" << x_ref[err_idx]
                  << ", got " << x[err_idx]
                  << ", diff=" << std::fabs(x[err_idx] - x_ref[err_idx])
                  << "\n";
        return 1;
    }
}
