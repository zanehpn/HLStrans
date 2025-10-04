// contents of speech_recognition_processor_tb.cpp
#include <iostream>
#include <vector>
#include <random>
#include <cmath>
#include <cassert>
#include <limits>
#include <iomanip>

// Ensure M_PI is available for platforms that don't expose it by default
#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif

// Include the DUT implementation to make this testbench standalone
#include "speech_recognition_processor.cpp"

// Helper: approximate equality check with combined relative/absolute tolerance
static bool approx_equal(double a, double b, double abs_tol = 1e-2, double rel_tol = 1e-5) {
    double diff = std::fabs(a - b);
    double scale = std::max(std::fabs(a), std::fabs(b));
    return diff <= std::max(abs_tol, rel_tol * scale);
}

// Helper: check if a number is finite
static bool is_finite(float x) {
    return std::isfinite(static_cast<double>(x));
}

int main() {
    std::cout << "Running speech_recognition_processor testbench..." << std::endl;

    // Test 1: All-zero input should yield all-zero output
    {
        std::vector<float> input(N, 0.0f);
        std::vector<float> output(N, NAN);

        speech_recognition_processor(input.data(), output.data());

        for (int i = 0; i < N; ++i) {
            // Expect exact zero; allow a tiny absolute tolerance just in case
            assert(approx_equal(output[i], 0.0, 1e-6, 0.0));
        }
        std::cout << "Test 1 (zero input) passed." << std::endl;
    }

    // Test 2: Constant input
    // For constant x, mfcc = log(1 + x) is constant.
    // DCT result becomes: dct[0] = N * log(1 + x), dct[i>0] ~ 0
    // Then:
    //   delta[0] = delta[1] = -(N * C) / 2, where C = log(1 + x)
    //   delta[2..] = 0, delta[N-1] = 0
    //   delta_delta[0] = delta_delta[1] = delta_delta[2] = +(N * C)/4, others 0
    // Final:
    //   out[0] = N*C*(1 - 1/2 + 1/4) = 3*N*C/4
    //   out[1] = 0 - N*C/2 + N*C/4 = -N*C/4
    //   out[2] = 0 + 0 + N*C/4 = +N*C/4
    //   out[i>=3] ~ 0
    {
        const float cval = 0.5f;
        const double C = std::log(1.0 + static_cast<double>(cval));
        const double expected0 = 0.75 * static_cast<double>(N) * C;
        const double expected1 = -0.25 * static_cast<double>(N) * C;
        const double expected2 = 0.25 * static_cast<double>(N) * C;

        std::vector<float> input(N, cval);
        std::vector<float> output(N, NAN);

        speech_recognition_processor(input.data(), output.data());

        // Check the first three entries against closed-form expectations
        assert(approx_equal(output[0], expected0, 1e-2, 1e-5));
        assert(approx_equal(output[1], expected1, 1e-2, 1e-5));
        assert(approx_equal(output[2], expected2, 1e-2, 1e-5));

        // Remaining entries should be near zero due to orthogonality
        for (int i = 3; i < N; ++i) {
            assert(approx_equal(output[i], 0.0, 1e-2, 0.0));
        }
        std::cout << "Test 2 (constant input) passed." << std::endl;
    }

    // Test 3: Random input (uniform in [0, 1])
    // This exercises the entire pipeline on a non-trivial input and checks sanity:
    // outputs should be finite (no NaN/Inf). We also print a few sample outputs.
    {
        std::mt19937 rng(12345);
        std::uniform_real_distribution<float> dist(0.0f, 1.0f);

        std::vector<float> input(N);
        std::vector<float> output(N, NAN);

        for (int i = 0; i < N; ++i) {
            input[i] = dist(rng);
        }

        speech_recognition_processor(input.data(), output.data());

        for (int i = 0; i < N; ++i) {
            assert(is_finite(output[i]));
        }

        std::cout << "Test 3 (random input) first 10 outputs:" << std::endl;
        std::cout << std::fixed << std::setprecision(6);
        for (int i = 0; i < 10 && i < N; ++i) {
            std::cout << "  out[" << i << "] = " << output[i] << std::endl;
        }
        std::cout << "Test 3 (random input) passed." << std::endl;
    }

    // Test 4: Impulse input (single non-zero at index 0)
    // This is a simple edge-case; we don't assert exact values here, but ensure finiteness
    // and non-trivial response (not all zeros).
    {
        std::vector<float> input(N, 0.0f);
        std::vector<float> output(N, NAN);
        input[0] = 1.0f;

        speech_recognition_processor(input.data(), output.data());

        bool any_nonzero = false;
        for (int i = 0; i < N; ++i) {
            assert(is_finite(output[i]));
            if (std::fabs(output[i]) > 1e-6f) {
                any_nonzero = true;
            }
        }
        assert(any_nonzero);
        std::cout << "Test 4 (impulse input) passed." << std::endl;
    }

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}