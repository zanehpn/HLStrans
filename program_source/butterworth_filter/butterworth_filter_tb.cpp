// contents of butterworth_filter_tb.cpp
#include <iostream>
#include <iomanip>
#include <cmath>
#include <cassert>
#include <cstring>

// Include the source under test to access butterworth_filter and N
#define N 1024

void butterworth_filter(const float input[N], float output[N], const float a[3], const float b[3]) ;
// Helper: compute reference output using double precision for comparison
void butterworth_filter_reference(const float input[N], float output_ref[N],
                                  const float a[3], const float b[3]) {
    double w1 = 0.0, w2 = 0.0; // w[1], w[2] in double for higher precision
    for (int i = 0; i < N; ++i) {
        double new_w = static_cast<double>(input[i]) - static_cast<double>(a[1]) * w1 - static_cast<double>(a[2]) * w2;
        double y = static_cast<double>(b[0]) * new_w + static_cast<double>(b[1]) * w1 + static_cast<double>(b[2]) * w2;
        output_ref[i] = static_cast<float>(y);
        w2 = w1;
        w1 = new_w;
    }
}

// Helper: compute maximum absolute difference between two float arrays
float max_abs_diff(const float* a, const float* b, int len) {
    float maxd = 0.0f;
    for (int i = 0; i < len; ++i) {
        float d = std::fabs(a[i] - b[i]);
        if (d > maxd) maxd = d;
    }
    return maxd;
}

// Helper: print first few samples of an array
void print_samples(const char* label, const float* arr, int count) {
    std::cout << label << ": ";
    for (int i = 0; i < count; ++i) {
        std::cout << std::fixed << std::setprecision(6) << arr[i];
        if (i < count - 1) std::cout << ", ";
    }
    std::cout << std::endl;
}

int main() {
    // Common arrays
    float input[N];
    float output[N];

    // -------------------------------
    // Test Case 1: Identity FIR filter
    // a = {0,0,0}, b = {1,0,0}. Output should equal input for any sequence.
    // -------------------------------
    {
        float a[3] = {0.0f, 0.0f, 0.0f};
        float b[3] = {1.0f, 0.0f, 0.0f};

        // Construct a ramp input
        for (int i = 0; i < N; ++i) {
            input[i] = static_cast<float>(i) * 0.01f;
        }

        // Run filter
        std::memset(output, 0, sizeof(output));
        butterworth_filter(input, output, a, b);

        // Validate: output should match input
        float mad = max_abs_diff(input, output, N);
        print_samples("Identity FIR - first 10 output samples", output, 10);
        std::cout << "Identity FIR max abs diff vs input: " << mad << std::endl;
        assert(mad < 1e-6f);
        std::cout << "Test Case 1 PASSED" << std::endl;
    }

    // -------------------------------
    // Test Case 2: Stable IIR with step input
    // Denominator: 1 - 1.8 z^-1 + 0.81 z^-2 (a = {0, -1.8, 0.81})
    // Numerator: b = {0.01, 0.0, 0.0}
    // DC gain = (b0+b1+b2) / (1 + a1 + a2) = 0.01 / (1 - 1.8 + 0.81) = 1.0
    // Output should settle to 1.0 for a unit step input.
    // -------------------------------
    {
        float a[3] = {0.0f, -1.8f, 0.81f};
        float b[3] = {0.01f, 0.0f, 0.0f};

        // Construct unit step input
        for (int i = 0; i < N; ++i) {
            input[i] = 1.0f;
        }

        // Run filter
        std::memset(output, 0, sizeof(output));
        butterworth_filter(input, output, a, b);

        // Check final value close to 1.0 (DC gain)
        print_samples("IIR Step - first 10 output samples", output, 10);
        std::cout << "IIR Step - last 5 output samples: ";
        for (int i = N - 5; i < N; ++i) {
            std::cout << std::fixed << std::setprecision(6) << output[i];
            if (i < N - 1) std::cout << ", ";
        }
        std::cout << std::endl;

        float final_val = output[N - 1];
        assert(std::fabs(final_val - 1.0f) < 1e-5f);

        // Additionally ensure no NaNs/Infs and reasonable bounds
        for (int i = 0; i < N; ++i) {
            assert(std::isfinite(output[i]));
        }

        std::cout << "Test Case 2 PASSED" << std::endl;
    }

    // -------------------------------
    // Test Case 3: Impulse response comparison against double-precision reference
    // Uses the same IIR coefficients as above. Compare full output arrays.
    // -------------------------------
    {
        float a[3] = {0.0f, -1.8f, 0.81f};
        float b[3] = {0.01f, 0.0f, 0.0f};

        // Construct impulse input: 1 at n=0, 0 elsewhere
        for (int i = 0; i < N; ++i) {
            input[i] = (i == 0) ? 1.0f : 0.0f;
        }

        // Run DUT
        std::memset(output, 0, sizeof(output));
        butterworth_filter(input, output, a, b);

        // Compute reference
        float output_ref[N];
        std::memset(output_ref, 0, sizeof(output_ref));
        butterworth_filter_reference(input, output_ref, a, b);

        // Compare DUT vs reference
        float mad = max_abs_diff(output, output_ref, N);
        print_samples("IIR Impulse - first 10 DUT samples", output, 10);
        print_samples("IIR Impulse - first 10 REF samples", output_ref, 10);
        std::cout << "IIR Impulse - max abs diff DUT vs REF: " << mad << std::endl;

        // Allow a small tolerance due to float vs double, but should be very close
        assert(mad < 1e-6f);
        std::cout << "Test Case 3 PASSED" << std::endl;
    }

    // -------------------------------
    // Test Case 4: Zero input yields zero output for any coefficients
    // -------------------------------
    {
        float a[3] = {0.0f, 0.5f, -0.25f}; // arbitrary coefficients
        float b[3] = {0.2f, 0.1f, 0.05f};  // arbitrary coefficients

        for (int i = 0; i < N; ++i) {
            input[i] = 0.0f;
        }

        std::memset(output, 0, sizeof(output));
        butterworth_filter(input, output, a, b);

        float mad = max_abs_diff(input, output, N); // both zero arrays
        print_samples("Zero Input - first 10 output samples", output, 10);
        std::cout << "Zero Input - max abs diff vs zero: " << mad << std::endl;
        assert(mad < 1e-7f);
        std::cout << "Test Case 4 PASSED" << std::endl;
    }

    std::cout << "All tests PASSED" << std::endl;
    return 0;
}