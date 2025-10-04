// contents of loop_var_tb.cpp

#include <iostream>
#include <cassert>

// Include the DUT source to avoid duplicate symbol/link errors
#include "loop_var.cpp"

// Reference model: compute expected sum using same width truncation semantics
static int ref_sum(const din_t A[N], unsigned width_in) {
    dsel_t w_trunc = width_in;             // Truncate to 5-bit as in DUT
    unsigned eff_w = (unsigned)w_trunc;    // Effective loop bound
    dout_t acc = 0;
    for (unsigned i = 0; i < eff_w; ++i) {
        acc += (dout_t)A[i];
    }
    return (int)acc; // Convert to plain int for comparison/printing
}

// Helper to run a single test case
static bool run_test(const char* name, const din_t A_in[N], unsigned width_in) {
    // Make a local copy to pass to DUT
    din_t A[N];
    for (int i = 0; i < N; ++i) A[i] = A_in[i];

    dsel_t w = width_in; // Apply truncation to 5-bit
    dout_t dut_out = loop_var(A, w);
    int dut_val = (int)dut_out;
    int exp_val = ref_sum(A, width_in);
    unsigned eff_w = (unsigned)w;

    std::cout << "[TEST] " << name
              << " | width_in=" << width_in
              << " (effective=" << eff_w << ")"
              << " | DUT=" << dut_val
              << " | EXP=" << exp_val
              << (dut_val == exp_val ? " | PASS" : " | FAIL")
              << std::endl;

    return dut_val == exp_val;
}

int main() {
    int pass = 0, fail = 0;

    // Test 1: width = 0 should return zero regardless of data
    {
        din_t A[N];
        for (int i = 0; i < N; ++i) A[i] = i + 1; // arbitrary data
        if (run_test("Zero width", A, 0)) pass++; else fail++;
    }

    // Test 2: width = 1, sum should equal first element
    {
        din_t A[N] = {};
        A[0] = 5;
        if (run_test("Single element", A, 1)) pass++; else fail++;
    }

    // Test 3: width = 5, ascending data 1..N, expected sum 1+2+3+4+5 = 15
    {
        din_t A[N];
        for (int i = 0; i < N; ++i) A[i] = i + 1;
        if (run_test("Ascending first five", A, 5)) pass++; else fail++;
    }

    // Test 4: width = 31 (max for 5-bit without wrap), all elements = 127
    // Expected sum = 31 * 127 = 3937 (fits in 13-bit signed)
    {
        din_t A[N];
        for (int i = 0; i < N; ++i) A[i] = 127;
        if (run_test("Max positive values, width=31", A, 31)) pass++; else fail++;
    }

    // Test 5: width input = 32, which wraps to 0 in 5-bit (ap_uint<5>)
    // Expected effective width = 0 => sum = 0
    {
        din_t A[N];
        for (int i = 0; i < N; ++i) A[i] = 127;
        if (run_test("Width overflow to zero (32 -> 0)", A, 32)) pass++; else fail++;
    }

    // Test 6: width input = 100 -> 100 mod 32 = 4 (effective width 4)
    // Use all 7s: expected sum = 28
    {
        din_t A[N];
        for (int i = 0; i < N; ++i) A[i] = 7;
        if (run_test("Width overflow (100 -> 4)", A, 100)) pass++; else fail++;
    }

    // Test 7: Mixed positive/negative values to check signed accumulation
    // Data: [-10, 20, -30, 40, -50, 60], width=6 -> sum = 30
    {
        din_t A[N] = {};
        A[0] = -10; A[1] = 20; A[2] = -30; A[3] = 40; A[4] = -50; A[5] = 60;
        if (run_test("Mixed signed values", A, 6)) pass++; else fail++;
    }

    std::cout << "Summary: " << pass << " passed, " << fail << " failed." << std::endl;
    // Ensure all tests passed
    assert(fail == 0 && "One or more tests failed.");
    return fail == 0 ? 0 : 1;
}