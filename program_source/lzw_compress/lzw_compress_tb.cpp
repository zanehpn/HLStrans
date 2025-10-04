// contents of lzw_compress_tb.cpp
#include <iostream>
#include <vector>
#include <string>
#include <random>
#include <functional>
#include <cassert>

// Include the DUT implementation
#include <ap_int.h>

#define DICT_SIZE 4096
#define MAX_BITS 12
#define INPUT_SIZE 1024

void lzw_compress(ap_uint<8> input[INPUT_SIZE], ap_uint<12> output[INPUT_SIZE]);
// Reference model mirroring the DUT logic for validation
static void lzw_reference(const ap_uint<8> input[INPUT_SIZE], std::vector<ap_uint<12>>& out) {
    ap_uint<12> dictionary[DICT_SIZE];
    ap_uint<12> dict_size = 256;

    // Initialize the dictionary with single-byte entries
    for (int i = 0; i < 256; ++i) {
        dictionary[i] = i;
    }

    ap_uint<12> prefix = input[0];
    out.clear();
    out.reserve(INPUT_SIZE);

    // Core compression loop (mirrors the DUT algorithm and 12-bit widths)
    for (int i = 1; i < INPUT_SIZE; ++i) {
        ap_uint<8> character = input[i];
        ap_uint<12> combined = (prefix << 8) | character;

        bool found = false;
        for (int j = 0; j < dict_size; ++j) {
            if (dictionary[j] == combined) {
                prefix = j;
                found = true;
                break;
            }
        }

        if (!found) {
            out.push_back(prefix);
            if (dict_size < DICT_SIZE) {
                dictionary[dict_size++] = combined;
            }
            prefix = character;
        }
    }

    // Flush final code
    out.push_back(prefix);
}

// Helper to print the first few output codes
static void print_first_codes(const ap_uint<12>* out, size_t count, size_t max_to_print = 16) {
    size_t n = std::min(count, max_to_print);
    std::cout << "First " << n << " codes: ";
    for (size_t i = 0; i < n; ++i) {
        std::cout << std::hex << static_cast<unsigned>(out[i]) << (i + 1 < n ? " " : "");
    }
    std::cout << std::dec << "\n";
}

// Generic test runner
static bool run_test(const std::string& name, const std::function<void(ap_uint<8>*)>& fill_input) {
    std::cout << "Running test: " << name << "\n";

    // Prepare input and output buffers
    ap_uint<8> input[INPUT_SIZE];
    ap_uint<12> output[INPUT_SIZE];

    // Fill input with provided pattern
    fill_input(input);

    // Prepare reference output
    std::vector<ap_uint<12>> ref_out;
    lzw_reference(input, ref_out);

    // Initialize output with a sentinel to detect unwritten entries
    const ap_uint<12> sentinel = ap_uint<12>(0xBAD); // 12-bit sentinel
    for (int i = 0; i < INPUT_SIZE; ++i) {
        output[i] = sentinel;
    }

    // Run DUT
    lzw_compress(input, output);

    // Validate: compare DUT against reference for produced codes
    bool pass = true;
    if (!ref_out.empty()) {
        for (size_t i = 0; i < ref_out.size(); ++i) {
            if (output[i] != ref_out[i]) {
                std::cout << "  Mismatch at index " << i
                          << ": expected=" << static_cast<unsigned>(ref_out[i])
                          << " got=" << static_cast<unsigned>(output[i]) << "\n";
                pass = false;
                break;
            }
        }
    } else {
        std::cout << "  Reference produced no output codes, unexpected.\n";
        pass = false;
    }

    // Ensure the DUT didn't write beyond the expected number of codes
    if (pass && ref_out.size() < INPUT_SIZE) {
        for (size_t i = ref_out.size(); i < INPUT_SIZE; ++i) {
            if (output[i] != sentinel) {
                std::cout << "  Output index " << i << " was modified unexpectedly.\n";
                pass = false;
                break;
            }
        }
    }

    // Print a small snapshot of resulting codes
    print_first_codes(output, ref_out.size());

    std::cout << (pass ? "  PASS\n\n" : "  FAIL\n\n");
    return pass;
}

int main() {
    bool all_pass = true;

    // Test 1: All zeros
    // Purpose: Exercise the trivial repeated symbol case; should produce minimal number of codes.
    all_pass &= run_test("All zeros", [](ap_uint<8>* in) {
        for (int i = 0; i < INPUT_SIZE; ++i) {
            in[i] = ap_uint<8>(0);
        }
    });

    // Test 2: Increasing sequence 0..255 repeated (4 times to fill 1024)
    // Purpose: Exercise dictionary growth with low probability of matching combined codes.
    all_pass &= run_test("Increasing 0..255 repeated x4", [](ap_uint<8>* in) {
        for (int i = 0; i < INPUT_SIZE; ++i) {
            in[i] = ap_uint<8>(i % 256);
        }
    });

    // Test 3: Alternating pattern 'A'(65), 'B'(66)
    // Purpose: Exercise detection of repeated pairs to form and then match dictionary entries.
    all_pass &= run_test("Alternating 'A','B'", [](ap_uint<8>* in) {
        for (int i = 0; i < INPUT_SIZE; ++i) {
            in[i] = ap_uint<8>((i % 2) ? 66 : 65);
        }
    });

    // Test 4: Random data with fixed seed
    // Purpose: Exercise general behavior and dictionary saturation path.
    all_pass &= run_test("Random data (seeded)", [](ap_uint<8>* in) {
        std::mt19937 rng(12345);
        std::uniform_int_distribution<int> dist(0, 255);
        for (int i = 0; i < INPUT_SIZE; ++i) {
            in[i] = ap_uint<8>(dist(rng));
        }
    });

    // Test 5: Single non-zero constant byte (e.g., 0xAA) repeated
    // Purpose: Similar to all-zero but with a different byte to ensure robustness.
    all_pass &= run_test("Constant 0xAA", [](ap_uint<8>* in) {
        for (int i = 0; i < INPUT_SIZE; ++i) {
            in[i] = ap_uint<8>(0xAA);
        }
    });

    if (!all_pass) {
        std::cout << "One or more tests FAILED.\n";
        return 1;
    }

    std::cout << "All tests PASSED.\n";
    return 0;
}