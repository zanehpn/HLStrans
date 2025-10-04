// contents of echo_cancellation_tb.cpp
#include <iostream>
#include <cmath>
#include <cassert>
#include <iomanip>

// Include the source under test (no main() defined there)
#include "echo_cancellation.cpp"

// Helper to compute expected output using the same algorithm
void compute_expected(const float input_signal[N],
                      const float echo_signal[N],
                      const float filter_coeff[N],
                      float expected[N]) {
    for (int i = 0; i < N; ++i) {
        float estimated_echo = 0.0f;
        for (int j = 0; j < N; ++j) {
            if (i - j >= 0) {
                estimated_echo += filter_coeff[j] * input_signal[i - j];
            }
        }
        expected[i] = input_signal[i] - estimated_echo + echo_signal[i];
    }
}

// Compare arrays and report max error
bool compare_arrays(const float a[N], const float b[N], float eps, float &max_err, int &max_idx) {
    max_err = 0.0f;
    max_idx = -1;
    bool ok = true;
    for (int i = 0; i < N; ++i) {
        float err = std::fabs(a[i] - b[i]);
        if (err > max_err) {
            max_err = err;
            max_idx = i;
        }
        if (err > eps) {
            ok = false;
        }
    }
    return ok;
}

// Utility to fill arrays
void fill_zeros(float a[N]) {
    for (int i = 0; i < N; ++i) a[i] = 0.0f;
}

void fill_sine(float a[N], float amp, float period) {
    // period is number of samples per cycle
    const float two_pi = 6.283185307179586f;
    for (int i = 0; i < N; ++i) {
        a[i] = amp * std::sin(two_pi * i / period);
    }
}

void fill_ramp(float a[N], float start, float step) {
    float v = start;
    for (int i = 0; i < N; ++i) {
        a[i] = v;
        v += step;
    }
}

int main() {
    const float eps = 1e-5f;

    float input_signal[N];
    float echo_signal[N];
    float filter_coeff[N];
    float output_signal[N];
    float expected[N];

    // Test 1: Zero filter and zero echo -> output should equal input
    // Input: sinusoidal signal, Filter: all zeros, Echo: all zeros
    fill_sine(input_signal, 1.0f, 64.0f);
    fill_zeros(echo_signal);
    fill_zeros(filter_coeff);

    echo_cancellation(input_signal, echo_signal, output_signal, filter_coeff);
    compute_expected(input_signal, echo_signal, filter_coeff, expected);

    {
        float max_err; int max_idx;
        bool ok = compare_arrays(output_signal, expected, eps, max_err, max_idx);
        std::cout << "Test 1 (zero filter, zero echo): "
                  << (ok ? "PASS" : "FAIL")
                  << ", max_err=" << std::setprecision(8) << max_err
                  << " at index " << max_idx << std::endl;
        assert(ok);
    }

    // Test 2: Single-tap filter at j=0 (instant echo) with zero echo_signal
    // Expected: output[i] = input[i] - alpha*input[i]
    fill_sine(input_signal, 0.8f, 128.0f);
    fill_zeros(echo_signal);
    fill_zeros(filter_coeff);
    const float alpha = 0.5f;
    filter_coeff[0] = alpha;

    echo_cancellation(input_signal, echo_signal, output_signal, filter_coeff);
    compute_expected(input_signal, echo_signal, filter_coeff, expected);

    {
        float max_err; int max_idx;
        bool ok = compare_arrays(output_signal, expected, eps, max_err, max_idx);
        std::cout << "Test 2 (single-tap filter j=0, alpha=0.5, zero echo): "
                  << (ok ? "PASS" : "FAIL")
                  << ", max_err=" << std::setprecision(8) << max_err
                  << " at index " << max_idx << std::endl;
        assert(ok);
    }

    // Test 3: Single-tap filter at j=1 (delayed echo) and constant echo_signal
    // Expected:
    //  - For i=0: output[0] = input[0] + echo_signal[0]  (no contribution from j=1 since i-j < 0)
    //  - For i>=1: output[i] = input[i] - beta*input[i-1] + echo_signal[i]
    fill_ramp(input_signal, 0.0f, 0.01f);
    const float echo_const = 0.1f;
    for (int i = 0; i < N; ++i) echo_signal[i] = echo_const;
    fill_zeros(filter_coeff);
    const float beta = 0.25f;
    filter_coeff[1] = beta;

    echo_cancellation(input_signal, echo_signal, output_signal, filter_coeff);
    compute_expected(input_signal, echo_signal, filter_coeff, expected);

    {
        // Additional boundary check for i=0
        float expected_i0 = input_signal[0] + echo_const;
        assert(std::fabs(output_signal[0] - expected_i0) < eps);

        float max_err; int max_idx;
        bool ok = compare_arrays(output_signal, expected, eps, max_err, max_idx);
        std::cout << "Test 3 (single-tap filter j=1, beta=0.25, constant echo): "
                  << (ok ? "PASS" : "FAIL")
                  << ", max_err=" << std::setprecision(8) << max_err
                  << " at index " << max_idx << std::endl;
        assert(ok);
    }

    // Test 4: Multi-tap filter (3 taps) and zero echo_signal
    // Expected: output[i] = input[i] - (0.3*input[i] + (-0.2)*input[i-1] + 0.1*input[i-2]) for i>=2
    fill_sine(input_signal, 0.5f, 32.0f);
    fill_zeros(echo_signal);
    fill_zeros(filter_coeff);
    filter_coeff[0] = 0.3f;
    filter_coeff[1] = -0.2f;
    filter_coeff[2] = 0.1f;

    echo_cancellation(input_signal, echo_signal, output_signal, filter_coeff);
    compute_expected(input_signal, echo_signal, filter_coeff, expected);

    {
        float max_err; int max_idx;
        bool ok = compare_arrays(output_signal, expected, eps, max_err, max_idx);
        std::cout << "Test 4 (multi-tap filter [0.3, -0.2, 0.1], zero echo): "
                  << (ok ? "PASS" : "FAIL")
                  << ", max_err=" << std::setprecision(8) << max_err
                  << " at index " << max_idx << std::endl;
        assert(ok);
    }

    // Print a small sample of output from the last test for visual inspection
    std::cout << "Sample outputs (Test 4):" << std::endl;
    for (int i = 0; i < 10; ++i) {
        std::cout << "i=" << i
                  << " input=" << input_signal[i]
                  << " out=" << output_signal[i]
                  << " exp=" << expected[i] << std::endl;
    }

    std::cout << "All tests completed successfully." << std::endl;
    return 0;
}