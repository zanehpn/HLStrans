// contents of csprng_tb.cpp
// Standalone C++ testbench for csprng.cpp

#include <iostream>
#include <iomanip>
#include <vector>
#include <cstdint>
#include <cstring>

// Include the source under test (no main() defined there)
#include "csprng.cpp"

// Helper: generate expected LCG sequence with 32-bit unsigned arithmetic
static void generate_expected(uint32_t seed, std::vector<uint32_t>& exp) {
    exp.resize(SIZE);
    const uint32_t multiplier = 1664525u;
    const uint32_t increment  = 1013904223u;
    uint32_t state = seed;
    for (int i = 0; i < SIZE; ++i) {
        // Unsigned 32-bit arithmetic naturally wraps modulo 2^32
        state = state * multiplier + increment;
        exp[i] = state;
    }
}

// Run a single test case for a given seed: compare full 1024 outputs against software model
static bool run_full_compare(uint32_t seed, bool print_samples = true) {
    // DUT output buffer
    ap_uint<32> dut_out[SIZE];
    // Run the DUT
    csprng(ap_uint<32>(seed), dut_out);

    // Generate expected results
    std::vector<uint32_t> expected;
    generate_expected(seed, expected);

    // Compare all outputs
    bool pass = true;
    for (int i = 0; i < SIZE; ++i) {
        uint32_t got = dut_out[i].to_uint();
        if (got != expected[i]) {
            if (pass) {
                std::cout << "Mismatch for seed 0x" << std::hex << std::setw(8) << std::setfill('0')
                          << seed << std::dec << ":\n";
            }
            std::cout << "  idx " << i << " expected 0x" << std::hex << std::setw(8) << std::setfill('0')
                      << expected[i] << " got 0x" << std::setw(8) << got << std::dec << "\n";
            pass = false;
        }
    }

    // Print a few sample outputs for visual inspection
    if (print_samples) {
        std::cout << "Seed 0x" << std::hex << std::setw(8) << std::setfill('0') << seed
                  << std::dec << " first 5 outputs:\n";
        for (int i = 0; i < 5 && i < SIZE; ++i) {
            std::cout << "  [" << i << "] 0x" << std::hex << std::setw(8) << std::setfill('0')
                      << dut_out[i].to_uint() << std::dec << "\n";
        }
    }

    if (pass) {
        std::cout << "PASS: All " << SIZE << " outputs matched expected for seed 0x"
                  << std::hex << std::setw(8) << std::setfill('0') << seed << std::dec << "\n";
    }
    return pass;
}

// Test determinism: same seed should produce identical sequences on repeated calls
static bool run_determinism_check(uint32_t seed) {
    ap_uint<32> out1[SIZE];
    ap_uint<32> out2[SIZE];

    csprng(ap_uint<32>(seed), out1);
    csprng(ap_uint<32>(seed), out2);

    for (int i = 0; i < SIZE; ++i) {
        if (out1[i] != out2[i]) {
            std::cout << "Determinism check FAILED at idx " << i << " for seed 0x"
                      << std::hex << std::setw(8) << std::setfill('0') << seed
                      << std::dec << ": out1=0x" << std::hex << std::setw(8) << out1[i].to_uint()
                      << " out2=0x" << std::setw(8) << out2[i].to_uint() << std::dec << "\n";
            return false;
        }
    }
    std::cout << "PASS: Determinism check for seed 0x" << std::hex << std::setw(8) << std::setfill('0')
              << seed << std::dec << "\n";
    return true;
}

// Test that different seeds produce different first outputs (basic sanity check)
static bool run_seed_sensitivity_check(uint32_t seed_a, uint32_t seed_b) {
    ap_uint<32> out_a[SIZE];
    ap_uint<32> out_b[SIZE];
    csprng(ap_uint<32>(seed_a), out_a);
    csprng(ap_uint<32>(seed_b), out_b);

    uint32_t first_a = out_a[0].to_uint();
    uint32_t first_b = out_b[0].to_uint();

    if (first_a == first_b) {
        std::cout << "Seed sensitivity FAILED: seeds 0x" << std::hex << std::setw(8) << std::setfill('0')
                  << seed_a << " and 0x" << std::setw(8) << seed_b << std::dec
                  << " produced identical first output 0x" << std::hex << std::setw(8)
                  << first_a << std::dec << "\n";
        return false;
    }
    std::cout << "PASS: Seed sensitivity check: first outputs differ for seeds 0x"
              << std::hex << std::setw(8) << std::setfill('0') << seed_a << " and 0x"
              << std::setw(8) << seed_b << std::dec << "\n";
    return true;
}

int main() {
    bool all_pass = true;

    // Test 1: Basic functional test with seed = 0 (common baseline)
    all_pass &= run_full_compare(0u);

    // Test 2: Another simple seed (1) to ensure correct progression
    all_pass &= run_full_compare(1u);

    // Test 3: Large random-looking seed
    all_pass &= run_full_compare(0x12345678u);

    // Test 4: Seed with many set bits (edge-like)
    all_pass &= run_full_compare(0xFFFFFFFFu);

    // Test 5: Another arbitrary seed
    all_pass &= run_full_compare(0xCAFEBABEu);

    // Determinism checks for a couple of seeds
    all_pass &= run_determinism_check(0u);
    all_pass &= run_determinism_check(0xCAFEBABEu);

    // Seed sensitivity checks (ensure differing seeds don't trivially collide at first output)
    all_pass &= run_seed_sensitivity_check(1u, 2u);
    all_pass &= run_seed_sensitivity_check(0xAAAAAAAAu, 0x55555555u);

    if (all_pass) {
        std::cout << "All tests PASSED.\n";
        return 0;
    } else {
        std::cout << "Some tests FAILED.\n";
        return 1;
    }
}