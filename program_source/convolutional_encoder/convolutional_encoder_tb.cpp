// contents of convolutional_encoder_tb.cpp
#include <iostream>
#include <iomanip>
#include <cstdint>
#include <cstdlib>
#include <cassert>

// Include the source to access the convolutional_encoder function and N
#include <ap_int.h>

#define N 1024

void convolutional_encoder(ap_uint<1> input[N], ap_uint<2> output[2*N]);
// XOR-reduce parity for up to 3-bit values
static inline unsigned xor_reduce3(unsigned v) {
    v &= 0x7;
    v ^= (v >> 1);
    v ^= (v >> 2);
    return v & 1;
}

// Reference encoder to validate output against expected behavior of the DUT
static void reference_encoder(const ap_uint<1> input[N], uint8_t ref_out[2 * N]) {
    unsigned shift_reg = 0; // 3-bit shift register modeled with an unsigned int
    for (int i = 0; i < N; ++i) {
        // Update shift register: shift left, mask to 3 bits, OR in new input bit
        shift_reg = ((shift_reg << 1) & 0x7) | (unsigned)(input[i].to_uint());

        // G1 = 0b111, G2 = 0b101 (polynomial taps)
        unsigned out1 = xor_reduce3(shift_reg & 0x7); // parity of bits 2,1,0
        unsigned out2 = xor_reduce3(shift_reg & 0x5); // parity of bits 2 and 0

        ref_out[2 * i]     = (uint8_t)out1;
        ref_out[2 * i + 1] = (uint8_t)out2;
    }
}

// Compare DUT output with reference and return whether they match; report first mismatch if any
static bool compare_outputs(const ap_uint<2> *dut, const uint8_t *ref, size_t len, size_t &first_mismatch) {
    for (size_t i = 0; i < len; ++i) {
        unsigned dv = dut[i].to_uint() & 0x1u; // DUT produces 0/1 in a 2-bit container
        if (dv != ref[i]) {
            first_mismatch = i;
            return false;
        }
    }
    return true;
}

// Helper to print first few encoded pairs for inspection
static void print_first_pairs(const ap_uint<2> output[2 * N], size_t num_pairs) {
    std::cout << "First " << num_pairs << " output pairs (o1, o2):\n";
    for (size_t i = 0; i < num_pairs; ++i) {
        unsigned o1 = output[2 * i].to_uint() & 0x1u;
        unsigned o2 = output[2 * i + 1].to_uint() & 0x1u;
        std::cout << "  i=" << std::setw(3) << i << ": (" << o1 << ", " << o2 << ")\n";
    }
}

// Runs a single test: fills input via fill_cb, runs DUT, checks against reference
static bool run_test(const char *name, void (*fill_cb)(ap_uint<1> input[N]), bool print_sample = true, size_t sample_pairs = 8) {
    std::cout << "\n=== Test: " << name << " ===\n";

    ap_uint<1> input[N];
    ap_uint<2> output[2 * N];
    uint8_t ref_out[2 * N];

    // Fill input using the provided callback
    fill_cb(input);

    // Run DUT
    convolutional_encoder(input, output);

    // Build reference output
    reference_encoder(input, ref_out);

    // Compare DUT with reference
    size_t first_mismatch = 0;
    bool ok = compare_outputs(output, ref_out, 2 * N, first_mismatch);

    if (print_sample) {
        print_first_pairs(output, sample_pairs);
    }

    if (!ok) {
        std::cout << "FAIL: Mismatch at output index " << first_mismatch
                  << " (expected=" << (unsigned)ref_out[first_mismatch]
                  << ", got=" << (output[first_mismatch].to_uint() & 0x1u) << ")\n";
    } else {
        std::cout << "PASS: Outputs match reference for all " << (2 * N) << " symbols.\n";
    }
    return ok;
}

// Test case fillers

// 1) All zeros input
static void fill_all_zeros(ap_uint<1> input[N]) {
    for (int i = 0; i < N; ++i) input[i] = ap_uint<1>(0);
}

// 2) All ones input
static void fill_all_ones(ap_uint<1> input[N]) {
    for (int i = 0; i < N; ++i) input[i] = ap_uint<1>(1);
}

// 3) Impulse at beginning: single '1' followed by zeros
static void fill_impulse_first(ap_uint<1> input[N]) {
    for (int i = 0; i < N; ++i) input[i] = ap_uint<1>(0);
    input[0] = ap_uint<1>(1);
}

// 4) Impulse in the middle: single '1' at index 500
static void fill_impulse_middle(ap_uint<1> input[N]) {
    for (int i = 0; i < N; ++i) input[i] = ap_uint<1>(0);
    input[500] = ap_uint<1>(1);
}

// 5) Deterministic repeating pattern in first 64 bits, zeros after
static void fill_pattern(ap_uint<1> input[N]) {
    int pattern[8] = {1, 0, 1, 1, 0, 0, 1, 0};
    for (int i = 0; i < N; ++i) {
        int v = (i < 64) ? pattern[i % 8] : 0;
        input[i] = ap_uint<1>(v);
    }
}

// 6) Random input sequence with fixed seed for reproducibility
static void fill_random(ap_uint<1> input[N]) {
    srand(0x1234); // Fixed seed
    for (int i = 0; i < N; ++i) input[i] = ap_uint<1>(rand() & 1);
}

int main() {
    int failures = 0;

    // Test 1: All zeros - ensures zero outputs when no transitions occur
    if (!run_test("All Zeros Input", fill_all_zeros)) ++failures;

    // Test 2: All ones - checks parity behavior over consecutive ones
    if (!run_test("All Ones Input", fill_all_ones)) ++failures;

    // Test 3: Impulse at the first position - validates shift register start-up behavior
    if (!run_test("Impulse at Start", fill_impulse_first)) ++failures;

    // Test 4: Impulse in the middle - validates behavior independent of position
    if (!run_test("Impulse in Middle (index=500)", fill_impulse_middle)) ++failures;

    // Test 5: Repeating pattern - verifies consistent encoding with mixed bits
    if (!run_test("Repeating Pattern (first 64 bits)", fill_pattern)) ++failures;

    // Test 6: Random input - general stress test
    if (!run_test("Random Input (seeded)", fill_random)) ++failures;

    std::cout << "\n=== Summary ===\n";
    if (failures == 0) {
        std::cout << "All tests PASSED.\n";
    } else {
        std::cout << failures << " test(s) FAILED.\n";
    }

    // Use assert to enforce test success in automated environments
    assert(failures == 0 && "One or more convolutional_encoder tests failed");
    return failures == 0 ? 0 : 1;
}