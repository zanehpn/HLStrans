// contents of crc32_tb.cpp
#include <iostream>
#include <iomanip>
#include <cstdint>
#include <cstring>
#include <random>
#include <vector>
#include <string>
#define DATA_SIZE 1024
// Include the DUT source so we can call crc32() directly and share DATA_SIZE
void crc32(uint32_t data[DATA_SIZE], uint32_t &crc);

// Reference implementation matching the DUT's algorithm and DATA_SIZE
static uint32_t crc32_ref_fixed(const uint32_t data[DATA_SIZE]) {
    const uint32_t polynomial = 0xEDB88320;
    uint32_t crc = 0xFFFFFFFF;
    for (int i = 0; i < DATA_SIZE; ++i) {
        crc ^= data[i];
        for (int j = 0; j < 8; ++j) {
            if (crc & 1) {
                crc = (crc >> 1) ^ polynomial;
            } else {
                crc >>= 1;
            }
        }
    }
    return crc ^ 0xFFFFFFFF;
}

// Reference implementation that processes exactly 'len' entries (useful for known CRCs like "123456789")
static uint32_t crc32_ref_len(const uint32_t* data, size_t len) {
    const uint32_t polynomial = 0xEDB88320;
    uint32_t crc = 0xFFFFFFFF;
    for (size_t i = 0; i < len; ++i) {
        crc ^= data[i];
        for (int j = 0; j < 8; ++j) {
            if (crc & 1) {
                crc = (crc >> 1) ^ polynomial;
            } else {
                crc >>= 1;
            }
        }
    }
    return crc ^ 0xFFFFFFFF;
}

// Utility to pretty-print 32-bit hex with leading zeros
static std::string to_hex32(uint32_t v) {
    std::ostringstream oss;
    oss << "0x" << std::hex << std::setw(8) << std::setfill('0') << v << std::dec;
    return oss.str();
}

static bool run_and_check(const char* name, uint32_t data[DATA_SIZE]) {
    uint32_t crc_dut = 0;
    crc32(data, crc_dut);  // DUT call

    uint32_t crc_ref = crc32_ref_fixed(data); // Reference expected

    bool pass = (crc_dut == crc_ref);
    std::cout << "[TEST] " << name
              << " -> DUT: " << to_hex32(crc_dut)
              << ", REF: " << to_hex32(crc_ref)
              << " => " << (pass ? "PASS" : "FAIL") << "\n";

    // Sanity check: calling DUT twice over the same input should produce the same result
    uint32_t crc_dut_again = 0;
    crc32(data, crc_dut_again);
    bool repeat_ok = (crc_dut_again == crc_dut);
    if (!repeat_ok) {
        std::cout << "       Repeated call mismatch: " << to_hex32(crc_dut_again) << " != " << to_hex32(crc_dut) << "\n";
        pass = false;
    }
    return pass;
}

int main() {
    int total = 0;
    int fails = 0;

    // Test 1: All zeros
    // This checks behavior on a uniform input and validates initial/final XOR handling.
    {
        uint32_t data[DATA_SIZE];
        for (int i = 0; i < DATA_SIZE; ++i) data[i] = 0;
        total++;
        if (!run_and_check("All zeros (1024 zero bytes)", data)) fails++;
    }

    // Test 2: Incrementing low 8-bit pattern (0x00, 0x01, ..., 0xFF, repeat)
    // Exercises typical byte-wise processing; higher 24 bits are zero for each entry.
    {
        uint32_t data[DATA_SIZE];
        for (int i = 0; i < DATA_SIZE; ++i) data[i] = static_cast<uint32_t>(i & 0xFF);
        total++;
        if (!run_and_check("Incrementing byte pattern (low 8 bits only)", data)) fails++;
    }

    // Test 3: Known ASCII string "123456789" at the start, rest zeros
    // We also show the classic CRC32 of exactly "123456789" (without padding) for reference.
    {
        uint32_t data[DATA_SIZE];
        for (int i = 0; i < DATA_SIZE; ++i) data[i] = 0;

        const char* msg = "123456789";
        size_t mlen = std::strlen(msg);
        for (size_t i = 0; i < mlen && i < static_cast<size_t>(DATA_SIZE); ++i) {
            // Store ASCII byte in low 8 bits
            data[i] = static_cast<uint32_t>(static_cast<uint8_t>(msg[i]));
        }

        total++;
        if (!run_and_check("Prefix: \"123456789\" then zeros", data)) fails++;

        // Compute classic CRC32 for exactly 9 bytes (no padding) using the same bitwise reference
        uint32_t msg_bytes[9];
        for (size_t i = 0; i < mlen; ++i) {
            msg_bytes[i] = static_cast<uint32_t>(static_cast<uint8_t>(msg[i]));
        }
        uint32_t crc_msg_only = crc32_ref_len(msg_bytes, mlen);
        std::cout << "       Classic CRC32(\"123456789\") = " << to_hex32(crc_msg_only)
                  << " (expected well-known: 0xCBF43926)\n";
    }

    // Test 4: Random 8-bit values (low 8 bits set, higher bits zero)
    // Ensures the function works on arbitrary byte data.
    {
        uint32_t data[DATA_SIZE];
        std::mt19937 rng(12345);
        std::uniform_int_distribution<int> dist8(0, 255);
        for (int i = 0; i < DATA_SIZE; ++i) {
            data[i] = static_cast<uint32_t>(dist8(rng));
        }
        total++;
        if (!run_and_check("Random data (8-bit values)", data)) fails++;
    }

    // Test 5: Random 32-bit values (exercise effect of non-zero high bits)
    // The algorithm in crc32.cpp XORs the full 32-bit word but iterates 8 bit steps per entry.
    {
        uint32_t data[DATA_SIZE];
        std::mt19937 rng(67890);
        std::uniform_int_distribution<uint32_t> dist32(0, 0xFFFFFFFFu);
        for (int i = 0; i < DATA_SIZE; ++i) {
            data[i] = dist32(rng);
        }
        total++;
        if (!run_and_check("Random data (full 32-bit words)", data)) fails++;
    }

    // Test 6: Constant non-zero 32-bit value across the dataset
    // Highlights behavior when high bits are set for every element.
    {
        uint32_t data[DATA_SIZE];
        for (int i = 0; i < DATA_SIZE; ++i) data[i] = 0xDEADBEEF;
        total++;
        if (!run_and_check("Constant 0xDEADBEEF", data)) fails++;
    }

    std::cout << "\nSummary: " << (total - fails) << "/" << total << " tests passed.\n";
    return (fails == 0) ? 0 : 1;
}