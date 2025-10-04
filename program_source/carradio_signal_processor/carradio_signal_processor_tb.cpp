// contents of carradio_signal_processor_tb.cpp
#include <iostream>
#include <cmath>
#include <cassert>
#include <cstddef>

// Forward declaration of the DUT (Device Under Test)
extern void carradio_signal_processor(float input_signal[], float output_signal[], float gain, float offset);

// Use the same size as the DUT expects
static const int TB_N = 1024;

// Helper to compare floats with a combined relative/absolute tolerance
static inline bool approx_equal(float a, float b, float rel_tol = 1e-5f, float abs_tol = 1e-6f) {
    float diff = std::fabs(a - b);
    float scale = std::fmax(1.0f, std::fmax(std::fabs(a), std::fabs(b)));
    return diff <= abs_tol + rel_tol * scale;
}

// Utility to print first few samples for debugging/inspection
static void print_samples(const char* label, const float* arr, int count = 5) {
    std::cout << label << ": [";
    for (int i = 0; i < count; ++i) {
        std::cout << arr[i];
        if (i < count - 1) std::cout << ", ";
    }
    std::cout << "]" << std::endl;
}

// Test 1: Zero input -> output should be (offset)^2 regardless of gain
static void test_zero_input_constant_output() {
    float in[TB_N];
    float out[TB_N];
    const float gain = 3.14159f;
    const float offset = -2.5f;
    const float expected_val = offset * offset;

    // Prepare input (all zeros)
    for (int i = 0; i < TB_N; ++i) in[i] = 0.0f;

    // Run DUT
    carradio_signal_processor(in, out, gain, offset);

    // Verify output
    int mismatches = 0;
    for (int i = 0; i < TB_N; ++i) {
        if (!approx_equal(out[i], expected_val)) {
            if (mismatches < 5) {
                std::cout << "Mismatch at i=" << i << ": got " << out[i]
                          << ", expected " << expected_val << std::endl;
            }
            ++mismatches;
        }
    }

    // Print a few samples for visual confirmation
    print_samples("Test1 output (first 5)", out);

    assert(mismatches == 0 && "Test1 failed: Zero input should yield constant squared offset.");
    std::cout << "Test1 passed: Zero input -> constant squared offset." << std::endl;
}

// Test 2: Identity (gain=1, offset=0) -> output should be input^2
static void test_identity_square_sine() {
    float in[TB_N];
    float out[TB_N];
    const float gain = 1.0f;
    const float offset = 0.0f;

    // Prepare input as a sine wave to cover a range of values [-1, 1]
    for (int i = 0; i < TB_N; ++i) {
        in[i] = std::sin(0.01f * static_cast<float>(i));
    }

    // Run DUT
    carradio_signal_processor(in, out, gain, offset);

    // Verify output: expected = (in[i])^2
    int mismatches = 0;
    for (int i = 0; i < TB_N; ++i) {
        float expected_val = in[i] * in[i];
        if (!approx_equal(out[i], expected_val)) {
            if (mismatches < 5) {
                std::cout << "Mismatch at i=" << i << ": got " << out[i]
                          << ", expected " << expected_val << std::endl;
            }
            ++mismatches;
        }
    }

    print_samples("Test2 input (first 5)", in);
    print_samples("Test2 output (first 5)", out);

    assert(mismatches == 0 && "Test2 failed: Identity square should equal input squared.");
    std::cout << "Test2 passed: Identity square (gain=1, offset=0)." << std::endl;
}

// Test 3: Negative gain and non-zero offset with a patterned input
// Expected: out[i] = (gain * in[i] + offset)^2
static void test_negative_gain_offset_ramp() {
    float in[TB_N];
    float out[TB_N];
    const float gain = -2.0f;
    const float offset = 1.25f;

    // Prepare input as a repeating ramp with fractional values
    for (int i = 0; i < TB_N; ++i) {
        in[i] = static_cast<float>((i % 17) - 8) / 3.0f; // range roughly [-2.67, 3.0)
    }

    // Run DUT
    carradio_signal_processor(in, out, gain, offset);

    // Verify output
    int mismatches = 0;
    for (int i = 0; i < TB_N; ++i) {
        float shifted = gain * in[i] + offset;
        float expected_val = shifted * shifted;
        if (!approx_equal(out[i], expected_val)) {
            if (mismatches < 5) {
                std::cout << "Mismatch at i=" << i << ": in=" << in[i]
                          << " got " << out[i] << ", expected " << expected_val << std::endl;
            }
            ++mismatches;
        }
    }

    print_samples("Test3 input (first 5)", in);
    print_samples("Test3 output (first 5)", out);

    assert(mismatches == 0 && "Test3 failed: Negative gain and offset transformation mismatch.");
    std::cout << "Test3 passed: Negative gain with non-zero offset." << std::endl;
}

// Test 4: Zero gain -> output should be (offset)^2 regardless of input
static void test_zero_gain_constant_output() {
    float in[TB_N];
    float out[TB_N];
    const float gain = 0.0f;
    const float offset = 0.5f;
    const float expected_val = offset * offset;

    // Prepare input with varied values (should be ignored by zero gain)
    for (int i = 0; i < TB_N; ++i) {
        in[i] = std::cos(0.02f * static_cast<float>(i)) * 10.0f;
    }

    // Run DUT
    carradio_signal_processor(in, out, gain, offset);

    // Verify output constant
    int mismatches = 0;
    for (int i = 0; i < TB_N; ++i) {
        if (!approx_equal(out[i], expected_val)) {
            if (mismatches < 5) {
                std::cout << "Mismatch at i=" << i << ": in=" << in[i]
                          << " got " << out[i] << ", expected " << expected_val << std::endl;
            }
            ++mismatches;
        }
    }

    print_samples("Test4 input (first 5)", in);
    print_samples("Test4 output (first 5)", out);

    assert(mismatches == 0 && "Test4 failed: Zero gain should yield constant squared offset.");
    std::cout << "Test4 passed: Zero gain -> constant squared offset." << std::endl;
}

int main() {
    std::cout << "Running carradio_signal_processor testbench..." << std::endl;

    test_zero_input_constant_output();
    test_identity_square_sine();
    test_negative_gain_offset_ramp();
    test_zero_gain_constant_output();

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}