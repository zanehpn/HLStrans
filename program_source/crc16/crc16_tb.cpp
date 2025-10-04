// contents of crc16_tb.cpp
#include <iostream>
#include <iomanip>
#include <random>
#include <cassert>
#include <cstdint>
#include <cstring>

// Include the DUT implementation to make this a standalone build.
#include "crc16.cpp"

// Reference CRC-16-CCITT (False) over exactly 16 bits of input data
static inline uint16_t ref_crc16(uint16_t x) {
    const uint16_t polynomial = 0x1021;
    uint16_t cur = 0xFFFF;
    for (int j = 0; j < 16; ++j) {
        bool bit = ((x >> (15 - j)) & 1) == 1;
        bool c15 = ((cur >> 15) & 1) == 1;
        cur <<= 1;
        if (c15 ^ bit) {
            cur ^= polynomial;
        }
    }
    return cur;
}

// Utility to verify results and report mismatches
static int verify_crc(const uint16_t data[ARRAY_SIZE],
                      const uint16_t got[ARRAY_SIZE],
                      const char* test_name,
                      bool print_samples = true) {
    int failures = 0;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        uint16_t exp = ref_crc16(data[i]);
        if (got[i] != exp) {
            if (failures < 10) {
                std::cout << "[FAIL] " << test_name
                          << " idx=" << i
                          << " data=0x" << std::hex << std::setw(4) << std::setfill('0') << data[i]
                          << " expected=0x" << std::setw(4) << exp
                          << " got=0x" << std::setw(4) << got[i]
                          << std::dec << std::setfill(' ') << "\n";
            }
            ++failures;
        }
    }
    if (failures == 0) {
        std::cout << "[PASS] " << test_name << " (all " << ARRAY_SIZE << " elements matched)\n";
        if (print_samples) {
            std::cout << "  Sample outputs:\n";
            for (int i = 0; i < 8 && i < ARRAY_SIZE; ++i) {
                std::cout << "    idx " << i
                          << " data=0x" << std::hex << std::setw(4) << std::setfill('0') << data[i]
                          << " crc=0x"  << std::setw(4) << ref_crc16(data[i])
                          << std::dec << std::setfill(' ') << "\n";
            }
        }
    } else {
        std::cout << "[FAIL] " << test_name << " total mismatches: " << failures << "\n";
    }
    return failures;
}

int main() {
    int total_failures = 0;

    // Test Case 1: Specific known patterns at the start, rest zeros.
    // - Verifies correctness for edge cases and typical values.
    {
        uint16_t data[ARRAY_SIZE] = {};
        uint16_t crc[ARRAY_SIZE]  = {};

        data[0] = 0x0000;  // all zeros
        data[1] = 0xFFFF;  // all ones
        data[2] = 0x1234;  // arbitrary value
        data[3] = 0x8000;  // MSB set
        data[4] = 0x0001;  // LSB set
        data[5] = 0xA5A5;  // alternating pattern

        uint16_t data_before[ARRAY_SIZE];
        std::memcpy(data_before, data, sizeof(data));

        crc16(data, crc);

        // Ensure input data was not modified by DUT
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            assert(data[i] == data_before[i]);
        }

        total_failures += verify_crc(data, crc, "TestCase1: Known patterns");
    }

    // Test Case 2: Incremental pattern (data[i] = i).
    // - Verifies behavior across a simple increasing sequence.
    {
        uint16_t data[ARRAY_SIZE];
        uint16_t crc[ARRAY_SIZE];

        for (int i = 0; i < ARRAY_SIZE; ++i) {
            data[i] = static_cast<uint16_t>(i & 0xFFFF);
            crc[i]  = 0;
        }

        crc16(data, crc);
        total_failures += verify_crc(data, crc, "TestCase2: Incremental pattern");
    }

    // Test Case 3: Pseudo-random data with fixed seed for reproducibility.
    // - Exercises a wide range of inputs.
    {
        uint16_t data[ARRAY_SIZE];
        uint16_t crc[ARRAY_SIZE];

        std::mt19937 rng(0xC0FFEE);
        std::uniform_int_distribution<uint32_t> dist(0, 0xFFFF);

        for (int i = 0; i < ARRAY_SIZE; ++i) {
            data[i] = static_cast<uint16_t>(dist(rng));
            crc[i]  = 0;
        }

        crc16(data, crc);
        total_failures += verify_crc(data, crc, "TestCase3: Pseudo-random data");
    }

    // Test Case 4: Stability across repeated calls on identical input.
    // - Ensures there is no internal persistent state affecting results.
    {
        uint16_t data[ARRAY_SIZE];
        uint16_t crc1[ARRAY_SIZE];
        uint16_t crc2[ARRAY_SIZE];

        for (int i = 0; i < ARRAY_SIZE; ++i) {
            data[i] = static_cast<uint16_t>((i * 37u + 0x1234u) & 0xFFFFu);
            crc1[i] = 0;
            crc2[i] = 0;
        }

        crc16(data, crc1);
        crc16(data, crc2);

        int mismatches = 0;
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            if (crc1[i] != crc2[i]) {
                if (mismatches < 10) {
                    std::cout << "[FAIL] TestCase4 mismatch idx " << i
                              << " data=0x" << std::hex << std::setw(4) << std::setfill('0') << data[i]
                              << " first=0x" << std::setw(4) << crc1[i]
                              << " second=0x" << std::setw(4) << crc2[i]
                              << std::dec << std::setfill(' ') << "\n";
                }
                ++mismatches;
            }
        }
        if (mismatches == 0) {
            std::cout << "[PASS] TestCase4: Stability across repeated calls\n";
        } else {
            std::cout << "[FAIL] TestCase4 total mismatches: " << mismatches << "\n";
        }
        total_failures += mismatches;
    }

    if (total_failures == 0) {
        std::cout << "All tests passed.\n";
        return 0;
    } else {
        std::cout << "Tests failed with " << total_failures << " total mismatches.\n";
        return 1;
    }
}