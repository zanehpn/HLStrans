// contents of hamming_distance_tb.cpp
#include <iostream>
#include <cstdint>
#include <cassert>
#include <random>

// Include the source under test. This avoids duplicate symbol issues since the source has no main().
#include "hamming_distance.cpp"

// Portable 32-bit population count for verification
static inline uint32_t popcount32(uint32_t x) {
    uint32_t count = 0;
    while (x) {
        x &= (x - 1);
        ++count;
    }
    return count;
}

int main() {
    // Allocate test arrays using the ARRAY_SIZE defined in the included source
    uint32_t a[ARRAY_SIZE];
    uint32_t b[ARRAY_SIZE];
    uint32_t res[ARRAY_SIZE];

    // Test 1: All zeros vs all zeros -> expected Hamming distance = 0 for all indices
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        a[i] = 0u;
        b[i] = 0u;
    }
    hamming_distance(a, b, res);
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        assert(res[i] == 0u);
    }
    std::cout << "Test 1 passed: zeros vs zeros -> all zeros\n";

    // Test 2: All zeros vs all ones -> XOR is 0xFFFFFFFF, expected distance = 32 for all indices
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        a[i] = 0u;
        b[i] = 0xFFFFFFFFu;
    }
    hamming_distance(a, b, res);
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        assert(res[i] == 32u);
    }
    std::cout << "Test 2 passed: zeros vs ones -> all 32\n";

    // Test 3: Identical patterns (a[i] = i, b[i] = i) -> expected distance = 0
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        a[i] = static_cast<uint32_t>(i);
        b[i] = static_cast<uint32_t>(i);
    }
    hamming_distance(a, b, res);
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        assert(res[i] == 0u);
    }
    std::cout << "Test 3 passed: identical arrays -> all zeros\n";

    // Test 4: One-bit difference per element -> expected distance = 1 at every index
    // Here, b[i] differs from a[i] by toggling one bit based on i%32
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        a[i] = static_cast<uint32_t>(i * 2654435761u); // some pattern
        b[i] = a[i] ^ (1u << (i % 32));
    }
    hamming_distance(a, b, res);
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        assert(res[i] == 1u);
    }
    std::cout << "Test 4 passed: single-bit differences -> all ones\n";

    // Test 5: Alternating bit patterns -> 0xAAAAAAAA vs 0x55555555 -> XOR is 0xFFFFFFFF => distance = 32
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        a[i] = 0xAAAAAAAAu;
        b[i] = 0x55555555u;
    }
    hamming_distance(a, b, res);
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        assert(res[i] == 32u);
    }
    std::cout << "Test 5 passed: alternating patterns -> all 32\n";

    // Test 6: Randomized verification against software popcount of XOR
    // Deterministic RNG seed for reproducibility
    std::mt19937 rng(123456789u);
    std::uniform_int_distribution<uint32_t> dist32(0u, 0xFFFFFFFFu);
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        a[i] = dist32(rng);
        b[i] = dist32(rng);
    }
    hamming_distance(a, b, res);
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        uint32_t expected = popcount32(a[i] ^ b[i]);
        if (res[i] != expected) {
            std::cerr << "Mismatch at index " << i
                      << ": a=" << a[i] << " b=" << b[i]
                      << " expected=" << expected << " got=" << res[i] << "\n";
            assert(false && "Randomized test mismatch");
        }
    }
    std::cout << "Test 6 passed: randomized inputs match software popcount\n";

    // Optional: print a few sample outputs from the last test for inspection
    std::cout << "Sample results (first 5 entries) from randomized test:\n";
    for (int i = 0; i < 5 && i < ARRAY_SIZE; ++i) {
        std::cout << "i=" << i << " a=0x" << std::hex << a[i]
                  << " b=0x" << b[i] << std::dec
                  << " hamming=" << res[i] << "\n";
    }

    std::cout << "All tests passed.\n";
    return 0;
}