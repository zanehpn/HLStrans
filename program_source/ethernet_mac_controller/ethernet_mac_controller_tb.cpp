// contents of ethernet_mac_controller_tb.cpp
#include <cstdint>
#include <cassert>
#include <iostream>
#include <iomanip>
#include <vector>
#include <random>
#include <algorithm>
#include <cstring>

#ifndef PACKET_SIZE
#define PACKET_SIZE 1024
#endif

// Forward declaration of the DUT (Device Under Test).
// The actual definition is in ethernet_mac_controller.cpp.
void ethernet_mac_controller(uint8_t input_packet[], uint8_t output_packet[]);

// Reference CRC computation matching the DUT logic.
static uint16_t compute_crc_reference(const uint8_t* input) {
    uint16_t crc = 0xFFFF;
    uint8_t polynomial = 0x07;

    for (int i = 0; i < PACKET_SIZE; i++) {
        crc ^= input[i];
        for (int j = 0; j < 8; j++) {
            if (crc & 1) {
                crc = static_cast<uint16_t>((crc >> 1) ^ polynomial);
            } else {
                crc = static_cast<uint16_t>(crc >> 1);
            }
        }
    }
    return crc;
}

static void run_test_case(const char* name, const std::vector<uint8_t>& input_pattern) {
    std::vector<uint8_t> input(input_pattern);
    std::vector<uint8_t> input_backup(input); // to check input is not modified
    std::vector<uint8_t> output(PACKET_SIZE, 0xEE);

    // Call DUT
    ethernet_mac_controller(input.data(), output.data());

    // Compute expected CRC
    uint16_t expected_crc = compute_crc_reference(input_backup.data());

    // Validate output content:
    // - All bytes up to PACKET_SIZE-3 should match input
    for (int i = 0; i < PACKET_SIZE - 2; ++i) {
        assert(output[i] == input_backup[i]);
    }
    // - Last two bytes should be CRC low and high bytes
    uint8_t expected_crc_lo = static_cast<uint8_t>(expected_crc & 0xFF);
    uint8_t expected_crc_hi = static_cast<uint8_t>((expected_crc >> 8) & 0xFF);
    assert(output[PACKET_SIZE - 2] == expected_crc_lo);
    assert(output[PACKET_SIZE - 1] == expected_crc_hi);

    // Ensure input was not modified by DUT
    assert(std::equal(input.begin(), input.end(), input_backup.begin()));

    std::cout << "[PASS] " << name
              << " | CRC=0x" << std::hex << std::setw(4) << std::setfill('0') << expected_crc
              << std::dec << std::setfill(' ') << "\n";
}

static void run_inplace_test_case(const char* name, const std::vector<uint8_t>& input_pattern) {
    // This test passes the same buffer as both input and output.
    // DUT computes CRC first, then copies input to output, then overwrites the last two bytes.
    std::vector<uint8_t> buffer(input_pattern);
    std::vector<uint8_t> original(buffer); // keep original to compare the content
    uint16_t expected_crc = compute_crc_reference(original.data());

    // Call DUT in-place
    ethernet_mac_controller(buffer.data(), buffer.data());

    // Check copied data except last two bytes
    for (int i = 0; i < PACKET_SIZE - 2; ++i) {
        assert(buffer[i] == original[i]);
    }
    // Check CRC bytes at the end
    uint8_t expected_crc_lo = static_cast<uint8_t>(expected_crc & 0xFF);
    uint8_t expected_crc_hi = static_cast<uint8_t>((expected_crc >> 8) & 0xFF);
    assert(buffer[PACKET_SIZE - 2] == expected_crc_lo);
    assert(buffer[PACKET_SIZE - 1] == expected_crc_hi);

    std::cout << "[PASS] " << name
              << " (in-place)"
              << " | CRC=0x" << std::hex << std::setw(4) << std::setfill('0') << expected_crc
              << std::dec << std::setfill(' ') << "\n";
}

int main() {
    // Test 1: All zeros
    {
        std::vector<uint8_t> pattern(PACKET_SIZE, 0x00);
        run_test_case("All zeros", pattern);
    }

    // Test 2: All 0xFF
    {
        std::vector<uint8_t> pattern(PACKET_SIZE, 0xFF);
        run_test_case("All 0xFF", pattern);
    }

    // Test 3: Incrementing bytes (0x00, 0x01, ..., 0xFF, wrap)
    {
        std::vector<uint8_t> pattern(PACKET_SIZE);
        for (int i = 0; i < PACKET_SIZE; ++i) {
            pattern[i] = static_cast<uint8_t>(i & 0xFF);
        }
        run_test_case("Incrementing bytes", pattern);
    }

    // Test 4: Alternating pattern 0xAA, 0x55
    {
        std::vector<uint8_t> pattern(PACKET_SIZE);
        for (int i = 0; i < PACKET_SIZE; ++i) {
            pattern[i] = (i & 1) ? 0x55 : 0xAA;
        }
        run_test_case("Alternating 0xAA/0x55", pattern);
    }

    // Test 5: Pseudo-random pattern with fixed seed for reproducibility
    {
        std::vector<uint8_t> pattern(PACKET_SIZE);
        std::mt19937 rng(12345);
        std::uniform_int_distribution<int> dist(0, 255);
        for (int i = 0; i < PACKET_SIZE; ++i) {
            pattern[i] = static_cast<uint8_t>(dist(rng));
        }
        run_test_case("Pseudo-random (seed=12345)", pattern);
    }

    // Test 6: Verify that last two bytes in input are overwritten in output
    // Fill with 0x11, set last two bytes to known values. After DUT, last two must be CRC, not the originals.
    {
        std::vector<uint8_t> pattern(PACKET_SIZE, 0x11);
        pattern[PACKET_SIZE - 2] = 0xDE;
        pattern[PACKET_SIZE - 1] = 0xAD;
        run_test_case("Overwrite last two bytes with CRC", pattern);
    }

    // Test 7: In-place operation (input and output point to the same buffer)
    {
        std::vector<uint8_t> pattern(PACKET_SIZE);
        for (int i = 0; i < PACKET_SIZE; ++i) {
            pattern[i] = static_cast<uint8_t>((i * 37 + 13) & 0xFF); // arbitrary linear congruence
        }
        run_inplace_test_case("In-place buffer usage", pattern);
    }

    // Test 8: Repeatability test - same input should yield the same output across multiple runs
    {
        std::vector<uint8_t> pattern(PACKET_SIZE);
        for (int i = 0; i < PACKET_SIZE; ++i) {
            pattern[i] = static_cast<uint8_t>((i * i) & 0xFF);
        }

        // First run
        std::vector<uint8_t> out1(PACKET_SIZE);
        ethernet_mac_controller(pattern.data(), out1.data());

        // Second run
        std::vector<uint8_t> out2(PACKET_SIZE);
        ethernet_mac_controller(pattern.data(), out2.data());

        assert(out1 == out2);
        uint16_t crc = compute_crc_reference(pattern.data());
        std::cout << "[PASS] Repeatability test | CRC=0x"
                  << std::hex << std::setw(4) << std::setfill('0') << crc
                  << std::dec << std::setfill(' ') << "\n";
    }

    std::cout << "All tests passed.\n";
    return 0;
}