// contents of md5_tb.cpp
#include <iostream>
#include <iomanip>
#include <sstream>
#include <cstdint>
#include <cstring>

// Include the source under test (md5.cpp defines md5 and INPUT_SIZE)
#define INPUT_SIZE 1024
void md5(const uint8_t input[INPUT_SIZE], uint8_t output[16]) ;
// Helper: convert 16-byte digest to a lowercase hex string
std::string digest_to_hex(const uint8_t digest[16]) {
    std::ostringstream oss;
    oss << std::hex << std::setfill('0');
    for (int i = 0; i < 16; ++i) {
        oss << std::setw(2) << static_cast<int>(digest[i]);
    }
    return oss.str();
}

// Helper: compare two byte arrays
bool bytes_equal(const uint8_t* a, const uint8_t* b, size_t n) {
    return std::memcmp(a, b, n) == 0;
}

int main() {
    int passed = 0;
    int failed = 0;

    // Test 1: All-zero input (simple baseline)
    {
        uint8_t input[INPUT_SIZE];
        std::memset(input, 0x00, sizeof(input));
        uint8_t digest[16];
        md5(input, digest);
        std::string hex = digest_to_hex(digest);
        std::cout << "Test 1 - All zeros digest: " << hex << std::endl;

        // Basic sanity: digest should be 16 bytes and unlikely to be all zeros
        bool not_all_zero = false;
        for (int i = 0; i < 16; ++i) {
            if (digest[i] != 0) { not_all_zero = true; break; }
        }
        if (not_all_zero) { ++passed; } else { ++failed; std::cout << "Test 1 FAILED: digest is all zeros\n"; }
    }

    // Test 2: All 0xFF input (different from zeros)
    {
        uint8_t input[INPUT_SIZE];
        std::memset(input, 0xFF, sizeof(input));
        uint8_t digest[16];
        md5(input, digest);
        std::string hex = digest_to_hex(digest);
        std::cout << "Test 2 - All 0xFF digest: " << hex << std::endl;

        // Check it's different from Test 1 (recompute Test 1 digest locally to compare)
        uint8_t zero_in[INPUT_SIZE];
        std::memset(zero_in, 0x00, sizeof(zero_in));
        uint8_t zero_digest[16];
        md5(zero_in, zero_digest);

        if (!bytes_equal(digest, zero_digest, 16)) { ++passed; }
        else { ++failed; std::cout << "Test 2 FAILED: digest equals zero input digest\n"; }
    }

    // Test 3: Incremental pattern (0..255 repeated), check determinism across multiple calls
    {
        uint8_t input[INPUT_SIZE];
        for (size_t i = 0; i < INPUT_SIZE; ++i) {
            input[i] = static_cast<uint8_t>(i & 0xFF);
        }
        uint8_t digest1[16];
        uint8_t digest2[16];
        md5(input, digest1);
        md5(input, digest2);
        std::string hex1 = digest_to_hex(digest1);
        std::cout << "Test 3 - Incremental pattern digest: " << hex1 << std::endl;

        // Determinism: same input should produce same digest
        if (bytes_equal(digest1, digest2, 16)) { ++passed; }
        else { ++failed; std::cout << "Test 3 FAILED: digest differs across calls\n"; }
    }

    // Test 4: Single-bit flip should change digest (avalanche-like sensitivity)
    {
        uint8_t base[INPUT_SIZE];
        for (size_t i = 0; i < INPUT_SIZE; ++i) {
            base[i] = static_cast<uint8_t>(i & 0xFF);
        }
        uint8_t flipped[INPUT_SIZE];
        std::memcpy(flipped, base, sizeof(base));
        // Flip a single bit in the middle of the message
        flipped[INPUT_SIZE / 2] ^= 0x08;

        uint8_t digest_base[16];
        uint8_t digest_flip[16];
        md5(base, digest_base);
        md5(flipped, digest_flip);

        std::string hex_base = digest_to_hex(digest_base);
        std::string hex_flip = digest_to_hex(digest_flip);
        std::cout << "Test 4 - Base digest:   " << hex_base << std::endl;
        std::cout << "Test 4 - Flipped digest: " << hex_flip << std::endl;

        if (!bytes_equal(digest_base, digest_flip, 16)) { ++passed; }
        else { ++failed; std::cout << "Test 4 FAILED: single-bit flip did not change digest\n"; }
    }

    // Test 5: Change last byte only; verify digest changes (boundary sensitivity)
    {
        uint8_t base[INPUT_SIZE];
        std::memset(base, 0x00, sizeof(base));
        uint8_t modified[INPUT_SIZE];
        std::memcpy(modified, base, sizeof(base));
        modified[INPUT_SIZE - 1] = 0x01; // change only the last byte

        uint8_t digest_base[16];
        uint8_t digest_mod[16];
        md5(base, digest_base);
        md5(modified, digest_mod);

        std::string hex_base = digest_to_hex(digest_base);
        std::string hex_mod = digest_to_hex(digest_mod);
        std::cout << "Test 5 - Zero digest:    " << hex_base << std::endl;
        std::cout << "Test 5 - Last-byte digest: " << hex_mod << std::endl;

        if (!bytes_equal(digest_base, digest_mod, 16)) { ++passed; }
        else { ++failed; std::cout << "Test 5 FAILED: changing last byte did not change digest\n"; }
    }

    // Test 6: Repeated calls with different inputs should be independent (no hidden state)
    {
        uint8_t inA[INPUT_SIZE], inB[INPUT_SIZE], inC[INPUT_SIZE];
        std::memset(inA, 0xAA, sizeof(inA)); // pattern A
        std::memset(inB, 0x55, sizeof(inB)); // pattern B
        for (size_t i = 0; i < INPUT_SIZE; ++i) inC[i] = static_cast<uint8_t>((i * 37) & 0xFF); // pattern C

        uint8_t dA[16], dB[16], dC[16];
        md5(inA, dA);
        md5(inB, dB);
        md5(inC, dC);

        std::cout << "Test 6 - Pattern A digest: " << digest_to_hex(dA) << std::endl;
        std::cout << "Test 6 - Pattern B digest: " << digest_to_hex(dB) << std::endl;
        std::cout << "Test 6 - Pattern C digest: " << digest_to_hex(dC) << std::endl;

        // Verify different inputs produce different digests (likely distinct)
        bool distinct = !bytes_equal(dA, dB, 16) && !bytes_equal(dA, dC, 16) && !bytes_equal(dB, dC, 16);
        if (distinct) { ++passed; }
        else { ++failed; std::cout << "Test 6 FAILED: some digests unexpectedly equal\n"; }
    }

    std::cout << "Test Summary: " << passed << " passed, " << failed << " failed." << std::endl;
    return failed == 0 ? 0 : 1;
}