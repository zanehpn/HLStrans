// contents of floating_point_addition_tb.cpp
#include <iostream>
#include <iomanip>
#include <cmath>
#include <cassert>
#include <limits>
#include <algorithm>

// Include the source under test (no main() defined there)
#include "floating_point_addition.cpp"

static bool approx_equal(float a, float b, float abs_tol = 1e-6f, float rel_tol = 1e-6f) {
    if (std::isnan(a) || std::isnan(b)) return false;
    if (std::isinf(a) || std::isinf(b)) return a == b;
    float diff = std::fabs(a - b);
    float norm = std::max(std::fabs(a), std::fabs(b));
    return diff <= std::max(abs_tol, rel_tol * norm);
}

// Test 1: All zeros -> result must be all zeros
static int test_all_zeros() {
    float A[ARRAY_SIZE], B[ARRAY_SIZE], C[ARRAY_SIZE];
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        A[i] = 0.0f;
        B[i] = 0.0f;
        C[i] = 123.456f; // prefill with junk to ensure it gets overwritten
    }

    floating_point_addition(A, B, C);

    int failures = 0;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        if (C[i] != 0.0f) {
            ++failures;
            if (failures <= 5) {
                std::cerr << "Test 1 failure at index " << i << ": got " << C[i] << " expected 0.0\n";
            }
        }
    }

    std::cout << "[Test 1] All zeros -> all zeros: " << (failures == 0 ? "PASS" : "FAIL") << "\n";
    return failures;
}

// Test 2: Patterned values -> check against CPU-computed reference with tolerance
static int test_patterned_values() {
    float A[ARRAY_SIZE], B[ARRAY_SIZE], C[ARRAY_SIZE], Ref[ARRAY_SIZE];

    // Create deterministic patterned inputs
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        A[i] = static_cast<float>(0.5 * i);
        B[i] = 1000.0f - static_cast<float>(0.25 * i);
        Ref[i] = A[i] + B[i]; // reference computed independently
    }

    floating_point_addition(A, B, C);

    int failures = 0;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        if (!approx_equal(C[i], Ref[i])) {
            ++failures;
            if (failures <= 5) {
                std::cerr << "Test 2 failure at index " << i
                          << ": got " << C[i] << ", expected " << Ref[i] << "\n";
            }
        }
    }

    // Print first few results for human inspection
    std::cout << "[Test 2] Patterned values: " << (failures == 0 ? "PASS" : "FAIL") << "\n";
    std::cout << "  Sample outputs (first 5):\n";
    for (int i = 0; i < 5; ++i) {
        std::cout << "    i=" << i << " A=" << A[i] << " B=" << B[i]
                  << " C=" << C[i] << " Ref=" << Ref[i] << "\n";
    }

    return failures;
}

// Test 3: Special IEEE-754 cases (NaN, +/-Inf, large/small magnitudes)
static int test_special_values() {
    float A[ARRAY_SIZE], B[ARRAY_SIZE], C[ARRAY_SIZE];

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        A[i] = 0.0f;
        B[i] = 0.0f;
    }

    const float inf = std::numeric_limits<float>::infinity();
    const float nan = std::numeric_limits<float>::quiet_NaN();

    // Place special cases in the first few indices
    // Case 0: +inf + finite -> +inf
    A[0] = inf;      B[0] = 5.0f;

    // Case 1: -inf + finite -> -inf
    A[1] = -inf;     B[1] = 5.0f;

    // Case 2: NaN + finite -> NaN
    A[2] = nan;      B[2] = 1.0f;

    // Case 3: finite + NaN -> NaN
    A[3] = 1.0f;     B[3] = nan;

    // Case 4: +inf + -inf -> NaN
    A[4] = inf;      B[4] = -inf;

    // Case 5: small magnitudes
    A[5] = 1e-37f;   B[5] = 1e-37f;

    // Case 6: very large + small (small may be lost)
    A[6] = 1e30f;    B[6] = 1.0f;

    // Case 7: cancellation to zero
    A[7] = 1e20f;    B[7] = -1e20f;

    // Case 8: negative infinity plus small negative -> -inf
    A[8] = -inf;     B[8] = -123.0f;

    // Case 9: finite large negative + finite large positive -> depends on values
    A[9] = -3.4e38f * 0.25f; // within finite range
    B[9] =  3.4e38f * 0.25f; // should cancel to ~0

    floating_point_addition(A, B, C);

    int failures = 0;

    // Validate specific cases
    // Index 0: +inf
    if (!(std::isinf(C[0]) && !std::signbit(C[0]))) {
        ++failures; std::cerr << "Test 3 failure at 0: expected +inf, got " << C[0] << "\n";
    }

    // Index 1: -inf
    if (!(std::isinf(C[1]) && std::signbit(C[1]))) {
        ++failures; std::cerr << "Test 3 failure at 1: expected -inf, got " << C[1] << "\n";
    }

    // Index 2: NaN
    if (!std::isnan(C[2])) {
        ++failures; std::cerr << "Test 3 failure at 2: expected NaN, got " << C[2] << "\n";
    }

    // Index 3: NaN
    if (!std::isnan(C[3])) {
        ++failures; std::cerr << "Test 3 failure at 3: expected NaN, got " << C[3] << "\n";
    }

    // Index 4: NaN
    if (!std::isnan(C[4])) {
        ++failures; std::cerr << "Test 3 failure at 4: expected NaN, got " << C[4] << "\n";
    }

    // Index 5: small + small
    {
        float ref = A[5] + B[5];
        if (!approx_equal(C[5], ref, 0.0f, 1e-6f)) {
            ++failures; std::cerr << "Test 3 failure at 5: got " << C[5] << ", expected " << ref << "\n";
        }
    }

    // Index 6: large + small
    {
        float ref = A[6] + B[6];
        if (!approx_equal(C[6], ref, 0.0f, 1e-6f)) {
            ++failures; std::cerr << "Test 3 failure at 6: got " << C[6] << ", expected " << ref << "\n";
        }
    }

    // Index 7: cancellation to zero
    {
        float ref = A[7] + B[7];
        if (!approx_equal(C[7], ref)) {
            ++failures; std::cerr << "Test 3 failure at 7: got " << C[7] << ", expected " << ref << "\n";
        }
    }

    // Index 8: -inf
    if (!(std::isinf(C[8]) && std::signbit(C[8]))) {
        ++failures; std::cerr << "Test 3 failure at 8: expected -inf, got " << C[8] << "\n";
    }

    // Index 9: near zero due to cancellation
    {
        float ref = A[9] + B[9];
        if (!approx_equal(C[9], ref)) {
            ++failures; std::cerr << "Test 3 failure at 9: got " << C[9] << ", expected " << ref << "\n";
        }
    }

    // Remaining elements (10..ARRAY_SIZE-1) should still be 0 + 0 = 0
    for (int i = 10; i < ARRAY_SIZE; ++i) {
        if (C[i] != 0.0f) {
            ++failures;
            if (failures <= 15) {
                std::cerr << "Test 3 failure at index " << i << ": expected 0.0, got " << C[i] << "\n";
            }
        }
    }

    std::cout << "[Test 3] Special IEEE-754 cases: " << (failures == 0 ? "PASS" : "FAIL") << "\n";
    return failures;
}

int main() {
    std::cout << "Running floating_point_addition testbench...\n";

    int total_failures = 0;
    total_failures += test_all_zeros();        // Basic zero behavior
    total_failures += test_patterned_values(); // Representative patterned inputs
    total_failures += test_special_values();   // IEEE-754 edge cases

    if (total_failures == 0) {
        std::cout << "All tests PASSED.\n";
        return 0;
    } else {
        std::cerr << "Total failures: " << total_failures << "\n";
        return 1;
    }
}