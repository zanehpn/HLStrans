// contents of dma_controller_tb.cpp
#include <iostream>
#include <cstdint>
#include <limits>
#include <random>
#include <cstring>

// Include the source under test to bring in dma_controller() and SIZE
#include "dma_controller.cpp"

// Helper to preset the output array to a known value before running the DMA
static void preset_output(uint32_t output[8][SIZE], uint32_t value) {
    for (int ch = 0; ch < 8; ++ch) {
        for (int i = 0; i < SIZE; ++i) {
            output[ch][i] = value;
        }
    }
}

// Helper to verify output equals input after dma_controller()
static bool verify_copy(uint32_t input[8][SIZE], uint32_t output[8][SIZE], const char* test_name) {
    for (int ch = 0; ch < 8; ++ch) {
        for (int i = 0; i < SIZE; ++i) {
            if (output[ch][i] != input[ch][i]) {
                std::cout << "Test " << test_name << " FAILED at channel " << ch
                          << ", index " << i << ": expected " << input[ch][i]
                          << ", got " << output[ch][i] << std::endl;
                return false;
            }
        }
    }
    std::cout << "Test " << test_name << " PASSED" << std::endl;
    return true;
}

// Fill input with a simple sequential pattern per channel
static void fill_sequential(uint32_t input[8][SIZE]) {
    for (int ch = 0; ch < 8; ++ch) {
        for (int i = 0; i < SIZE; ++i) {
            input[ch][i] = static_cast<uint32_t>(ch * 100000 + i);
        }
    }
}

// Fill input with edge case patterns: zeros, max values, alternating bit patterns, etc.
static void fill_edge_patterns(uint32_t input[8][SIZE]) {
    // Channel 0: all zeros
    for (int i = 0; i < SIZE; ++i) input[0][i] = 0u;

    // Channel 1: all max uint32_t
    for (int i = 0; i < SIZE; ++i) input[1][i] = std::numeric_limits<uint32_t>::max();

    // Channel 2: alternating 0xAAAAAAAA and 0x55555555
    for (int i = 0; i < SIZE; ++i) input[2][i] = (i & 1) ? 0xAAAAAAAAu : 0x55555555u;

    // Channel 3: incremental index
    for (int i = 0; i < SIZE; ++i) input[3][i] = static_cast<uint32_t>(i);

    // Channel 4: reverse index pattern (SIZE - 1 - i)
    for (int i = 0; i < SIZE; ++i) input[4][i] = static_cast<uint32_t>(SIZE - 1 - i);

    // Channel 5: constant value
    for (int i = 0; i < SIZE; ++i) input[5][i] = 0xDEADBEEFu;

    // Channel 6: XOR pattern
    for (int i = 0; i < SIZE; ++i) input[6][i] = static_cast<uint32_t>(i ^ 0x13579BDFu);

    // Channel 7: decreasing constant pattern
    for (int i = 0; i < SIZE; ++i) input[7][i] = static_cast<uint32_t>(0xCAFEBABEu - i);
}

// Fill input with deterministic random values (seeded)
static void fill_random(uint32_t input[8][SIZE], uint32_t seed) {
    std::mt19937 rng(seed);
    std::uniform_int_distribution<uint32_t> dist(0u, std::numeric_limits<uint32_t>::max());
    for (int ch = 0; ch < 8; ++ch) {
        for (int i = 0; i < SIZE; ++i) {
            input[ch][i] = dist(rng);
        }
    }
}

int main() {
    // Declare input/output buffers
    uint32_t input[8][SIZE];
    uint32_t output[8][SIZE];

    bool all_passed = true;

    // Test Case 1: Sequential pattern copy
    // Purpose: Basic functionality check that each element is copied to the corresponding output location.
    fill_sequential(input);
    preset_output(output, 0xFFFFFFFFu); // Pre-fill output to ensure DMA overwrites all values
    dma_controller(input, output);
    all_passed &= verify_copy(input, output, "SequentialPattern");

    // Test Case 2: Edge patterns
    // Purpose: Exercise extremes and bit patterns (zeros, max values, alternating bits) across channels.
    fill_edge_patterns(input);
    preset_output(output, 0x0u);
    dma_controller(input, output);
    all_passed &= verify_copy(input, output, "EdgePatterns");

    // Test Case 3: Random patterns (deterministic seed)
    // Purpose: Stress with varied data values to ensure correct copying in general cases.
    fill_random(input, 42u);
    preset_output(output, 0xAAAAAAAAu);
    dma_controller(input, output);
    all_passed &= verify_copy(input, output, "RandomPatternSeed42");

    // Test Case 4: Different random seed for additional coverage
    // Purpose: Additional randomized data to further validate the copying behavior.
    fill_random(input, 123456u);
    preset_output(output, 0x55555555u);
    dma_controller(input, output);
    all_passed &= verify_copy(input, output, "RandomPatternSeed123456");

    std::cout << (all_passed ? "ALL TESTS PASSED" : "SOME TESTS FAILED") << std::endl;
    return all_passed ? 0 : 1;
}