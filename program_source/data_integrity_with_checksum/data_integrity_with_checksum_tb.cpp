// contents of data_integrity_with_checksum_tb.cpp
#include <iostream>
#include <cstdint>
#include <random>
#include <cstring>

// Mirror the macro and function signature from the source
#ifndef ARRAY_SIZE
#define ARRAY_SIZE 1024
#endif

// Forward declaration of the DUT (Device Under Test)
void data_integrity_with_checksum(uint32_t input_data[ARRAY_SIZE], uint32_t *checksum);

// Helper: compute expected checksum using 64-bit accumulation then modulo 2^32
static uint32_t compute_expected_sum(const uint32_t* data) {
    uint64_t acc = 0;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        acc += static_cast<uint64_t>(data[i]);
    }
    return static_cast<uint32_t>(acc);
}

// Helper: print result and check
static bool check_and_report(const char* test_name, uint32_t got, uint32_t expected) {
    bool pass = (got == expected);
    std::cout << test_name
              << " => expected: " << static_cast<uint64_t>(expected)
              << ", got: " << static_cast<uint64_t>(got)
              << " => " << (pass ? "PASS" : "FAIL") << std::endl;
    return pass;
}

int main() {
    bool all_passed = true;
    uint32_t data[ARRAY_SIZE];
    uint32_t checksum = 0;

    // Test 1: All zeros - sum should be 0
    std::memset(data, 0, sizeof(data));
    data_integrity_with_checksum(data, &checksum);
    all_passed &= check_and_report("Test 1: All zeros", checksum, 0u);

    // Test 2: All ones - sum should be ARRAY_SIZE
    for (int i = 0; i < ARRAY_SIZE; ++i) data[i] = 1u;
    data_integrity_with_checksum(data, &checksum);
    all_passed &= check_and_report("Test 2: All ones", checksum, static_cast<uint32_t>(ARRAY_SIZE));

    // Test 3: Sequential values 0..ARRAY_SIZE-1 - sum = n*(n-1)/2
    for (int i = 0; i < ARRAY_SIZE; ++i) data[i] = static_cast<uint32_t>(i);
    {
        uint64_t n = ARRAY_SIZE;
        uint32_t expected = static_cast<uint32_t>((n * (n - 1)) / 2);
        data_integrity_with_checksum(data, &checksum);
        all_passed &= check_and_report("Test 3: Sequential 0..N-1", checksum, expected);
    }

    // Test 4: All UINT32_MAX - validate wrap-around behavior (modulo 2^32)
    for (int i = 0; i < ARRAY_SIZE; ++i) data[i] = 0xFFFFFFFFu;
    {
        uint32_t expected = static_cast<uint32_t>((uint64_t)0xFFFFFFFFu * (uint64_t)ARRAY_SIZE);
        data_integrity_with_checksum(data, &checksum);
        all_passed &= check_and_report("Test 4: All UINT32_MAX (wrap-around)", checksum, expected);
    }

    // Test 5: Random data with fixed seed - deterministic expected sum
    {
        std::mt19937 rng(42);
        std::uniform_int_distribution<uint32_t> dist(0u, 0xFFFFFFFFu);
        for (int i = 0; i < ARRAY_SIZE; ++i) data[i] = dist(rng);
        uint32_t expected = compute_expected_sum(data);
        data_integrity_with_checksum(data, &checksum);
        all_passed &= check_and_report("Test 5: Random data (seed=42)", checksum, expected);
    }

    // Test 6: Partial non-zero (first 10 elements 1..10, rest zero) - sum should be 55
    std::memset(data, 0, sizeof(data));
    for (int i = 0; i < 10; ++i) data[i] = static_cast<uint32_t>(i + 1);
    {
        uint32_t expected = 55u; // 1+2+...+10
        data_integrity_with_checksum(data, &checksum);
        all_passed &= check_and_report("Test 6: Partial non-zero (first 10 = 1..10)", checksum, expected);
    }

    // Test 7: Alternating extremes 0x00000000 and 0xFFFFFFFF
    for (int i = 0; i < ARRAY_SIZE; ++i) data[i] = (i % 2 == 0) ? 0u : 0xFFFFFFFFu;
    {
        uint64_t count_max = ARRAY_SIZE / 2; // since ARRAY_SIZE is even (1024)
        uint32_t expected = static_cast<uint32_t>(count_max * 0xFFFFFFFFull);
        data_integrity_with_checksum(data, &checksum);
        all_passed &= check_and_report("Test 7: Alternating 0 and UINT32_MAX", checksum, expected);
    }

    std::cout << (all_passed ? "All tests PASSED" : "Some tests FAILED") << std::endl;
    return all_passed ? 0 : 1;
}