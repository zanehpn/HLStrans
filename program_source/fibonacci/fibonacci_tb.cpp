// contents of fibonacci_tb.cpp
#include <iostream>
#include <cstdint>
#include <vector>
#include <cassert>
#include <ap_int.h>

// Forward declaration of the DUT (Device Under Test)
// Note: We do NOT include the source here to avoid duplicate symbol issues when linking with fibonacci.cpp.
void fibonacci(ap_uint<32> fib[]);

// We mirror the size used inside the DUT. If this changes in the source, update here accordingly.
static constexpr int TB_N = 1024;

int main() {
    // Allocate buffer for Fibonacci results
    static ap_uint<32> fib[TB_N];

    // Call the DUT to populate the Fibonacci sequence (mod 2^32)
    fibonacci(fib);

    // Test 1: Base cases
    // Verify first two Fibonacci numbers
    if (fib[0] != 0 || fib[1] != 1) {
        std::cerr << "Test 1 (Base cases) FAILED: fib[0]=" << (unsigned)fib[0]
                  << ", fib[1]=" << (unsigned)fib[1] << std::endl;
        return 1;
    } else {
        std::cout << "Test 1 (Base cases) PASSED." << std::endl;
    }

    // Test 2: First 10 known values of Fibonacci sequence
    // Validate a small prefix for correctness
    const uint32_t known10[10] = {0u, 1u, 1u, 2u, 3u, 5u, 8u, 13u, 21u, 34u};
    bool pass_first10 = true;
    for (int i = 0; i < 10; ++i) {
        uint32_t got = (uint32_t)fib[i];
        if (got != known10[i]) {
            std::cerr << "Test 2 FAILED at i=" << i << ": expected " << known10[i]
                      << ", got " << got << std::endl;
            pass_first10 = false;
            break;
        }
    }
    if (!pass_first10) return 1;
    std::cout << "Test 2 (First 10 values) PASSED." << std::endl;

    // Test 3: Full-sequence verification under modulo 2^32 arithmetic
    // Compute reference Fibonacci values modulo 2^32 and compare against DUT output
    std::vector<uint32_t> ref(TB_N, 0);
    ref[0] = 0u;
    if (TB_N > 1) ref[1] = 1u;
    for (int i = 2; i < TB_N; ++i) {
        uint64_t sum = (uint64_t)ref[i - 1] + (uint64_t)ref[i - 2];
        ref[i] = (uint32_t)(sum & 0xFFFFFFFFULL);
    }

    int mismatches = 0;
    for (int i = 0; i < TB_N; ++i) {
        uint32_t got = (uint32_t)fib[i];
        if (got != ref[i]) {
            if (mismatches < 10) {
                std::cerr << "Mismatch at i=" << i << ": expected " << ref[i]
                          << ", got " << got << std::endl;
            }
            ++mismatches;
        }
    }
    if (mismatches != 0) {
        std::cerr << "Test 3 FAILED: total mismatches = " << mismatches << std::endl;
        return 1;
    }
    std::cout << "Test 3 (Full modulo-2^32 verification) PASSED." << std::endl;

    // Test 4: Showcase of values around 32-bit wrap-around
    // Fibonacci numbers overflow 32-bit around F(48).
    // We print a small window to visually inspect wrap-around behavior.
    std::cout << "Test 4 (Wrap-around showcase): indices 45..52" << std::endl;
    for (int i = 45; i <= 52; ++i) {
        std::cout << "  F[" << i << "] = " << (uint32_t)fib[i] << std::endl;
    }
    std::cout << "All tests PASSED." << std::endl;
    return 0;
}