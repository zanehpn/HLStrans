// contents of fixed_point_multiplication_tb.cpp
#include <iostream>
#include <cassert>
#include <cmath>

// Include the source to access the function and type definitions
#include "fixed_point_multiplication.cpp"

static inline bool approxEqual(double a, double b, double tol = 1e-6) {
    return std::fabs(a - b) <= tol;
}

int main() {
    fixed_point_t A[SIZE];
    fixed_point_t B[SIZE];
    fixed_point_t C[SIZE];

    // Test 1: Simple positive values (A=1.0, B=2.0) => C=2.0
    for (int i = 0; i < SIZE; ++i) {
        A[i] = 1.0;
        B[i] = 2.0;
        C[i] = 0;
    }
    fixed_point_multiplication(A, B, C);
    for (int i = 0; i < SIZE; ++i) {
        assert(approxEqual((double)C[i], 2.0));
    }
    std::cout << "Test 1 passed: All C[i] == 2.0\n";

    // Test 2: Mixed pattern with alternating sign
    // A[i] = (i % 16)/16.0 (multiples of 1/16), B[i] = +0.5 if even else -0.5
    for (int i = 0; i < SIZE; ++i) {
        double a = (i % 16) / 16.0;   // multiples of 1/16
        double b = (i % 2 == 0) ? 0.5 : -0.5;
        A[i] = a;
        B[i] = b;
        C[i] = 0;
    }
    fixed_point_multiplication(A, B, C);
    for (int i = 0; i < SIZE; ++i) {
        double expected = ((i % 16) / 16.0) * ((i % 2 == 0) ? 0.5 : -0.5);
        assert(approxEqual((double)C[i], expected));
    }
    std::cout << "Test 2 passed: Patterned A and alternating-sign B produce expected C\n";

    // Test 3: Edge near maximum representable value without overflow
    // A[i] = 127.5, B[i] = 1.0 => C[i] = 127.5
    for (int i = 0; i < SIZE; ++i) {
        A[i] = 127.5;
        B[i] = 1.0;
        C[i] = 0;
    }
    fixed_point_multiplication(A, B, C);
    for (int i = 0; i < SIZE; ++i) {
        assert(approxEqual((double)C[i], 127.5));
    }
    std::cout << "Test 3 passed: Near-maximum value multiply without overflow\n";

    // Test 4: Overflow wrap behavior (default ap_fixed overflow is wrap)
    // A[i] = 100.0, B[i] = 2.0 => Ideal product 200.0 (out of range)
    // For ap_fixed<16,8>, 200.0 wraps: raw scaled 200*256=51200, wrap to 16-bit signed: 51200-65536=-14336 -> -56.0
    for (int i = 0; i < SIZE; ++i) {
        A[i] = 100.0;
        B[i] = 2.0;
        C[i] = 0;
    }
    fixed_point_multiplication(A, B, C);
    for (int i = 0; i < SIZE; ++i) {
        assert(approxEqual((double)C[i], -56.0));
    }
    std::cout << "Test 4 passed: Overflow wraps to expected negative value (-56.0)\n";

    // Test 5: Negative times negative => positive result
    // A[i] = -1.25, B[i] = -2.0 => C[i] = 2.5
    for (int i = 0; i < SIZE; ++i) {
        A[i] = -1.25;  // -1 1/4 is representable (64/256)
        B[i] = -2.0;
        C[i] = 0;
    }
    fixed_point_multiplication(A, B, C);
    for (int i = 0; i < SIZE; ++i) {
        assert(approxEqual((double)C[i], 2.5));
    }
    std::cout << "Test 5 passed: Negative times negative yields positive\n";

    // Test 6: Zero multiplication
    // A[i] = 0, B[i] = 3.75 => C[i] = 0
    for (int i = 0; i < SIZE; ++i) {
        A[i] = 0.0;
        B[i] = 3.75;  // 15/4 = 960/256, exactly representable
        C[i] = 0;
    }
    fixed_point_multiplication(A, B, C);
    for (int i = 0; i < SIZE; ++i) {
        assert(approxEqual((double)C[i], 0.0));
    }
    std::cout << "Test 6 passed: Zero times anything yields zero\n";

    // Print a small sample of results from the last run for visual confirmation
    std::cout << "Sample outputs from Test 6 (should be zeros): ";
    for (int i = 0; i < 5; ++i) {
        std::cout << (double)C[i] << " ";
    }
    std::cout << "\n";

    std::cout << "All tests passed.\n";
    return 0;
}