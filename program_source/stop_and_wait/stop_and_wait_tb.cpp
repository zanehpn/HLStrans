// contents of stop_and_wait_tb.cpp
#include <cstdint>
#include <iostream>
#include <iomanip>
#include <cassert>
#include <random>
#include <cstring>

// Mirror ARRAY_SIZE and function prototype from stop_and_wait.cpp
#define ARRAY_SIZE 1024
extern void stop_and_wait(uint32_t input[ARRAY_SIZE], uint32_t output[ARRAY_SIZE]);

// Helper to compare arrays and report up to a few mismatches
static bool compare_arrays(const uint32_t* a, const uint32_t* b, size_t n, const char* test_name) {
    size_t mismatches = 0;
    for (size_t i = 0; i < n; ++i) {
        if (a[i] != b[i]) {
            if (mismatches < 5) {
                std::cerr << "Mismatch in " << test_name << " at index " << i
                          << ": expected 0x" << std::hex << std::setw(8) << std::setfill('0') << a[i]
                          << ", got 0x" << std::hex << std::setw(8) << std::setfill('0') << b[i]
                          << std::dec << "\n";
            }
            ++mismatches;
        }
    }
    if (mismatches) {
        std::cerr << test_name << " FAILED with " << mismatches << " mismatches\n";
        return false;
    }
    std::cout << test_name << " PASSED\n";
    return true;
}

int main() {
    uint32_t input[ARRAY_SIZE];
    uint32_t output[ARRAY_SIZE];

    int failures = 0;

    // Test 1: All zeros
    // Expectation: output equals input (all zeros)
    std::memset(input, 0, sizeof(input));
    for (size_t i = 0; i < ARRAY_SIZE; ++i) output[i] = 0xDEADBEEF;
    stop_and_wait(input, output);
    if (!compare_arrays(input, output, ARRAY_SIZE, "Test 1 (all zeros)")) ++failures;

    // Test 2: Sequential values
    // Expectation: output[i] == i
    for (size_t i = 0; i < ARRAY_SIZE; ++i) input[i] = static_cast<uint32_t>(i);
    for (size_t i = 0; i < ARRAY_SIZE; ++i) output[i] = 0xDEADBEEF;
    stop_and_wait(input, output);
    if (!compare_arrays(input, output, ARRAY_SIZE, "Test 2 (sequential values)")) ++failures;

    // Test 3: Alternating extreme patterns
    // Expectation: output mirrors input pattern 0xFFFFFFFF and 0x00000000 alternately
    for (size_t i = 0; i < ARRAY_SIZE; ++i) {
        input[i] = (i & 1) ? 0xFFFFFFFFu : 0x00000000u;
    }
    for (size_t i = 0; i < ARRAY_SIZE; ++i) output[i] = 0xDEADBEEF;
    stop_and_wait(input, output);
    if (!compare_arrays(input, output, ARRAY_SIZE, "Test 3 (alternating extremes)")) ++failures;

    // Test 4: Pseudo-random values (deterministic seed)
    // Expectation: output matches the randomly generated input values
    {
        std::mt19937 rng(12345u);
        std::uniform_int_distribution<uint32_t> dist(0u, 0xFFFFFFFFu);
        for (size_t i = 0; i < ARRAY_SIZE; ++i) input[i] = dist(rng);
        for (size_t i = 0; i < ARRAY_SIZE; ++i) output[i] = 0xDEADBEEF;
        stop_and_wait(input, output);
        if (!compare_arrays(input, output, ARRAY_SIZE, "Test 4 (pseudo-random values)")) ++failures;
    }

    // Test 5: Idempotency over repeated calls
    // Expectation: Calling stop_and_wait multiple times yields consistent results
    for (size_t i = 0; i < ARRAY_SIZE; ++i) input[i] = static_cast<uint32_t>(0xAA00AA00u ^ i);
    for (size_t i = 0; i < ARRAY_SIZE; ++i) output[i] = 0u;
    stop_and_wait(input, output);
    // Call again using previous output as new input; result should remain the same
    uint32_t output2[ARRAY_SIZE];
    for (size_t i = 0; i < ARRAY_SIZE; ++i) output2[i] = 0xDEADBEEF;
    stop_and_wait(output, output2);
    if (!compare_arrays(input, output2, ARRAY_SIZE, "Test 5 (repeated calls idempotency)")) ++failures;

    if (failures == 0) {
        std::cout << "All tests PASSED\n";
        return 0;
    } else {
        std::cerr << failures << " test(s) FAILED\n";
        return 1;
    }
}