// contents of mersenne_twister_tb.cpp
#include <iostream>
#include <vector>
#include <cstdint>
#include <cassert>
#include <cstring>

// Include the implementation to avoid linker issues and to directly call the function
#include "mersenne_twister.cpp"

// Helper to print first k outputs for inspection
void print_first_k(const std::vector<uint32_t>& out, size_t k, const char* label) {
    std::cout << label << " (first " << k << " values):";
    for (size_t i = 0; i < k && i < out.size(); ++i) {
        std::cout << " " << out[i];
    }
    std::cout << std::endl;
}

int main() {
    // Test 1: Basic functionality with a common seed, print first 10 outputs
    {
        std::vector<uint32_t> out(N, 0);
        uint32_t seed = 5489; // classic MT19937 default seed
        mersenne_twister(seed, out.data());
        std::cout << "Test 1: Basic run with seed 5489" << std::endl;
        print_first_k(out, 10, "Output");
        // Sanity: confirm not all zeros
        bool any_nonzero = false;
        for (auto v : out) { if (v != 0) { any_nonzero = true; break; } }
        assert(any_nonzero && "Output should not be all zeros for non-zero seed");
    }

    // Test 2: Determinism - same seed should produce identical outputs
    {
        std::vector<uint32_t> out1(N, 0), out2(N, 0);
        uint32_t seed = 123456789;
        mersenne_twister(seed, out1.data());
        mersenne_twister(seed, out2.data());
        std::cout << "Test 2: Determinism with same seed" << std::endl;
        assert(std::memcmp(out1.data(), out2.data(), N * sizeof(uint32_t)) == 0 && "Outputs must match for identical seeds");
        std::cout << "Determinism check passed." << std::endl;
    }

    // Test 3: Different seeds should produce different sequences (at least half the elements differ)
    {
        std::vector<uint32_t> outA(N, 0), outB(N, 0);
        uint32_t seedA = 0;
        uint32_t seedB = 1;
        mersenne_twister(seedA, outA.data());
        mersenne_twister(seedB, outB.data());
        std::cout << "Test 3: Difference with seeds 0 and 1" << std::endl;
        size_t diff_count = 0;
        for (size_t i = 0; i < N; ++i) {
            if (outA[i] != outB[i]) diff_count++;
        }
        std::cout << "Differing elements: " << diff_count << " out of " << N << std::endl;
        assert(diff_count >= N / 2 && "At least half of the outputs should differ for nearby seeds");
    }

    // Test 4: Repetition property in this implementation - outputs repeat every 624 elements
    // Because the tempering uses MT[i % n], results at i and i+624 are identical for i < N-624
    {
        std::vector<uint32_t> out(N, 0);
        uint32_t seed = 42;
        mersenne_twister(seed, out.data());
        std::cout << "Test 4: Repetition every 624 due to use of i % n" << std::endl;
        const size_t period = 624;
        size_t checks = 0;
        for (size_t i = 0; i + period < N; ++i) {
            assert(out[i] == out[i + period] && "Outputs should repeat with period 624 in this implementation");
            checks++;
        }
        std::cout << "Checked " << checks << " pairs for repetition; all matched." << std::endl;
    }

    // Test 5: Bit spread sanity - ensure presence of both high-bit set and not set among the first 100 outputs
    {
        std::vector<uint32_t> out(N, 0);
        uint32_t seed = 987654321;
        mersenne_twister(seed, out.data());
        std::cout << "Test 5: Bit spread sanity check (MSB presence in first 100 outputs)" << std::endl;
        bool has_msb_set = false;
        bool has_msb_clear = false;
        const size_t k = 100;
        for (size_t i = 0; i < k && i < out.size(); ++i) {
            if (out[i] & 0x80000000u) has_msb_set = true;
            else has_msb_clear = true;
        }
        assert(has_msb_set && has_msb_clear && "Expect both MSB set and clear in the first 100 outputs");
        std::cout << "Bit spread check passed." << std::endl;
    }

    std::cout << "All tests passed." << std::endl;
    return 0;
}