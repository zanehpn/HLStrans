// contents of floating_point_multiplication_tb.cpp

#include <iostream>
#include <cmath>
#include <cassert>
#include <limits>
#include <random>
#include <string>

// Match the source's macro and function signature
#define ARRAY_SIZE 1024
extern void floating_point_multiplication(float A[ARRAY_SIZE], float B[ARRAY_SIZE], float C[ARRAY_SIZE]);

// Helper to compare floats with tolerance, handling NaN and Inf
bool float_equal(float a, float b, float eps = 1e-6f) {
    if (std::isnan(a) && std::isnan(b)) return true;
    if (std::isinf(a) && std::isinf(b)) return std::signbit(a) == std::signbit(b);
    return std::fabs(a - b) <= eps * std::max(1.0f, std::max(std::fabs(a), std::fabs(b)));
}

bool compare_arrays(const float* C, const float* E, int n, const std::string& test_name, float eps = 1e-6f, int max_report = 5) {
    int errors = 0;
    for (int i = 0; i < n; ++i) {
        if (!float_equal(C[i], E[i], eps)) {
            if (errors < max_report) {
                std::cout << "[ERROR] " << test_name << " mismatch at index " << i
                          << ": got " << C[i] << ", expected " << E[i] << "\n";
            }
            ++errors;
        }
    }
    if (errors == 0) {
        std::cout << "[PASS] " << test_name << "\n";
        return true;
    } else {
        std::cout << "[FAIL] " << test_name << " with " << errors << " mismatches.\n";
        return false;
    }
}

int main() {
    float A[ARRAY_SIZE];
    float B[ARRAY_SIZE];
    float C[ARRAY_SIZE];
    float Expected[ARRAY_SIZE];

    bool all_passed = true;

    // Test 1: Ramp A and constant B (A[i] = i, B[i] = 2.0f) -> C[i] = 2*i
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        A[i] = static_cast<float>(i);
        B[i] = 2.0f;
        Expected[i] = A[i] * B[i];
    }
    floating_point_multiplication(A, B, C);
    all_passed &= compare_arrays(C, Expected, ARRAY_SIZE, "Test 1: Ramp * Constant");

    // Test 2: Zero A and random B -> result should be all zeros
    {
        std::mt19937 rng(42);
        std::uniform_real_distribution<float> dist(-100.0f, 100.0f);
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            A[i] = 0.0f;
            B[i] = dist(rng);
            Expected[i] = A[i] * B[i]; // expected 0
        }
        floating_point_multiplication(A, B, C);
        all_passed &= compare_arrays(C, Expected, ARRAY_SIZE, "Test 2: Zero * Random");
    }

    // Test 3: Negative A and constant B (A[i] = -i, B[i] = 3.5f) -> C[i] = -3.5*i
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        A[i] = -static_cast<float>(i);
        B[i] = 3.5f;
        Expected[i] = A[i] * B[i];
    }
    floating_point_multiplication(A, B, C);
    all_passed &= compare_arrays(C, Expected, ARRAY_SIZE, "Test 3: Negative * Constant");

    // Test 4: Trigonometric pattern (A[i] = sin(i), B[i] = cos(i)) -> validate overlap of typical ranges
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        A[i] = std::sin(static_cast<float>(i));
        B[i] = std::cos(static_cast<float>(i));
        Expected[i] = A[i] * B[i];
    }
    floating_point_multiplication(A, B, C);
    all_passed &= compare_arrays(C, Expected, ARRAY_SIZE, "Test 4: sin(i) * cos(i)", 1e-5f);

    // Test 5: Special values (NaN, Inf, small denormal). Ensures IEEE behavior is preserved.
    {
        // Initialize baseline values
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            A[i] = 1.5f;
            B[i] = 2.0f;
        }
        // Inject special cases at specific indices
        A[0] = std::numeric_limits<float>::infinity();  B[0] = 2.0f;                         // Inf * finite -> Inf
        A[1] = -std::numeric_limits<float>::infinity(); B[1] = -1.0f;                        // -Inf * -1 -> +Inf
        A[2] = std::numeric_limits<float>::infinity();  B[2] = 0.0f;                         // Inf * 0 -> NaN
        A[3] = std::numeric_limits<float>::quiet_NaN(); B[3] = 1.0f;                         // NaN * finite -> NaN
        A[4] = 0.0f;                                    B[4] = std::numeric_limits<float>::infinity(); // 0 * Inf -> NaN
        A[5] = std::numeric_limits<float>::denorm_min(); B[5] = 1e30f;                        // Tiny * large -> small finite

        for (int i = 0; i < ARRAY_SIZE; ++i) {
            Expected[i] = A[i] * B[i];
        }
        floating_point_multiplication(A, B, C);

        // Check a few indices explicitly and print them
        std::cout << "Special cases (indices 0..5):\n";
        for (int i = 0; i <= 5; ++i) {
            std::cout << "  i=" << i << " A=" << A[i] << " B=" << B[i] << " C=" << C[i] << " Expected=" << Expected[i] << "\n";
        }

        all_passed &= compare_arrays(C, Expected, ARRAY_SIZE, "Test 5: Special values", 1e-6f);
    }

    // Optional: Print the first 10 results of the last test for inspection
    std::cout << "Sample output (last test, first 10 entries):\n";
    for (int i = 0; i < 10; ++i) {
        std::cout << "C[" << i << "] = " << C[i] << " | Expected[" << i << "] = " << Expected[i] << "\n";
    }

    if (all_passed) {
        std::cout << "All tests PASSED.\n";
        return 0;
    } else {
        std::cout << "Some tests FAILED.\n";
        return 1;
    }
}