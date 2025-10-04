// contents of frequency_divider_tb.cpp
#include <iostream>
#include <limits>
#include <cassert>

// Match the macro from the DUT
#define ARRAY_SIZE 1024

// Forward declaration of the DUT (assume frequency_divider.cpp is compiled and linked)
extern void frequency_divider(int input_freq[ARRAY_SIZE], int divisor, int output_freq[ARRAY_SIZE]);

// Helper to run a test case: fills input, calls DUT, verifies against software model, and prints a few samples
void run_test_case(const char* name, int divisor, void (*fill_input)(int input[ARRAY_SIZE])) {
    std::cout << "Running test case: " << name << " (divisor = " << divisor << ")\n";
    assert(divisor != 0 && "Divisor must not be zero.");

    int input[ARRAY_SIZE];
    int output[ARRAY_SIZE];
    int expected[ARRAY_SIZE];

    // Prepare input
    fill_input(input);

    // Call the DUT
    frequency_divider(input, divisor, output);

    // Compute expected results using the same integer division semantics
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        expected[i] = input[i] / divisor;
    }

    // Verify all elements
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        if (output[i] != expected[i]) {
            std::cerr << "Mismatch at index " << i
                      << ": input=" << input[i]
                      << ", expected=" << expected[i]
                      << ", got=" << output[i] << "\n";
            assert(false && "Output mismatch");
        }
    }

    // Print first few samples to show behavior
    std::cout << "Sample results (first 8 elements):\n";
    for (int i = 0; i < 8; ++i) {
        std::cout << "  i=" << i
                  << " in=" << input[i]
                  << " out=" << output[i]
                  << " exp=" << expected[i] << "\n";
    }
    std::cout << "Test case '" << name << "' passed.\n\n";
}

// Input fillers for different test scenarios

// 1) Sequential increasing positive values
void fill_sequential(int input[ARRAY_SIZE]) {
    // Fill with a simple ramp: input[i] = i * 10
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        input[i] = i * 10;
    }
}

// 2) Constant values
void fill_constant(int input[ARRAY_SIZE]) {
    // Fill with a constant: 1000
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        input[i] = 1000;
    }
}

// 3) Alternating positive/negative values
void fill_alternating(int input[ARRAY_SIZE]) {
    // Fill with alternating signs: (+i*7) and (-(i*7))
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        int val = i * 7;
        input[i] = (i % 2 == 0) ? val : -val;
    }
}

// 4) Large values near INT_MAX, decreasing
void fill_large_descending(int input[ARRAY_SIZE]) {
    // Fill with large numbers: INT_MAX - i
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        // Avoid overflow; ensure we stay within int range
        input[i] = std::numeric_limits<int>::max() - i;
    }
}

// 5) Mixed small and negative values
void fill_small_mixed(int input[ARRAY_SIZE]) {
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        // Mix small values in range [-50, 50]
        int val = (i % 101) - 50;
        // Introduce a few exact multiples to test exact division
        if (i % 50 == 0) val = 0;
        input[i] = val;
    }
}

int main() {
    // Test 1: Basic positive divisor with ramp input
    // Ensures normal operation with positive integers and divisor > 1
    run_test_case("Sequential ramp, divisor=2", 2, fill_sequential);

    // Test 2: Divisor of 1 (identity behavior)
    // Output should match input exactly
    run_test_case("Constant input, divisor=1", 1, fill_constant);

    // Test 3: Alternating sign inputs with positive divisor
    // Verifies integer division with negative values rounds toward zero
    run_test_case("Alternating +/- input, divisor=3", 3, fill_alternating);

    // Test 4: Positive inputs with negative divisor
    // Verifies handling of negative divisors
    run_test_case("Sequential ramp, divisor=-4", -4, fill_sequential);

    // Test 5: Large values near INT_MAX with large divisor
    // Specifically checks boundary behavior for large integers
    run_test_case("Large descending input, divisor=INT_MAX", std::numeric_limits<int>::max(), fill_large_descending);

    // Test 6: Small mixed values including negatives and zeros
    // Validates correctness across a broad range of small magnitudes
    run_test_case("Small mixed input, divisor=5", 5, fill_small_mixed);

    std::cout << "All test cases passed successfully.\n";
    return 0;
}