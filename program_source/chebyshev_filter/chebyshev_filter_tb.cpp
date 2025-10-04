// contents of chebyshev_filter_tb.cpp
#include <iostream>
#include <vector>
#include <cmath>
#include <cassert>
#include <iomanip>

// Function under test is implemented in chebyshev_filter.cpp (compiled separately).
// We declare its prototype here for linkage.
void chebyshev_filter(double input[], double output[], double coeffs[5]);

static bool almost_equal(double a, double b, double tol = 1e-9) {
    return std::fabs(a - b) <= tol;
}

int main() {
    constexpr int N = 1024;
    std::cout << std::fixed << std::setprecision(8);

    // Test 1: Identity pass-through (b0=1, b1=0, b2=0, a1=0, a2=0)
    // Expect output[i] == input[i] for all i
    {
        std::vector<double> input(N), output(N);
        double coeffs[5] = {1.0, 0.0, 0.0, 0.0, 0.0};

        // Create a sinusoidal input to test a variety of values
        const double pi = 3.14159265358979323846;
        for (int i = 0; i < N; ++i) {
            input[i] = std::sin(2.0 * pi * i / 64.0);
        }

        chebyshev_filter(input.data(), output.data(), coeffs);

        for (int i = 0; i < N; ++i) {
            assert(almost_equal(output[i], input[i]));
        }

        std::cout << "Test 1 (Identity) PASS. First 8 samples:\n";
        for (int i = 0; i < 8; ++i) {
            std::cout << "  i=" << i << " in=" << input[i] << " out=" << output[i] << "\n";
        }
    }

    // Test 2: Simple FIR: y[n] = x[n] + x[n-1] (b0=1, b1=1, b2=0, a1=0, a2=0)
    // Expect output[0] = input[0], and for i>=1: output[i] = input[i] + input[i-1]
    {
        std::vector<double> input(N), output(N);
        double coeffs[5] = {1.0, 1.0, 0.0, 0.0, 0.0};

        // Use a simple ramp to make expected values easy to compute and verify
        for (int i = 0; i < N; ++i) {
            input[i] = static_cast<double>(i + 1); // 1,2,3,...
        }

        chebyshev_filter(input.data(), output.data(), coeffs);

        for (int i = 0; i < N; ++i) {
            double expected = input[i] + (i > 0 ? input[i - 1] : 0.0);
            assert(almost_equal(output[i], expected));
        }

        std::cout << "Test 2 (Simple FIR b0=1,b1=1) PASS. First 8 samples (in, expected, out):\n";
        for (int i = 0; i < 8; ++i) {
            double expected = input[i] + (i > 0 ? input[i - 1] : 0.0);
            std::cout << "  i=" << i
                      << " in=" << input[i]
                      << " expected=" << expected
                      << " out=" << output[i] << "\n";
        }
    }

    // Test 3: IIR impulse response: y[n] = x[n] + 0.5*y[n-1]
    // Coeff mapping in code: y = b0*x + b1*x[n-1] + b2*x[n-2] - a1*y[n-1] - a2*y[n-2]
    // To get +0.5*y[n-1], set a1 = -0.5, a2 = 0
    // With input = delta[n], expected y = {1, 0.5, 0.25, 0.125, ...}
    {
        std::vector<double> input(N, 0.0), output(N, 0.0);
        double coeffs[5] = {1.0, 0.0, 0.0, -0.5, 0.0}; // b0=1, a1=-0.5
        input[0] = 1.0; // unit impulse

        chebyshev_filter(input.data(), output.data(), coeffs);

        // Check first 20 samples match geometric decay 0.5^n
        for (int i = 0; i < 20; ++i) {
            double expected = std::pow(0.5, i);
            assert(almost_equal(output[i], expected, 1e-12));
        }

        std::cout << "Test 3 (IIR impulse, +0.5*y[n-1]) PASS. First 10 samples (expected, out):\n";
        for (int i = 0; i < 10; ++i) {
            double expected = std::pow(0.5, i);
            std::cout << "  i=" << i << " expected=" << expected << " out=" << output[i] << "\n";
        }
    }

    // Test 4: Zero input with arbitrary coefficients should yield all-zero output
    // Because initial conditions are zero and input is zero, recurrence remains zero
    {
        std::vector<double> input(N, 0.0), output(N, 1.0); // prefill output with non-zero to ensure overwrite
        double coeffs[5] = {0.3, -0.1, 0.05, 0.8, -0.2};

        chebyshev_filter(input.data(), output.data(), coeffs);

        for (int i = 0; i < N; ++i) {
            assert(almost_equal(output[i], 0.0));
        }

        std::cout << "Test 4 (Zero input -> Zero output) PASS. First 8 samples:\n";
        for (int i = 0; i < 8; ++i) {
            std::cout << "  i=" << i << " out=" << output[i] << "\n";
        }
    }

    std::cout << "All tests passed.\n";
    return 0;
}