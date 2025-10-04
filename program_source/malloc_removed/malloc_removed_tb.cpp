// contents of malloc_removed_tb.cpp
#include <iostream>
#include <cassert>

// Include the source to bring in N, types, and malloc_removed() definition.
// Avoids duplicate symbol issues since malloc_removed.cpp does not define main().
#include "malloc_removed.cpp"

// Helper to compute the expected result in software
static dout_t compute_expected(const din_t din[N], dsel_t width) {
    long long acc = 0;
    for (int i = 0; i < N - 1; ++i) {
        int val = (i < width) ? din[i] : (din[i] >> 2);
        acc += val;
    }
    return acc;
}

// Utility to print an array (for debugging on failures)
static void print_array(const din_t din[N]) {
    std::cout << "[";
    for (int i = 0; i < N; ++i) {
        std::cout << din[i];
        if (i != N - 1) std::cout << ", ";
    }
    std::cout << "]";
}

int main() {
    int tests_run = 0;
    int tests_passed = 0;

    {
        // Test 1: width = 0, all elements (except last) are shifted right by 2.
        din_t din[N];
        for (int i = 0; i < N; ++i) din[i] = i;  // 0..31
        dsel_t width = 0;

        dout_t got = malloc_removed(din, width);
        dout_t exp = compute_expected(din, width);
        ++tests_run;
        if (got == exp) {
            ++tests_passed;
            std::cout << "Test 1 PASS: width=0, got=" << got << ", exp=" << exp << "\n";
        } else {
            std::cout << "Test 1 FAIL: width=0, got=" << got << ", exp=" << exp << "\n";
            std::cout << "din="; print_array(din); std::cout << "\n";
        }
        assert(got == exp);
    }

    {
        // Test 2: width in the middle (10): first 10 unshifted, rest (until N-2) shifted.
        din_t din[N];
        for (int i = 0; i < N; ++i) din[i] = i;  // 0..31
        dsel_t width = 10;

        dout_t got = malloc_removed(din, width);
        dout_t exp = compute_expected(din, width);
        ++tests_run;
        if (got == exp) {
            ++tests_passed;
            std::cout << "Test 2 PASS: width=10, got=" << got << ", exp=" << exp << "\n";
        } else {
            std::cout << "Test 2 FAIL: width=10, got=" << got << ", exp=" << exp << "\n";
            std::cout << "din="; print_array(din); std::cout << "\n";
        }
        assert(got == exp);
    }

    {
        // Test 3: width = N-1 (31): all first 31 elements are unshifted.
        din_t din[N];
        for (int i = 0; i < N; ++i) din[i] = i + 1;  // 1..32
        dsel_t width = N - 1;

        dout_t got = malloc_removed(din, width);
        dout_t exp = compute_expected(din, width);
        ++tests_run;
        if (got == exp) {
            ++tests_passed;
            std::cout << "Test 3 PASS: width=N-1, got=" << got << ", exp=" << exp << "\n";
        } else {
            std::cout << "Test 3 FAIL: width=N-1, got=" << got << ", exp=" << exp << "\n";
            std::cout << "din="; print_array(din); std::cout << "\n";
        }
        assert(got == exp);
    }

    {
        // Test 4: width >= N (32): condition i < width is always true for i in [0, N-2], same as width=N-1.
        din_t din[N];
        for (int i = 0; i < N; ++i) din[i] = (i + 1) * 2;  // 2,4,6,...,64
        dsel_t width = N;  // 32

        dout_t got = malloc_removed(din, width);
        dout_t exp = compute_expected(din, width);
        ++tests_run;
        if (got == exp) {
            ++tests_passed;
            std::cout << "Test 4 PASS: width>=N, got=" << got << ", exp=" << exp << "\n";
        } else {
            std::cout << "Test 4 FAIL: width>=N, got=" << got << ", exp=" << exp << "\n";
            std::cout << "din="; print_array(din); std::cout << "\n";
        }
        assert(got == exp);
    }

    {
        // Test 5: Negative width: i < width is false for all i >= 0, so all first 31 elements are shifted.
        din_t din[N];
        for (int i = 0; i < N; ++i) din[i] = i * 3;  // 0,3,6,...
        dsel_t width = -3;

        dout_t got = malloc_removed(din, width);
        dout_t exp = compute_expected(din, width);
        ++tests_run;
        if (got == exp) {
            ++tests_passed;
            std::cout << "Test 5 PASS: negative width, got=" << got << ", exp=" << exp << "\n";
        } else {
            std::cout << "Test 5 FAIL: negative width, got=" << got << ", exp=" << exp << "\n";
            std::cout << "din="; print_array(din); std::cout << "\n";
        }
        assert(got == exp);
    }

    {
        // Test 6: Negative input values to verify behavior of right shift on negatives (implementation-defined but consistent within program).
        din_t din[N];
        for (int i = 0; i < N; ++i) {
            din[i] = (i % 2 == 0) ? -i : -(i * 3);  // mix of negatives
        }
        din[N-1] = -999999;  // Last element should be ignored by the algorithm
        dsel_t width = 16;

        dout_t got = malloc_removed(din, width);
        dout_t exp = compute_expected(din, width);
        ++tests_run;
        if (got == exp) {
            ++tests_passed;
            std::cout << "Test 6 PASS: negative inputs, got=" << got << ", exp=" << exp << "\n";
        } else {
            std::cout << "Test 6 FAIL: negative inputs, got=" << got << ", exp=" << exp << "\n";
            std::cout << "din="; print_array(din); std::cout << "\n";
        }
        assert(got == exp);
    }

    {
        // Test 7: Large values to ensure accumulation in 64-bit is correct and no overflow in 32-bit inputs.
        din_t din[N];
        for (int i = 0; i < N; ++i) din[i] = 1000000000;  // 1e9
        din[N-1] = 123456789; // Ensure last element is ignored
        dsel_t width = N - 1; // All first 31 unshifted

        dout_t got = malloc_removed(din, width);
        dout_t exp = compute_expected(din, width);
        ++tests_run;
        if (got == exp) {
            ++tests_passed;
            std::cout << "Test 7 PASS: large values, got=" << got << ", exp=" << exp << "\n";
        } else {
            std::cout << "Test 7 FAIL: large values, got=" << got << ", exp=" << exp << "\n";
            std::cout << "din="; print_array(din); std::cout << "\n";
        }
        assert(got == exp);
    }

    {
        // Test 8: Verify last element is ignored by setting it to a large distinctive number and checking no impact.
        din_t din[N];
        for (int i = 0; i < N; ++i) din[i] = i + 100;  // baseline values
        dsel_t width = 8;

        // Baseline result
        dout_t got1 = malloc_removed(din, width);
        dout_t exp1 = compute_expected(din, width);

        // Change last element (index N-1) drastically; should not affect result
        din[N - 1] = 123456789;
        dout_t got2 = malloc_removed(din, width);
        dout_t exp2 = compute_expected(din, width);

        ++tests_run;
        if (got1 == exp1 && got2 == exp2 && got1 == got2) {
            ++tests_passed;
            std::cout << "Test 8 PASS: last element ignored, got=" << got2 << ", exp=" << exp2 << "\n";
        } else {
            std::cout << "Test 8 FAIL: last element handling mismatch.\n";
            std::cout << "Before change: got=" << got1 << ", exp=" << exp1 << "\n";
            std::cout << "After  change: got=" << got2 << ", exp=" << exp2 << "\n";
            std::cout << "din(after)="; print_array(din); std::cout << "\n";
        }
        assert(got1 == exp1);
        assert(got2 == exp2);
        assert(got1 == got2);
    }

    std::cout << "Summary: " << tests_passed << " / " << tests_run << " tests passed.\n";
    return (tests_passed == tests_run) ? 0 : 1;
}