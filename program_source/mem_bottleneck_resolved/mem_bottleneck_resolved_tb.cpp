// contents of mem_bottleneck_resolved_tb.cpp
#include <iostream>
#include <cassert>
#include <random>
#include <cstdlib>

// Include the DUT implementation (provides din_t, dout_t, N, and mem_bottleneck_resolved)
#include "mem_bottleneck_resolved.cpp"

// Compute expected result using the derived formula: S = sum_{i=2..N-1} (mem[i] + mem[i-1] + mem[i-2])
static dout_t expected_formula(const din_t* mem) {
    long long s = 0;
    // Sum mem[i] for i = 2..N-1
    for (int k = 2; k < N; ++k) s += (int)mem[k];
    // Sum mem[i-1] for i = 2..N-1 -> indices 1..N-2
    for (int k = 1; k < N - 1; ++k) s += (int)mem[k];
    // Sum mem[i-2] for i = 2..N-1 -> indices 0..N-3
    for (int k = 0; k < N - 2; ++k) s += (int)mem[k];
    return (dout_t)s; // ap_int handles wrapping to 16-bit signed
}

// Compute expected result by replicating the sliding window loop logic
static dout_t expected_loop(const din_t* mem) {
    din_t t0 = mem[0];
    din_t t1 = mem[1];
    dout_t s = 0;
    for (int i = 2; i < N; ++i) {
        din_t t2 = mem[i];
        s += (t2 + t1 + t0);
        t0 = t1;
        t1 = t2;
    }
    return s;
}

// Helper to run a single test case and check against expectations
static void run_test(const char* name, din_t* mem, bool verbose = true) {
    dout_t dut = mem_bottleneck_resolved(mem);
    dout_t exp = expected_formula(mem);
    dout_t exp_loop = expected_loop(mem);

    if (verbose) {
        std::cout << "[TEST] " << name
                  << " | DUT=" << (int)dut
                  << " | EXP(formula)=" << (int)exp
                  << " | EXP(loop)=" << (int)exp_loop
                  << std::endl;
    }

    // Validate DUT against both formulas
    assert(dut == exp);
    assert(exp == exp_loop);
}

int main() {
    // Test 1: All zeros - expected sum is zero
    {
        din_t mem[N];
        for (int i = 0; i < N; ++i) mem[i] = (din_t)0;
        run_test("All zeros", mem);
    }

    // Test 2: All ones - each triple sums to 3, repeated (N-2) times
    {
        din_t mem[N];
        for (int i = 0; i < N; ++i) mem[i] = (din_t)1;
        run_test("All ones", mem);
    }

    // Test 3: Increasing sequence 0..127 - typical positive pattern
    {
        din_t mem[N];
        for (int i = 0; i < N; ++i) mem[i] = (din_t)i;
        run_test("Increasing 0..127", mem);
    }

    // Test 4: Alternating negatives and positives to stress sign handling
    {
        din_t mem[N];
        for (int i = 0; i < N; ++i) {
            mem[i] = (i % 2 == 0) ? (din_t)(-5) : (din_t)7;
        }
        run_test("Alternating -5, 7", mem);
    }

    // Test 5: Maximum positive values (127) - exercises positive overflow behavior
    {
        din_t mem[N];
        for (int i = 0; i < N; ++i) mem[i] = (din_t)127;
        run_test("All max 127", mem);
    }

    // Test 6: Minimum negative values (-128) - exercises negative overflow behavior
    {
        din_t mem[N];
        for (int i = 0; i < N; ++i) mem[i] = (din_t)(-128);
        run_test("All min -128", mem);
    }

    // Test 7: Randomized tests - multiple random vectors within [-128, 127]
    {
        std::mt19937 rng(12345);
        std::uniform_int_distribution<int> dist(-128, 127);
        for (int t = 0; t < 10; ++t) {
            din_t mem[N];
            for (int i = 0; i < N; ++i) {
                mem[i] = (din_t)dist(rng);
            }
            // Reduced verbosity for random tests
            run_test("Random case", mem, false);
        }
        std::cout << "[TEST] 10 random cases passed." << std::endl;
    }

    std::cout << "All tests passed." << std::endl;
    return 0;
}