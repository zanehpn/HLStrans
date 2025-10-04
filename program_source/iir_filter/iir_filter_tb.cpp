// contents of iir_filter_tb.cpp
#include <iostream>
#include <iomanip>
#include <cmath>
#include <cassert>
#include <cstring>

// Include the DUT source directly since no header is provided.
// The included file defines N and the iir_filter function.
#define N 1024

void iir_filter(float input[N], float output[N], float a[3], float b[3]) ;

static bool close_enough(float a, float b, float tol = 1e-6f) {
    float diff = std::fabs(a - b);
    if (std::isnan(a) || std::isnan(b)) return false;
    if (std::isinf(a) || std::isinf(b)) return false;
    if (std::fabs(b) > 1.0f)
        return diff <= tol * std::fabs(b);
    return diff <= tol;
}

// Test 1: Pure pass-through FIR (a[1]=a[2]=0, b=[1,0,0]) should yield output == input
static int test_identity_fir() {
    float a[3] = {0.0f, 0.0f, 0.0f};
    float b[3] = {1.0f, 0.0f, 0.0f};

    float input[N];
    float output[N];

    // Construct a representative input: sinusoid plus ramp
    for (int i = 0; i < N; ++i) {
        input[i] = std::sin(0.01f * i) + 0.1f * static_cast<float>(i % 10);
    }

    // Run the filter
    iir_filter(input, output, a, b);

    // Verify output matches input
    int fails = 0;
    for (int i = 0; i < N; ++i) {
        if (!close_enough(output[i], input[i])) {
            if (fails < 10) {
                std::cerr << "[Identity FIR] Mismatch at " << i
                          << ": got " << output[i] << ", expected " << input[i] << "\n";
            }
            ++fails;
        }
    }
    if (fails == 0) {
        std::cout << "Test 1 (Identity FIR) PASSED\n";
    } else {
        std::cout << "Test 1 (Identity FIR) FAILED with " << fails << " mismatches\n";
    }
    return fails;
}

// Test 2: 2-tap moving average FIR: y[n] = 0.5*x[n] + 0.5*x[n-1] (a[1]=a[2]=0, b=[0.5,0.5,0])
static int test_moving_average_fir() {
    float a[3] = {0.0f, 0.0f, 0.0f};
    float b[3] = {0.5f, 0.5f, 0.0f};

    float input[N];
    float output[N];

    // Zero the entire input, then set first 10 values to a simple pattern
    std::fill_n(input, N, 0.0f);
    for (int i = 0; i < 10; ++i) input[i] = static_cast<float>(i);

    // Run the filter
    iir_filter(input, output, a, b);

    // Verify first few outputs against the analytical formula
    int fails = 0;
    for (int n = 0; n < 16; ++n) {
        float xn   = (n >= 0 && n < 10) ? static_cast<float>(n) : 0.0f;
        float xn_1 = (n-1 >= 0 && n-1 < 10) ? static_cast<float>(n-1) : 0.0f;
        float expected = 0.5f * xn + 0.5f * xn_1;
        if (!close_enough(output[n], expected)) {
            if (fails < 10) {
                std::cerr << "[Moving Avg FIR] Mismatch at " << n
                          << ": got " << output[n] << ", expected " << expected << "\n";
            }
            ++fails;
        }
    }
    if (fails == 0) {
        std::cout << "Test 2 (Moving Average FIR) PASSED\n";
    } else {
        std::cout << "Test 2 (Moving Average FIR) FAILED with " << fails << " mismatches\n";
    }
    return fails;
}

// Test 3: First-order stable IIR with impulse input
// Choose a1 = -0.5, a2 = 0, b = [1,0,0]; Then w[n] = x[n] + 0.5*w[n-1], y[n] = w[n].
// For impulse input x[0]=1, x[n>0]=0, the expected output is y[n] = (0.5)^n.
static int test_iir_impulse_response() {
    float a[3] = {0.0f, -0.5f, 0.0f};
    float b[3] = {1.0f, 0.0f, 0.0f};

    float input[N];
    float output[N];

    std::fill_n(input, N, 0.0f);
    input[0] = 1.0f;

    iir_filter(input, output, a, b);

    int fails = 0;
    for (int n = 0; n < 12; ++n) {
        float expected = std::pow(0.5f, static_cast<float>(n));
        if (!close_enough(output[n], expected, 1e-6f)) {
            if (fails < 10) {
                std::cerr << "[IIR Impulse] Mismatch at " << n
                          << ": got " << std::setprecision(9) << output[n]
                          << ", expected " << expected << "\n";
            }
            ++fails;
        }
    }
    if (fails == 0) {
        std::cout << "Test 3 (IIR Impulse Response) PASSED\n";
    } else {
        std::cout << "Test 3 (IIR Impulse Response) FAILED with " << fails << " mismatches\n";
    }
    return fails;
}

// Test 4: General IIR demo with non-trivial a and b on a sinusoidal input
// This is a demonstration test: we don't assert exact values, but we print a few outputs
// to allow visual inspection and ensure the function runs without errors.
static void demo_general_iir_on_sine() {
    float a[3] = {0.0f, -0.3f, 0.2f};  // Some stable-ish denominator
    float b[3] = {0.2f, 0.1f, 0.05f};  // Some arbitrary numerator

    float input[N];
    float output[N];

    // Generate a sine wave input: 5 cycles across the buffer
    const float cycles = 5.0f;
    for (int n = 0; n < N; ++n) {
        input[n] = std::sin(2.0f * static_cast<float>(M_PI) * cycles * (static_cast<float>(n) / static_cast<float>(N)));
    }

    iir_filter(input, output, a, b);

    std::cout << "Test 4 (General IIR Demo) First 16 outputs:\n";
    std::cout << std::fixed << std::setprecision(6);
    for (int i = 0; i < 16; ++i) {
        std::cout << "y[" << i << "] = " << output[i] << "\n";
    }
}

int main() {
    int total_fails = 0;

    // Run Test 1: Identity FIR
    total_fails += test_identity_fir();

    // Run Test 2: Moving Average FIR
    total_fails += test_moving_average_fir();

    // Run Test 3: IIR Impulse Response
    total_fails += test_iir_impulse_response();

    // Run Test 4: General IIR demonstration (no assertions)
    demo_general_iir_on_sine();

    if (total_fails == 0) {
        std::cout << "All assertion-based tests PASSED\n";
    } else {
        std::cout << "There were " << total_fails << " total assertion failures\n";
    }

    // Return non-zero if any tests failed
    return (total_fails == 0) ? 0 : 1;
}