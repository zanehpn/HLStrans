// contents of lfsr_tb.cpp
// Standalone testbench for lfsr.cpp
// This testbench includes the DUT source and verifies its behavior against a software reference.

#include <iostream>
#include <iomanip>
#include <vector>
#include <cstdint>
#include <cassert>

// Include the DUT source directly (no main() defined there)
#include <ap_int.h>

#define LFSR_SIZE 1024

void lfsr(ap_uint<32> seed, ap_uint<32> lfsr_output[LFSR_SIZE]) ;

// Reference step function: mirrors the DUT's single LFSR update
static inline uint32_t ref_lfsr_step(uint32_t state) {
    uint32_t feedback = (state ^ (state >> 1) ^ (state >> 21) ^ (state >> 31)) & 1u;
    return (state >> 1) | (feedback << 31);
}

// Generate reference sequence (length N == LFSR_SIZE) from a seed
static std::vector<uint32_t> ref_lfsr_seq(uint32_t seed) {
    std::vector<uint32_t> seq(LFSR_SIZE);
    uint32_t s = seed;
    for (int i = 0; i < LFSR_SIZE; ++i) {
        s = ref_lfsr_step(s);
        seq[i] = s;
    }
    return seq;
}

// Compare DUT output vs reference and report first mismatch (if any)
static bool compare_sequences(const ap_uint<32> dut_out[LFSR_SIZE], const std::vector<uint32_t>& ref, const char* label) {
    for (int i = 0; i < LFSR_SIZE; ++i) {
        uint32_t got = static_cast<uint32_t>(dut_out[i]);
        uint32_t exp = ref[i];
        if (got != exp) {
            std::cerr << "[FAIL] " << label << ": mismatch at index " << i
                      << " expected=0x" << std::hex << std::setw(8) << std::setfill('0') << exp
                      << " got=0x" << std::setw(8) << got << std::dec << "\n";
            return false;
        }
    }
    return true;
}

// Print first few values from the sequence for human inspection
static void print_sample(const ap_uint<32> dut_out[LFSR_SIZE], const char* label, int count = 8) {
    std::cout << label << " first " << count << " outputs:\n  ";
    for (int i = 0; i < count && i < LFSR_SIZE; ++i) {
        std::cout << "0x" << std::hex << std::setw(8) << std::setfill('0')
                  << static_cast<uint32_t>(dut_out[i]) << (i + 1 == count ? "" : " ");
    }
    std::cout << std::dec << "\n";
}

int main() {
    bool all_ok = true;

    // Test Case 1: Seed = 0 (edge case, all zeros expected)
    // The all-zero state should remain zero in this LFSR configuration.
    {
        ap_uint<32> dut_out[LFSR_SIZE];
        ap_uint<32> seed = 0u;
        lfsr(seed, dut_out);

        // Verify all zeros
        for (int i = 0; i < LFSR_SIZE; ++i) {
            if (dut_out[i] != 0u) {
                std::cerr << "[FAIL] Seed=0: Expected all zeros; found non-zero at index " << i
                          << " value=0x" << std::hex << std::setw(8) << std::setfill('0')
                          << static_cast<uint32_t>(dut_out[i]) << std::dec << "\n";
                all_ok = false;
                break;
            }
        }
        print_sample(dut_out, "[INFO] Seed=0");
        assert(all_ok && "Seed=0 should yield all zeros");
    }

    // Test Case 2: Seed = 1 (basic functionality)
    // Compare DUT against the reference model for the entire sequence.
    {
        ap_uint<32> dut_out[LFSR_SIZE];
        uint32_t seed_u32 = 0x00000001u;
        ap_uint<32> seed = seed_u32;
        lfsr(seed, dut_out);

        auto ref = ref_lfsr_seq(seed_u32);
        bool ok = compare_sequences(dut_out, ref, "Seed=0x00000001");
        print_sample(dut_out, "[INFO] Seed=0x00000001");
        all_ok = all_ok && ok;
        assert(ok && "DUT output must match reference for seed=1");
    }

    // Test Case 3: Seed = 0xDEADBEEF (random-looking seed)
    // Ensures correctness across non-trivial seed values.
    {
        ap_uint<32> dut_out[LFSR_SIZE];
        uint32_t seed_u32 = 0xDEADBEEFu;
        ap_uint<32> seed = seed_u32;
        lfsr(seed, dut_out);

        auto ref = ref_lfsr_seq(seed_u32);
        bool ok = compare_sequences(dut_out, ref, "Seed=0xDEADBEEF");
        print_sample(dut_out, "[INFO] Seed=0xDEADBEEF");
        all_ok = all_ok && ok;
        assert(ok && "DUT output must match reference for seed=0xDEADBEEF");
    }

    // Test Case 4: Multiple seeds regression
    // Sweep a few additional seeds to improve coverage.
    {
        const uint32_t seeds[] = {0xFFFFFFFFu, 0x80000000u, 0x12345678u, 0xCAFEBABEu};
        for (size_t si = 0; si < sizeof(seeds)/sizeof(seeds[0]); ++si) {
            ap_uint<32> dut_out[LFSR_SIZE];
            ap_uint<32> seed = seeds[si];
            lfsr(seed, dut_out);

            auto ref = ref_lfsr_seq(seeds[si]);
            bool ok = compare_sequences(dut_out, ref, "Sweep seed");
            if (!ok) {
                all_ok = false;
            }
        }
    }

    if (all_ok) {
        std::cout << "[PASS] All LFSR tests passed.\n";
        return 0;
    } else {
        std::cerr << "[FAIL] Some LFSR tests failed.\n";
        return 1;
    }
}