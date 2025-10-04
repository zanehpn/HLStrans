// contents of clock_gating_tb.cpp
#include <cstdint>
#include <iostream>
#include <array>
#include <string>
#include <random>
#include <limits>

// Declare the DUT (Device Under Test) function implemented in clock_gating.cpp
extern void clock_gating(uint32_t input[], uint32_t output[], uint32_t threshold);

constexpr std::size_t N = 1024;

// Helper to run a single test case: calls clock_gating and checks expected behavior
bool run_test(const std::string& name, std::array<uint32_t, N>& in, uint32_t threshold) {
    std::array<uint32_t, N> out{};
    clock_gating(in.data(), out.data(), threshold);

    // Verify: out[i] should be input[i] if input[i] > threshold, else 0
    std::size_t mismatches = 0;
    for (std::size_t i = 0; i < N; ++i) {
        uint32_t expected = (in[i] > threshold) ? in[i] : 0u;
        if (out[i] != expected) {
            if (mismatches < 5) {
                std::cerr << "Mismatch in test '" << name << "' at index " << i
                          << ": in=" << in[i]
                          << ", threshold=" << threshold
                          << ", got out=" << out[i]
                          << ", expected=" << expected << std::endl;
            }
            ++mismatches;
        }
    }

    if (mismatches == 0) {
        std::cout << "[PASS] " << name << " (threshold=" << threshold << ")\n";
        return true;
    } else {
        std::cerr << "[FAIL] " << name << " - mismatches: " << mismatches
                  << " (threshold=" << threshold << ")\n";
        return false;
    }
}

int main() {
    bool all_ok = true;

    // Test 1: Mixed values ramp, threshold in the middle
    // - Ensures values > threshold are passed through and <= threshold are zeroed.
    {
        std::array<uint32_t, N> in{};
        for (std::size_t i = 0; i < N; ++i) {
            in[i] = static_cast<uint32_t>(i); // 0..1023
        }
        uint32_t threshold = 1000; // values 1001..1023 should pass; 1000 should be zeroed
        all_ok &= run_test("Ramp with mid threshold", in, threshold);
    }

    // Test 2: All zeros input
    // - Regardless of threshold, output should be all zeros.
    {
        std::array<uint32_t, N> in{};
        for (auto& v : in) v = 0u;
        uint32_t threshold = 123u;
        all_ok &= run_test("All zeros input", in, threshold);
    }

    // Test 3: Threshold = 0
    // - Only strictly positive inputs should pass; zeros must be zeroed.
    {
        std::array<uint32_t, N> in{};
        for (std::size_t i = 0; i < N; ++i) {
            // Mix zeros and non-zeros: every third element is zero, others are positive
            in[i] = (i % 3 == 0) ? 0u : static_cast<uint32_t>(i + 1);
        }
        uint32_t threshold = 0u;
        all_ok &= run_test("Threshold zero (filter zeros only)", in, threshold);
    }

    // Test 4: Max threshold
    // - Threshold = UINT32_MAX ensures no value is greater, so output must be all zeros.
    {
        std::array<uint32_t, N> in{};
        for (std::size_t i = 0; i < N; ++i) {
            in[i] = static_cast<uint32_t>(i * 2654435761u); // some varied pattern
        }
        uint32_t threshold = std::numeric_limits<uint32_t>::max();
        all_ok &= run_test("Max threshold (all zero output)", in, threshold);
    }

    // Test 5: Near-maximum threshold edge cases
    // - Only UINT32_MAX should pass when threshold is UINT32_MAX - 1.
    {
        std::array<uint32_t, N> in{};
        for (auto& v : in) v = 1u;
        in[0] = std::numeric_limits<uint32_t>::max();         // should pass
        in[1] = std::numeric_limits<uint32_t>::max() - 1u;    // equal threshold -> zeroed
        in[2] = 0u;                                           // zeroed
        in[3] = 5u;                                           // zeroed
        uint32_t threshold = std::numeric_limits<uint32_t>::max() - 1u;
        all_ok &= run_test("Near-max threshold edge", in, threshold);
    }

    // Test 6: Random inputs with high threshold (0x7FFFFFFF)
    // - Ensures correct handling around signed/unsigned boundary; only values above 2^31-1 pass.
    {
        std::array<uint32_t, N> in{};
        std::mt19937 rng(42); // deterministic seed
        std::uniform_int_distribution<uint32_t> dist(0u, std::numeric_limits<uint32_t>::max());
        for (auto& v : in) v = dist(rng);
        uint32_t threshold = 0x7FFFFFFFu; // 2147483647
        all_ok &= run_test("Random inputs with high threshold", in, threshold);
    }

    // Test 7: Values equal to threshold should be zeroed (boundary check)
    {
        std::array<uint32_t, N> in{};
        uint32_t threshold = 500u;
        for (std::size_t i = 0; i < N; ++i) {
            // Cycle through [498, 499, 500, 501, 502] repeatedly
            in[i] = static_cast<uint32_t>(498 + (i % 5));
        }
        all_ok &= run_test("Boundary equality check (== threshold -> zero)", in, threshold);
    }

    if (all_ok) {
        std::cout << "All tests passed.\n";
        return 0;
    } else {
        std::cerr << "Some tests FAILED.\n";
        return 1;
    }
}