// contents of sha1_md5_authentication_tb.cpp

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <iostream>
#include <iomanip>
#include <random>
#include <string>

// Include the DUT (Device Under Test) source directly since it has no main()
#include "sha1_md5_authentication.cpp"

// Helper to print a 20-byte digest in hex
static void print_digest(const uint8_t digest[20], const std::string& label) {
    std::cout << label << " = ";
    for (int i = 0; i < 20; ++i) {
        std::cout << std::hex << std::setw(2) << std::setfill('0')
                  << static_cast<unsigned int>(digest[i]);
    }
    std::cout << std::dec << std::endl;
}

// Helper to compare two 20-byte digests
static bool digests_equal(const uint8_t a[20], const uint8_t b[20]) {
    return std::memcmp(a, b, 20) == 0;
}

// Fill buffer with a constant value
static void fill_constant(uint8_t* buf, size_t size, uint8_t val) {
    std::memset(buf, val, size);
}

// Fill buffer with incrementing bytes 0..255 repeating
static void fill_increment(uint8_t* buf, size_t size) {
    for (size_t i = 0; i < size; ++i) {
        buf[i] = static_cast<uint8_t>(i & 0xFF);
    }
}

// Fill buffer with deterministic pseudo-random data from a fixed seed
static void fill_random(uint8_t* buf, size_t size, uint32_t seed) {
    std::mt19937 rng(seed);
    std::uniform_int_distribution<int> dist(0, 255);
    for (size_t i = 0; i < size; ++i) {
        buf[i] = static_cast<uint8_t>(dist(rng));
    }
}

int main() {
    int error_count = 0;

    // Buffers
    uint8_t input[DATA_SIZE];
    uint8_t output[20];
    uint8_t output_ref[20];

    // Test 1: All zeros input
    // Expectation: Produces a deterministic digest; print it for inspection.
    fill_constant(input, DATA_SIZE, 0x00);
    sha1_md5_authentication(input, output);
    print_digest(output, "Test 1 (all zeros) digest");

    // Save reference for later equality test
    std::memcpy(output_ref, output, 20);

    // Test 2: All ones input
    // Expectation: Should produce a different digest from all zeros.
    fill_constant(input, DATA_SIZE, 0xFF);
    uint8_t output_ones[20];
    sha1_md5_authentication(input, output_ones);
    print_digest(output_ones, "Test 2 (all ones) digest");

    if (digests_equal(output_ref, output_ones)) {
        std::cerr << "ERROR: Test 2 digest equals Test 1 digest (unexpected)." << std::endl;
        ++error_count;
    } else {
        std::cout << "PASS: Test 2 digest differs from Test 1 digest." << std::endl;
    }

    // Test 3: Determinism check (same input twice)
    // Expectation: Running the same input again yields the same digest.
    fill_constant(input, DATA_SIZE, 0x00);
    uint8_t output_repeat[20];
    sha1_md5_authentication(input, output_repeat);
    print_digest(output_repeat, "Test 3 (all zeros repeat) digest");

    if (!digests_equal(output_ref, output_repeat)) {
        std::cerr << "ERROR: Test 3 digest does not match Test 1 digest (non-deterministic)." << std::endl;
        ++error_count;
    } else {
        std::cout << "PASS: Test 3 digest matches Test 1 digest." << std::endl;
    }

    // Test 4: Single-bit flip sensitivity
    // Expectation: Flipping a single bit in the input should significantly change the digest.
    fill_constant(input, DATA_SIZE, 0x00);
    input[0] ^= 0x01; // flip LSB of first byte
    uint8_t output_bitflip[20];
    sha1_md5_authentication(input, output_bitflip);
    print_digest(output_bitflip, "Test 4 (single-bit flip) digest");

    if (digests_equal(output_ref, output_bitflip)) {
        std::cerr << "ERROR: Test 4 digest equals Test 1 digest after bit flip (unexpected)." << std::endl;
        ++error_count;
    } else {
        std::cout << "PASS: Test 4 digest differs from Test 1 digest after bit flip." << std::endl;
    }

    // Test 5: Incrementing pattern 0..255 repeated
    // Expectation: Deterministic digest for this pattern; print for inspection.
    fill_increment(input, DATA_SIZE);
    uint8_t output_incr[20];
    sha1_md5_authentication(input, output_incr);
    print_digest(output_incr, "Test 5 (incrementing pattern) digest");

    // Test 6: Deterministic random input with fixed seed
    // Expectation: Same seed => same digest; different seed => likely different digest.
    fill_random(input, DATA_SIZE, 12345u);
    uint8_t output_rand_seed1_a[20];
    sha1_md5_authentication(input, output_rand_seed1_a);
    print_digest(output_rand_seed1_a, "Test 6a (rand seed=12345) digest");

    // Repeat with same seed to confirm determinism
    fill_random(input, DATA_SIZE, 12345u);
    uint8_t output_rand_seed1_b[20];
    sha1_md5_authentication(input, output_rand_seed1_b);

    if (!digests_equal(output_rand_seed1_a, output_rand_seed1_b)) {
        std::cerr << "ERROR: Test 6 determinism failed for same seed." << std::endl;
        ++error_count;
    } else {
        std::cout << "PASS: Test 6 determinism verified for same seed." << std::endl;
    }

    // Test 7: Random input with different seed
    // Expectation: Different seed => different input => likely different digest from seed=12345.
    fill_random(input, DATA_SIZE, 67890u);
    uint8_t output_rand_seed2[20];
    sha1_md5_authentication(input, output_rand_seed2);
    print_digest(output_rand_seed2, "Test 7 (rand seed=67890) digest");

    if (digests_equal(output_rand_seed1_a, output_rand_seed2)) {
        std::cerr << "WARNING: Test 7 digest equals Test 6 digest; possible collision (very unlikely)." << std::endl;
        // Not counting as hard error due to theoretical possibility of collision.
    } else {
        std::cout << "PASS: Test 7 digest differs from Test 6 digest (as expected)." << std::endl;
    }

    // Final result
    if (error_count == 0) {
        std::cout << "All tests completed with no errors." << std::endl;
        return 0;
    } else {
        std::cerr << "Completed with " << error_count << " error(s)." << std::endl;
        return 1;
    }
}