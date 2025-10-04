// contents of black_scholes_tb.cpp
#include <iostream>
#include <iomanip>
#include <cmath>
#include <cassert>
#include <vector>
#include <algorithm>

// Include the source under test (no main() inside, so safe to include)
#include "black_scholes.cpp"

// Reference Black-Scholes computation for a single option (used to validate DUT)
static inline void bs_reference(double S, double X, double T, double r, double v, double &call, double &put) {
    const double sqrtT = std::sqrt(T);
    const double vsqrtT = v * sqrtT;
    const double d1 = (std::log(S / X) + (r + 0.5 * v * v) * T) / vsqrtT;
    const double d2 = d1 - vsqrtT;
    const double cdf_d1 = 0.5 * (1.0 + std::erf(d1 / std::sqrt(2.0)));
    const double cdf_d2 = 0.5 * (1.0 + std::erf(d2 / std::sqrt(2.0)));
    const double disc = std::exp(-r * T);
    call = S * cdf_d1 - X * disc * cdf_d2;
    put  = X * disc * (1.0 - cdf_d2) - S * (1.0 - cdf_d1);
}

static inline bool approx_equal(double a, double b, double tol_rel = 1e-9, double tol_abs = 1e-12) {
    double diff = std::abs(a - b);
    double scale = std::max({1.0, std::abs(a), std::abs(b)});
    return diff <= (tol_abs + tol_rel * scale);
}

// Test 1: Uniform inputs with known results (S=100, X=100, T=1, r=0.05, v=0.2)
// Expected call ~ 10.4506, put ~ 5.5735
bool test_uniform_known_values() {
    double S[ARRAY_SIZE], X[ARRAY_SIZE], T[ARRAY_SIZE];
    double call[ARRAY_SIZE], put[ARRAY_SIZE];

    const double r = 0.05;
    const double v = 0.2;

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        S[i] = 100.0;
        X[i] = 100.0;
        T[i] = 1.0;
        call[i] = 0.0;
        put[i] = 0.0;
    }

    black_scholes(S, X, T, r, v, call, put);

    // Compute reference once (same for all elements)
    double cref = 0.0, pref = 0.0;
    bs_reference(100.0, 100.0, 1.0, r, v, cref, pref);

    bool ok = true;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        if (!approx_equal(call[i], cref) || !approx_equal(put[i], pref)) {
            std::cerr << "Test 1 mismatch at i=" << i
                      << " call=" << call[i] << " cref=" << cref
                      << " put=" << put[i] << " pref=" << pref << "\n";
            ok = false;
            break;
        }
        // Put-Call parity: C - P = S - X*exp(-rT)
        double parity_lhs = call[i] - put[i];
        double parity_rhs = S[i] - X[i] * std::exp(-r * T[i]);
        if (!approx_equal(parity_lhs, parity_rhs)) {
            std::cerr << "Test 1 parity mismatch at i=" << i
                      << " lhs=" << parity_lhs << " rhs=" << parity_rhs << "\n";
            ok = false;
            break;
        }
    }

    // Print a representative sample
    std::cout << std::fixed << std::setprecision(6);
    std::cout << "[Test 1] Sample output: call=" << call[0] << " put=" << put[0] << "\n";
    return ok;
}

// Test 2: Varying inputs across the array to exercise a range of values
// - S in [50,150], X in [80,120], T in {0.25, 0.5, ..., 2.0}, r=0.03, v=0.35
bool test_varying_arrays_and_parity() {
    double S[ARRAY_SIZE], X[ARRAY_SIZE], T[ARRAY_SIZE];
    double call[ARRAY_SIZE], put[ARRAY_SIZE];

    const double r = 0.03;
    const double v = 0.35;

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        S[i] = 50.0 + static_cast<double>(i % 101);           // 50..150
        X[i] = 80.0 + static_cast<double>(i % 41);            // 80..120
        T[i] = 0.25 + 0.25 * static_cast<double>(i % 8);      // 0.25,0.5,...,2.0
        call[i] = 0.0;
        put[i] = 0.0;
    }

    black_scholes(S, X, T, r, v, call, put);

    bool ok = true;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        double cref = 0.0, pref = 0.0;
        bs_reference(S[i], X[i], T[i], r, v, cref, pref);

        if (!approx_equal(call[i], cref) || !approx_equal(put[i], pref)) {
            std::cerr << "Test 2 mismatch at i=" << i
                      << " call=" << call[i] << " cref=" << cref
                      << " put=" << put[i] << " pref=" << pref << "\n";
            ok = false;
            break;
        }

        // Check Put-Call parity for each element
        double parity_lhs = call[i] - put[i];
        double parity_rhs = S[i] - X[i] * std::exp(-r * T[i]);
        if (!approx_equal(parity_lhs, parity_rhs)) {
            std::cerr << "Test 2 parity mismatch at i=" << i
                      << " lhs=" << parity_lhs << " rhs=" << parity_rhs << "\n";
            ok = false;
            break;
        }
    }

    // Print a few sample outputs from various indices
    std::cout << std::fixed << std::setprecision(6);
    std::vector<int> samples = {0, 1, 2, 100, 500, 1023};
    std::cout << "[Test 2] Sample outputs:\n";
    for (int idx : samples) {
        std::cout << "  i=" << idx
                  << " S=" << S[idx] << " X=" << X[idx] << " T=" << T[idx]
                  << " call=" << call[idx] << " put=" << put[idx] << "\n";
    }

    return ok;
}

// Test 3: Low volatility and monotonicity with respect to S
// - Create repeating triplets S in {99, 100, 101}, X=100, T=0.5, r=0.0, v=0.01
// - Verify that call price increases with S within each triplet
bool test_monotonicity_low_vol() {
    double S[ARRAY_SIZE], X[ARRAY_SIZE], T[ARRAY_SIZE];
    double call[ARRAY_SIZE], put[ARRAY_SIZE];

    const double r = 0.0;
    const double v = 0.01;

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        int m = i % 3;
        S[i] = 100.0 + (m - 1); // 99, 100, 101 repeating
        X[i] = 100.0;
        T[i] = 0.5;
        call[i] = 0.0;
        put[i] = 0.0;
    }

    black_scholes(S, X, T, r, v, call, put);

    bool ok = true;
    // Check monotonicity within each triplet
    for (int i = 0; i < ARRAY_SIZE; i += 3) {
        if (i + 2 >= ARRAY_SIZE) break;
        if (!(call[i] <= call[i + 1] && call[i + 1] <= call[i + 2])) {
            std::cerr << "Test 3 monotonicity fail at triplet starting i=" << i
                      << " call[i]=" << call[i] << " call[i+1]=" << call[i + 1]
                      << " call[i+2]=" << call[i + 2] << "\n";
            ok = false;
            break;
        }
        // Also check parity holds
        for (int k = 0; k < 3 && (i + k) < ARRAY_SIZE; ++k) {
            double parity_lhs = call[i + k] - put[i + k];
            double parity_rhs = S[i + k] - X[i + k] * std::exp(-r * T[i + k]);
            if (!approx_equal(parity_lhs, parity_rhs)) {
                std::cerr << "Test 3 parity mismatch at i=" << (i + k)
                          << " lhs=" << parity_lhs << " rhs=" << parity_rhs << "\n";
                ok = false;
                break;
            }
        }
        if (!ok) break;
    }

    // Print a representative triplet
    std::cout << std::fixed << std::setprecision(6);
    std::cout << "[Test 3] Sample triplet (i=0,1,2):\n";
    for (int i = 0; i < 3; ++i) {
        std::cout << "  i=" << i << " S=" << S[i]
                  << " call=" << call[i] << " put=" << put[i] << "\n";
    }

    return ok;
}

int main() {
    std::cout << "Running Black-Scholes testbench...\n";

    bool ok1 = test_uniform_known_values();
    std::cout << (ok1 ? "[Test 1] PASS\n" : "[Test 1] FAIL\n");

    bool ok2 = test_varying_arrays_and_parity();
    std::cout << (ok2 ? "[Test 2] PASS\n" : "[Test 2] FAIL\n");

    bool ok3 = test_monotonicity_low_vol();
    std::cout << (ok3 ? "[Test 3] PASS\n" : "[Test 3] FAIL\n");

    bool all_ok = ok1 && ok2 && ok3;
    std::cout << (all_ok ? "ALL TESTS PASSED\n" : "SOME TESTS FAILED\n");

    return all_ok ? 0 : 1;
}