// contents of branch_prediction_tb.cpp
#include <iostream>
#include <cstdint>
#include <cassert>
#include <limits>

// Include the DUT (Device Under Test)
// This brings in the function branch_prediction(...) and the constant N.
#include "branch_prediction.cpp"

// Helper to compute expected value for a single input element
static inline int32_t expected_val(int32_t x) {
    // Mirrors the DUT logic: threshold = 500
    return (x > 500) ? (x * 2) : (x / 2);
}

// Helper to run DUT and check outputs against expected for the given input
void run_and_check(const char* test_name, int32_t input[N]) {
    int32_t output[N];
    branch_prediction(input, output);

    for (int i = 0; i < N; ++i) {
        int32_t exp = expected_val(input[i]);
        if (output[i] != exp) {
            std::cerr << "Test '" << test_name << "' failed at index " << i
                      << ": input=" << input[i]
                      << " expected=" << exp
                      << " got=" << output[i] << std::endl;
            assert(false);
        }
    }

    // Print a small sample of outputs to visually inspect behavior
    std::cout << "Test '" << test_name << "' passed. Sample outputs:" << std::endl;
    for (int i = 0; i < 8 && i < N; ++i) {
        std::cout << "  i=" << i << " input=" << input[i]
                  << " output=" << output[i] << std::endl;
    }
}

int main() {
    // Test Case 1: Increasing sequence 0..N-1
    // Exercises both branches around the threshold (500).
    {
        int32_t input[N];
        for (int i = 0; i < N; ++i) {
            input[i] = i;
        }
        run_and_check("Increasing sequence 0..N-1", input);
    }

    // Test Case 2: Pseudo-random values across negative and positive range
    // Ensures coverage of values well below and above the threshold without overflow.
    {
        int32_t input[N];
        for (int i = 0; i < N; ++i) {
            // Range approximately [-600, 599]
            input[i] = ((i * 37 + 123) % 1200) - 600;
        }
        run_and_check("Pseudo-random mixed range [-600, 599]", input);
    }

    // Test Case 3: Boundary values around the threshold, including negatives and zero
    // Pattern includes 500 (equal threshold), 501 (> threshold), 499 (< threshold), -1, -2, 0, and 1000.
    {
        int32_t pattern[] = {500, 501, 499, -1, -2, 0, 1000};
        int32_t input[N];
        for (int i = 0; i < N; ++i) {
            input[i] = pattern[i % (int)(sizeof(pattern)/sizeof(pattern[0]))];
        }
        run_and_check("Boundary + mixed pattern", input);
    }

    // Test Case 4: All elements greater than threshold
    // Verifies the 'then' branch uniformly across the array.
    {
        int32_t input[N];
        for (int i = 0; i < N; ++i) {
            input[i] = 600; // > 500
        }
        run_and_check("Uniform greater-than-threshold (600)", input);
    }

    // Test Case 5: All elements less than or equal to threshold, including extreme negative
    // Verifies the 'else' branch uniformly and checks behavior for very negative values.
    {
        int32_t input[N];
        // Use extreme negative (INT32_MIN) in a repeating pattern to test division behavior
        int32_t extreme_neg = std::numeric_limits<int32_t>::min();
        int32_t pattern[] = {extreme_neg, -1000, 500, 0, 400};
        for (int i = 0; i < N; ++i) {
            input[i] = pattern[i % (int)(sizeof(pattern)/sizeof(pattern[0]))];
        }
        run_and_check("Uniform <= threshold with extreme negatives", input);
    }

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}