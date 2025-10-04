// contents of loop_perfect_tb.cpp
#include <iostream>
#include <vector>
#include <string>
#include <cassert>

// Include the DUT source to get types (din_t, dout_t, N) and the loop_perfect function
#include "loop_perfect.cpp"

// Helper: compute expected output using the same ap_int arithmetic semantics
static std::vector<dout_t> compute_expected(const din_t A[N]) {
    std::vector<dout_t> expected(N);
    // Compute the accumulated sum acc = sum_{j=0..19} A[j] * j using ap_int semantics
    dint_t acc = 0;
    for (int j = 0; j < 20; ++j) {
        if (j == 0) acc = 0;
        acc += A[j] * j;
    }

    for (int i = 0; i < 20; ++i) {
        if ((i % 2) == 0) {
            expected[i] = acc / 20;
        } else {
            expected[i] = 0;
        }
    }
    return expected;
}

// Helper: run a single test case, compare outputs, and print the result details
static void run_test(const std::string& name, const din_t A_in[N]) {
    std::cout << "Running test: " << name << std::endl;

    // Call the DUT
    dout_t B_out[N];
    loop_perfect(const_cast<din_t&>(A_in[0]) ? const_cast<din_t*>(A_in) : const_cast<din_t*>(A_in), B_out); // const_cast to satisfy function signature

    // Compute expected
    std::vector<dout_t> expected = compute_expected(A_in);

    // Compare and print
    bool pass = true;
    for (int i = 0; i < N; ++i) {
        int got = B_out[i].to_int();
        int exp = expected[i].to_int();
        if (got != exp) {
            pass = false;
            std::cout << "  Mismatch at i=" << i << " : got " << got << ", expected " << exp << std::endl;
        }
    }

    // Print a brief summary: expected even/odd behavior
    std::cout << "  Output B (first 10 shown): ";
    for (int i = 0; i < 10; ++i) {
        std::cout << B_out[i].to_int() << (i < 9 ? ", " : "");
    }
    std::cout << std::endl;

    // Assert pass
    assert(pass && "Test failed: outputs do not match expected values");
    std::cout << "  Test PASSED" << std::endl << std::endl;
}

int main() {
    // Test 1: All ones
    // Purpose: Simple case; sum = sum(j) = 190; even indices should be 190/20 = 9; odd indices zero.
    {
        din_t A[N];
        for (int j = 0; j < N; ++j) A[j] = 1;
        run_test("All ones (A[j]=1)", A);
    }

    // Test 2: All negative ones
    // Purpose: Negative accumulation; sum = -190; even indices should be -190/20 = -9; odd indices zero.
    {
        din_t A[N];
        for (int j = 0; j < N; ++j) A[j] = -1;
        run_test("All negative ones (A[j]=-1)", A);
    }

    // Test 3: Alternating pattern
    // Purpose: Mixed values; A[j] = 2 for even j, 1 for odd j; ensures arithmetic and parity behavior.
    {
        din_t A[N];
        for (int j = 0; j < N; ++j) A[j] = (j % 2 == 0) ? din_t(2) : din_t(1);
        run_test("Alternating pattern (A[j]=2 if even else 1)", A);
    }

    // Test 4: All zeros
    // Purpose: Accumulation should be zero; all even indices should be zero; odd indices also zero.
    {
        din_t A[N];
        for (int j = 0; j < N; ++j) A[j] = 0;
        run_test("All zeros (A[j]=0)", A);
    }

    // Test 5: Overflow on output (B)
    // Purpose: Use A[j]=4 to force B even to be 760/20=38 which exceeds 6-bit signed max (31), testing wrap behavior.
    {
        din_t A[N];
        for (int j = 0; j < N; ++j) A[j] = 4;
        run_test("Overflow wrap case (A[j]=4)", A);
    }

    // Test 6: Custom mixed values
    // Purpose: More varied input values within range [-3..3], checking correctness and parity behavior.
    {
        din_t A[N] = {
            -1, 0, 1,  2, -2,
             3,-3, 1,  0,  1,
             1,-1, 2, -2,  3,
            -3, 2,-1,  0,  1
        };
        run_test("Custom mixed values", A);
    }

    std::cout << "All tests completed successfully." << std::endl;
    return 0;
}