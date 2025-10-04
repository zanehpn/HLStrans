// contents of loop_imperfect_tb.cpp
#include <iostream>
#include <cassert>
#include <cstdlib>

// Include the DUT source to bring in typedefs, N, and loop_imperfect()
#include "loop_imperfect.cpp"

// Reference model that mirrors the DUT behavior using the same bit-accurate types
static void compute_ref(const din_t A[N], dout_t B[N]) {
    for (int i = 0; i < N; ++i) {
        dint_t acc = 0;
        for (int j = 0; j < N; ++j) {
            acc += A[j] * j;
        }
        if ((i % 2) == 0) {
            B[i] = acc / 20; // same division as DUT
        } else {
            B[i] = 0;
        }
    }
}

static void print_array(const char* name, const dout_t B[N]) {
    std::cout << name << ": [";
    for (int i = 0; i < N; ++i) {
        std::cout << (int)B[i];
        if (i != N - 1) std::cout << ", ";
    }
    std::cout << "]\n";
}

static void run_and_check(const char* test_name, const din_t A[N]) {
    dout_t B_dut[N];
    dout_t B_ref[N];

    // Run DUT
    loop_imperfect(const_cast<din_t*>(A), B_dut);
    // Run reference
    compute_ref(A, B_ref);

    // Compare element-wise
    bool pass = true;
    for (int i = 0; i < N; ++i) {
        if (B_dut[i] != B_ref[i]) {
            pass = false;
            std::cerr << "Mismatch at index " << i
                      << " DUT=" << (int)B_dut[i]
                      << " REF=" << (int)B_ref[i] << "\n";
        }
    }

    // Print a brief summary for visual inspection
    std::cout << "Test: " << test_name << " => " << (pass ? "PASS" : "FAIL") << "\n";
    if (!pass) {
        print_array("DUT", B_dut);
        print_array("REF", B_ref);
    }
    assert(pass && "Test failed!");
}

int main() {
    // Test 1: All zeros - Expect all outputs zero
    {
        din_t A[N];
        for (int i = 0; i < N; ++i) A[i] = (din_t)0;
        run_and_check("All zeros", A);
    }

    // Test 2: All ones - Expect even indices to be sum(j)/20 = 190/20 = 9, odd indices 0
    {
        din_t A[N];
        for (int i = 0; i < N; ++i) A[i] = (din_t)1;
        run_and_check("All ones", A);
    }

    // Test 3: A[j] = j (with ap_int<5> wrapping at 5 bits; j>=16 becomes negative)
    // This checks correct handling of ap_int wrapping and multiplication
    {
        din_t A[N];
        for (int i = 0; i < N; ++i) A[i] = (din_t)i;
        run_and_check("A[j]=j (5-bit wrap)", A);
    }

    // Test 4: Alternating extremes to stress accumulator range and wrapping
    // Even indices 15, odd indices -16 (both fit in ap_int<5>)
    {
        din_t A[N];
        for (int i = 0; i < N; ++i) A[i] = (din_t)((i % 2 == 0) ? 15 : -16);
        run_and_check("Alternating 15/-16", A);
    }

    // Test 5: All -1 - Expect even indices to be -190/20 = -9, odd indices 0
    {
        din_t A[N];
        for (int i = 0; i < N; ++i) A[i] = (din_t)(-1);
        run_and_check("All -1", A);
    }

    // Test 6: Pseudo-random values in range [-16, 15] to cover general behavior
    {
        din_t A[N];
        std::srand(12345);
        for (int i = 0; i < N; ++i) {
            int r = std::rand();
            // Map to [-16, 15]
            int val = (r % 32) - 16;
            A[i] = (din_t)val;
        }
        run_and_check("Random pattern [-16,15]", A);
    }

    std::cout << "All tests passed.\n";
    return 0;
}