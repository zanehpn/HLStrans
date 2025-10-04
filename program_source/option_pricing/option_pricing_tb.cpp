// contents of option_pricing_tb.cpp
#include <iostream>
#include <cmath>
#include <cassert>

// Include the source to access option_pricing() and N
#include "option_pricing.cpp"

// Helper: Black-Scholes call price (same formula used in option_pricing)
static double black_scholes_call(double S, double K, double T, double r, double sigma) {
    double d1 = (std::log(S / K) + (r + 0.5 * sigma * sigma) * T) / (sigma * std::sqrt(T));
    double d2 = d1 - sigma * std::sqrt(T);
    double Nd1 = 0.5 * (1.0 + std::erf(d1 / std::sqrt(2.0)));
    double Nd2 = 0.5 * (1.0 + std::erf(d2 / std::sqrt(2.0)));
    return S * Nd1 - K * std::exp(-r * T) * Nd2;
}

// Helper: numeric comparison
static bool nearly_equal(double a, double b, double eps = 1e-10) {
    return std::fabs(a - b) <= eps * (1.0 + std::fabs(a) + std::fabs(b));
}

int main() {
    // Common arrays reused across tests
    static double S[N];
    static double K[N];
    static double T[N];
    static double price[N];

    // -------- Test 1: Uniform typical inputs (S=100, K=100, T=1, r=0.05, sigma=0.2) --------
    // Expect: Prices close to known Black-Scholes value (~10.4506) for all entries.
    {
        double r = 0.05;
        double sigma = 0.2;
        for (int i = 0; i < N; ++i) {
            S[i] = 100.0;
            K[i] = 100.0;
            T[i] = 1.0;
        }
        option_pricing(S, K, T, r, sigma, price);

        double expected = black_scholes_call(100.0, 100.0, 1.0, r, sigma);
        for (int i = 0; i < N; ++i) {
            assert(nearly_equal(price[i], expected, 1e-10));
            assert(std::isfinite(price[i]));
            assert(price[i] > 0.0 && price[i] < S[i]); // Call price bounds
        }

        std::cout << "Test 1 passed. Sample prices:\n";
        for (int i = 0; i < 5; ++i) {
            std::cout << "  price[" << i << "] = " << price[i] << " (expected ~" << expected << ")\n";
        }
    }

    // -------- Test 2: Monotonicity in underlying S --------
    // Construct S = {80,90,100,110,120} repeating, fixed K=100, T=1
    // Expect: price increases with S within each group.
    {
        double r = 0.05;
        double sigma = 0.2;
        const double S_values[5] = {80.0, 90.0, 100.0, 110.0, 120.0};
        for (int i = 0; i < N; ++i) {
            S[i] = S_values[i % 5];
            K[i] = 100.0;
            T[i] = 1.0;
        }
        option_pricing(S, K, T, r, sigma, price);

        for (int base = 0; base + 4 < N; base += 5) {
            assert(price[base + 0] < price[base + 1]);
            assert(price[base + 1] < price[base + 2]);
            assert(price[base + 2] < price[base + 3]);
            assert(price[base + 3] < price[base + 4]);
        }

        std::cout << "Test 2 passed. Sample monotonicity in S (first group):\n";
        for (int i = 0; i < 5; ++i) {
            std::cout << "  S=" << S[i] << " -> price=" << price[i] << "\n";
        }
    }

    // -------- Test 3: Monotonicity in maturity T --------
    // Construct T = {0.25, 0.5, 1.0, 2.0} repeating, fixed S=100, K=100
    // Expect: price increases with T within each group (non-dividend call, r>=0, sigma>0).
    {
        double r = 0.05;
        double sigma = 0.2;
        const double T_values[4] = {0.25, 0.5, 1.0, 2.0};
        for (int i = 0; i < N; ++i) {
            S[i] = 100.0;
            K[i] = 100.0;
            T[i] = T_values[i % 4];
        }
        option_pricing(S, K, T, r, sigma, price);

        for (int base = 0; base + 3 < N; base += 4) {
            assert(price[base + 0] < price[base + 1]);
            assert(price[base + 1] < price[base + 2]);
            assert(price[base + 2] < price[base + 3]);
        }

        std::cout << "Test 3 passed. Sample monotonicity in T (first group):\n";
        for (int i = 0; i < 4; ++i) {
            std::cout << "  T=" << T[i] << " -> price=" << price[i] << "\n";
        }
    }

    // -------- Test 4: High volatility sanity --------
    // Use sigma=1.0; Expect: prices are finite and bounded between 0 and S.
    {
        double r = 0.05;
        double sigma = 1.0;
        for (int i = 0; i < N; ++i) {
            S[i] = 100.0;
            K[i] = 100.0;
            T[i] = 1.0;
        }
        option_pricing(S, K, T, r, sigma, price);

        for (int i = 0; i < N; ++i) {
            assert(std::isfinite(price[i]));
            assert(price[i] > 0.0);
            assert(price[i] < S[i]);
        }

        std::cout << "Test 4 passed. Sample high-vol prices:\n";
        for (int i = 0; i < 5; ++i) {
            std::cout << "  price[" << i << "] = " << price[i] << "\n";
        }
    }

    std::cout << "All tests passed.\n";
    return 0;
}