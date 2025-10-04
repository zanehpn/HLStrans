// contents of dma_tb.cpp
#include <iostream>
#include <cassert>
#include <cstdint>
#include <random>
#include <ap_int.h>

// Prototype for the DUT (Device Under Test)
// The actual implementation is in dma.cpp and should be compiled/linked together.
extern void dma(ap_uint<32> input[], ap_uint<32> output[]);

static constexpr int kSize = 1024;

static uint32_t checksum_xor(const ap_uint<32>* arr, int n) {
    uint32_t acc = 0;
    for (int i = 0; i < n; ++i) {
        acc ^= static_cast<uint32_t>(arr[i]);
    }
    return acc;
}

static void print_sample(const ap_uint<32>* arr, int n, const char* label) {
    std::cout << label << " (first 8 values): ";
    int limit = (n < 8) ? n : 8;
    for (int i = 0; i < limit; ++i) {
        std::cout << std::hex << static_cast<uint32_t>(arr[i]) << (i+1<limit ? " " : "");
    }
    std::cout << std::dec << std::endl;
}

int main() {
    // Test 1: Linear increasing pattern
    {
        ap_uint<32> input[kSize];
        ap_uint<32> output[kSize];
        for (int i = 0; i < kSize; ++i) {
            input[i] = static_cast<uint32_t>(i);
            output[i] = 0xDEADBEEFu; // sentinel to ensure overwrite
        }
        dma(input, output);
        for (int i = 0; i < kSize; ++i) {
            assert(output[i] == input[i] && "Test 1 failed: output mismatch");
        }
        std::cout << "Test 1 passed: Linear pattern copied correctly. XOR checksum="
                  << std::hex << checksum_xor(output, kSize) << std::dec << std::endl;
        print_sample(output, kSize, "Test 1 sample");
    }

    // Test 2: All zeros
    {
        ap_uint<32> input[kSize];
        ap_uint<32> output[kSize];
        for (int i = 0; i < kSize; ++i) {
            input[i] = 0u;
            output[i] = 0xFFFFFFFFu;
        }
        dma(input, output);
        for (int i = 0; i < kSize; ++i) {
            assert(output[i] == 0u && "Test 2 failed: expected zeros");
        }
        std::cout << "Test 2 passed: All-zero pattern copied correctly. XOR checksum="
                  << std::hex << checksum_xor(output, kSize) << std::dec << std::endl;
        print_sample(output, kSize, "Test 2 sample");
    }

    // Test 3: Alternating bit patterns 0xAAAAAAAA / 0x55555555
    {
        ap_uint<32> input[kSize];
        ap_uint<32> output[kSize];
        for (int i = 0; i < kSize; ++i) {
            input[i] = (i % 2 == 0) ? 0xAAAAAAAAu : 0x55555555u;
            output[i] = 0u;
        }
        dma(input, output);
        for (int i = 0; i < kSize; ++i) {
            assert(output[i] == input[i] && "Test 3 failed: alternating pattern mismatch");
        }
        std::cout << "Test 3 passed: Alternating patterns copied correctly. XOR checksum="
                  << std::hex << checksum_xor(output, kSize) << std::dec << std::endl;
        print_sample(output, kSize, "Test 3 sample");
    }

    // Test 4: Random data with fixed seed (deterministic)
    {
        ap_uint<32> input[kSize];
        ap_uint<32> output[kSize];
        std::mt19937 rng(12345);
        std::uniform_int_distribution<uint32_t> dist(0u, 0xFFFFFFFFu);
        for (int i = 0; i < kSize; ++i) {
            input[i] = dist(rng);
            output[i] = 0u;
        }
        dma(input, output);
        for (int i = 0; i < kSize; ++i) {
            assert(output[i] == input[i] && "Test 4 failed: random pattern mismatch");
        }
        std::cout << "Test 4 passed: Random data copied correctly. XOR checksum="
                  << std::hex << checksum_xor(output, kSize) << std::dec << std::endl;
        print_sample(output, kSize, "Test 4 sample");
    }

    // Test 5: In-place operation (same buffer for input and output)
    // This checks that dma correctly handles when input and output point to the same memory.
    {
        ap_uint<32> buffer[kSize];
        for (int i = 0; i < kSize; ++i) {
            // Use a bit-mixing pattern to ensure good coverage of bits
            buffer[i] = static_cast<uint32_t>(i) * 2654435761u; // Knuth's multiplicative hash
        }
        ap_uint<32> before_checksum = checksum_xor(buffer, kSize);
        dma(buffer, buffer); // in-place
        for (int i = 0; i < kSize; ++i) {
            // Expect the buffer to remain unchanged
            // (copying element-by-element should be safe for in-place in this implementation)
            // If the implementation changed to use wider burst moves, this might need reconsideration.
        }
        ap_uint<32> after_checksum = checksum_xor(buffer, kSize);
        assert(static_cast<uint32_t>(before_checksum) == static_cast<uint32_t>(after_checksum) &&
               "Test 5 failed: in-place operation altered data");
        std::cout << "Test 5 passed: In-place operation preserved data. XOR checksum="
                  << std::hex << static_cast<uint32_t>(after_checksum) << std::dec << std::endl;
        print_sample(buffer, kSize, "Test 5 sample");
    }

    std::cout << "All tests passed." << std::endl;
    return 0;
}