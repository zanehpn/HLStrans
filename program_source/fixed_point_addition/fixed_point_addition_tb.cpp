// contents of fixed_point_addition_tb.cpp
// Standalone C++ testbench for fixed_point_addition.cpp
// This testbench constructs representative inputs, calls the function,
// and asserts/prints expected outputs.

// Include the source under test to avoid duplicate symbol errors and reuse typedefs/constants.
#include "fixed_point_addition.cpp"

#include <iostream>
#include <iomanip>
#include <cmath>
#include <cassert>

// Helper: approximate equality for floating-point comparisons
static bool approx_equal(double a, double b, double eps = 1e-6) {
    return std::fabs(a - b) <= eps;
}

// Helper: print a small slice of an array for visual inspection
static void print_sample(const fixed_point_t arr[], const char* name, int count = 8) {
    std::cout << name << " sample: ";
    for (int i = 0; i < count; ++i) {
        std::cout << std::fixed << std::setprecision(6) << double(arr[i]);
        if (i != count - 1) std::cout << ", ";
    }
    std::cout << std::endl;
}

int main() {
    std::cout << "Running fixed_point_addition testbench..." << std::endl;

    // Test Case 1: All zeros — expect output vector to be all zeros
    {
        fixed_point_t A[ARRAY_SIZE];
        fixed_point_t B[ARRAY_SIZE];
        fixed_point_t C[ARRAY_SIZE];

        for (int i = 0; i < ARRAY_SIZE; ++i) {
            A[i] = fixed_point_t(0.0);
            B[i] = fixed_point_t(0.0);
        }

        fixed_point_addition(A, B, C);

        for (int i = 0; i < ARRAY_SIZE; ++i) {
            assert(approx_equal(double(C[i]), 0.0));
        }

        std::cout << "Test Case 1 (zeros) passed." << std::endl;
        print_sample(C, "C (zeros)");
    }

    // Test Case 2: Constant vectors — A = 1.5, B = 2.25, expect C = 3.75 across the array
    {
        fixed_point_t A[ARRAY_SIZE];
        fixed_point_t B[ARRAY_SIZE];
        fixed_point_t C[ARRAY_SIZE];

        for (int i = 0; i < ARRAY_SIZE; ++i) {
            A[i] = fixed_point_t(1.5);
            B[i] = fixed_point_t(2.25);
        }

        fixed_point_addition(A, B, C);

        for (int i = 0; i < ARRAY_SIZE; ++i) {
            assert(approx_equal(double(C[i]), 3.75));
        }

        std::cout << "Test Case 2 (constant add) passed." << std::endl;
        print_sample(C, "C (const add)");
    }

    // Test Case 3: Mixed positive/negative values — verify element-wise addition with variety
    {
        fixed_point_t A[ARRAY_SIZE];
        fixed_point_t B[ARRAY_SIZE];
        fixed_point_t C[ARRAY_SIZE];

        for (int i = 0; i < ARRAY_SIZE; ++i) {
            // Create a pattern with both positive and negative values, plus fractional parts
            // A ranges roughly in [-5, 4] with fractional variations
            double a_val = (double)(i % 10) - 5.0 + 0.25 * ((i % 4) - 2);
            // B varies with a base offset and decreasing term
            double b_val = 3.75 - 0.5 * (double)(i % 5);

            A[i] = fixed_point_t(a_val);
            B[i] = fixed_point_t(b_val);
        }

        fixed_point_addition(A, B, C);

        // Check correctness: C[i] ≈ A[i] + B[i]
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            double expected = double(A[i]) + double(B[i]);
            assert(approx_equal(double(C[i]), expected, 1e-5));
        }

        std::cout << "Test Case 3 (mixed values) passed." << std::endl;
        print_sample(A, "A (mixed)");
        print_sample(B, "B (mixed)");
        print_sample(C, "C (mixed)");
    }

    // Test Case 4: Boundary-safe values near maximum range — ensure no overflow when within range
    // ap_fixed<16,8> roughly supports [-128, 128), so using values close to 127.5 is safe.
    {
        fixed_point_t A[ARRAY_SIZE];
        fixed_point_t B[ARRAY_SIZE];
        fixed_point_t C[ARRAY_SIZE];

        for (int i = 0; i < ARRAY_SIZE; ++i) {
            // Alternate values near the high end and low end, staying within safe bounds
            double a_val = (i % 2 == 0) ? 127.0 : -127.0;
            double b_val = (i % 3 == 0) ? 0.5 : -0.5;
            A[i] = fixed_point_t(a_val);
            B[i] = fixed_point_t(b_val);
        }

        fixed_point_addition(A, B, C);

        for (int i = 0; i < ARRAY_SIZE; ++i) {
            double expected = double(A[i]) + double(B[i]);
            // Expect no overflow since values are within representable range
            assert(approx_equal(double(C[i]), expected, 1e-5));
        }

        std::cout << "Test Case 4 (boundary-safe) passed." << std::endl;
        print_sample(A, "A (boundary)");
        print_sample(B, "B (boundary)");
        print_sample(C, "C (boundary)");
    }

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}