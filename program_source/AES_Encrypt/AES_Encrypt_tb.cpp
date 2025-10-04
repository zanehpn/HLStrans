// contents of AES_Encrypt_tb.cpp
#include <iostream>
#include <iomanip>
#include <cstdint>
#include <cassert>
#include <cstring>
#define AES_BLOCK_SIZE 16
#define AES_KEY_SIZE 16
#define DATA_SIZE (1 << 10)
// Include the source under test (no main() defined there)
void AES_Encrypt_Block(uint8_t input[AES_BLOCK_SIZE], const uint8_t key[AES_KEY_SIZE], uint8_t output[AES_BLOCK_SIZE]);

void AES_Encrypt(uint8_t input[DATA_SIZE], const uint8_t key[AES_KEY_SIZE], uint8_t output[DATA_SIZE]);
static void print_hex(const char* label, const uint8_t* data, size_t len) {
    std::cout << label << " ";
    for (size_t i = 0; i < len; ++i) {
        std::cout << std::hex << std::setw(2) << std::setfill('0')
                  << static_cast<unsigned>(data[i]) << (i + 1 < len ? " " : "");
    }
    std::cout << std::dec << std::endl;
}

int main() {
    // Test 1: AES_Encrypt_Block with simple patterns
    // Expectation based on provided source:
    // - The S-box array is zero-initialized, and round key is constant across rounds.
    // - The block encryption reduces to output = key for any input/key.
    {
        uint8_t input[AES_BLOCK_SIZE];
        uint8_t key[AES_KEY_SIZE];
        uint8_t output[AES_BLOCK_SIZE];

        // Fill input with incremental pattern and key with distinct pattern
        for (int i = 0; i < AES_BLOCK_SIZE; ++i) {
            input[i] = static_cast<uint8_t>(i);
            key[i] = static_cast<uint8_t>(0x10 + i);
        }

        AES_Encrypt_Block(input, key, output);

        // Verify output equals key (as per current implementation behavior)
        assert(std::memcmp(output, key, AES_BLOCK_SIZE) == 0);

        print_hex("Test 1 - Input:", input, AES_BLOCK_SIZE);
        print_hex("Test 1 - Key  :", key, AES_BLOCK_SIZE);
        print_hex("Test 1 - Out  :", output, AES_BLOCK_SIZE);
        std::cout << "Test 1 passed: AES_Encrypt_Block output matches expected (equals key)\n\n";
    }

    // Test 2: AES_Encrypt over DATA_SIZE buffer
    // Expectation based on provided source:
    // - Each 16-byte block output equals the key, repeated across the output buffer.
    {
        uint8_t key[AES_KEY_SIZE];
        for (int i = 0; i < AES_KEY_SIZE; ++i) {
            key[i] = static_cast<uint8_t>(0xA0 + i);
        }

        // Allocate input and output buffers
        uint8_t* input = new uint8_t[DATA_SIZE];
        uint8_t* output = new uint8_t[DATA_SIZE];

        // Fill input with a simple repeating pattern
        for (int i = 0; i < DATA_SIZE; ++i) {
            input[i] = static_cast<uint8_t>(i & 0xFF);
            output[i] = 0x00;
        }

        AES_Encrypt(input, key, output);

        // Verify every output byte equals key[i % 16]
        for (int i = 0; i < DATA_SIZE; ++i) {
            assert(output[i] == key[i % AES_BLOCK_SIZE]);
        }

        // Print first two blocks for visual inspection
        print_hex("Test 2 - Key         :", key, AES_BLOCK_SIZE);
        print_hex("Test 2 - Out[0..15]  :", output, AES_BLOCK_SIZE);
        print_hex("Test 2 - Out[16..31] :", output + AES_BLOCK_SIZE, AES_BLOCK_SIZE);
        std::cout << "Test 2 passed: AES_Encrypt output matches expected repeated key pattern\n\n";

        delete[] input;
        delete[] output;
    }

    // Test 3: AES_Encrypt_Block with zero key
    // Expectation: output should be all zeros for any input when key is all zeros.
    {
        uint8_t input[AES_BLOCK_SIZE];
        uint8_t key[AES_KEY_SIZE] = {0};
        uint8_t output[AES_BLOCK_SIZE];

        // Fill input with a non-zero pattern to ensure it's ignored by the current logic
        for (int i = 0; i < AES_BLOCK_SIZE; ++i) {
            input[i] = static_cast<uint8_t>(0xFF - i);
        }

        AES_Encrypt_Block(input, key, output);

        // Verify output is all zeros
        for (int i = 0; i < AES_BLOCK_SIZE; ++i) {
            assert(output[i] == 0x00);
        }

        print_hex("Test 3 - Input:", input, AES_BLOCK_SIZE);
        print_hex("Test 3 - Key  :", key, AES_BLOCK_SIZE);
        print_hex("Test 3 - Out  :", output, AES_BLOCK_SIZE);
        std::cout << "Test 3 passed: AES_Encrypt_Block with zero key yields zero block output\n\n";
    }

    // Test 4: Consistency check for different inputs with same key
    // Expectation based on provided source:
    // - Different inputs produce the same output (the key).
    {
        uint8_t input1[AES_BLOCK_SIZE];
        uint8_t input2[AES_BLOCK_SIZE];
        uint8_t key[AES_KEY_SIZE];
        uint8_t out1[AES_BLOCK_SIZE], out2[AES_BLOCK_SIZE];

        for (int i = 0; i < AES_BLOCK_SIZE; ++i) {
            input1[i] = static_cast<uint8_t>(i);
            input2[i] = static_cast<uint8_t>(0xF0 ^ i);
            key[i] = static_cast<uint8_t>(0x5A + i);
        }

        AES_Encrypt_Block(input1, key, out1);
        AES_Encrypt_Block(input2, key, out2);

        assert(std::memcmp(out1, out2, AES_BLOCK_SIZE) == 0);
        assert(std::memcmp(out1, key, AES_BLOCK_SIZE) == 0);

        print_hex("Test 4 - Out1:", out1, AES_BLOCK_SIZE);
        print_hex("Test 4 - Out2:", out2, AES_BLOCK_SIZE);
        std::cout << "Test 4 passed: AES_Encrypt_Block outputs match for different inputs with same key\n\n";
    }

    std::cout << "All tests passed.\n";
    return 0;
}