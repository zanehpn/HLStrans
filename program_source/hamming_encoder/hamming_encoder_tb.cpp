// contents of hamming_encoder_tb.cpp
#include <iostream>
#include <iomanip>
#include <cstdlib>

// Include the DUT source to avoid duplicate symbol errors and ensure consistent definitions
#include "hamming_encoder.cpp"

// Reference encoder to compute expected outputs (mirrors DUT logic)
static ap_uint<12> reference_hamming_encode(ap_uint<8> d) {
    ap_uint<12> encoded = 0;

    // Assign data bits
    encoded[2]  = d[0];
    encoded[4]  = d[1];
    encoded[5]  = d[2];
    encoded[6]  = d[3];
    encoded[8]  = d[4];
    encoded[9]  = d[5];
    encoded[10] = d[6];
    encoded[11] = d[7];

    // Calculate parity bits
    encoded[0] = d[0] ^ d[1] ^ d[3] ^ d[4] ^ d[6];
    encoded[1] = d[0] ^ d[2] ^ d[3] ^ d[5] ^ d[6];
    encoded[3] = d[1] ^ d[2] ^ d[3] ^ d[7];
    encoded[7] = d[4] ^ d[5] ^ d[6] ^ d[7];

    return encoded;
}

// Utility: generate a 12-bit binary string for display
static std::string to_bits12(ap_uint<12> v) {
    std::string s;
    s.reserve(12);
    for (int i = 11; i >= 0; --i) s.push_back(v[i] ? '1' : '0');
    return s;
}

// Utility: generate an 8-bit binary string for display
static std::string to_bits8(ap_uint<8> v) {
    std::string s;
    s.reserve(8);
    for (int i = 7; i >= 0; --i) s.push_back(v[i] ? '1' : '0');
    return s;
}

// Parity self-check: verify parity bits against data bit positions in encoded word
static bool parity_self_check(ap_uint<12> e) {
    ap_uint<1> p0 = e[2] ^ e[4] ^ e[6] ^ e[8] ^ e[10];
    ap_uint<1> p1 = e[2] ^ e[5] ^ e[6] ^ e[9] ^ e[10];
    ap_uint<1> p3 = e[4] ^ e[5] ^ e[6] ^ e[11];
    ap_uint<1> p7 = e[8] ^ e[9] ^ e[10] ^ e[11];
    return (p0 == e[0]) && (p1 == e[1]) && (p3 == e[3]) && (p7 == e[7]);
}

int main() {
    int total_errors = 0;

    // Allocate input/output arrays per DUT interface
    ap_uint<8>  data_in[DATA_SIZE];
    ap_uint<12> data_out[DATA_SIZE];

    // ----------------------------------------------------------------------------
    // Test 1: Directed test vectors exercising corner and representative cases
    // ----------------------------------------------------------------------------
    // Patterns: zeros, ones, alternating, single-bit set, random-like patterns
    const unsigned num_patterns = 8;
    const unsigned char patterns[num_patterns] = {
        0x00, // All zeros
        0xFF, // All ones
        0xAA, // 10101010b
        0x55, // 01010101b
        0x01, // LSB set
        0x80, // MSB set
        0x3C, // Mixed low/mid bits
        0xC3  // Mixed high/low bits
    };

    // Initialize all inputs to zero
    for (unsigned i = 0; i < DATA_SIZE; ++i) {
        data_in[i] = 0;
        data_out[i] = 0;
    }
    // Place directed patterns at the beginning
    for (unsigned i = 0; i < num_patterns; ++i) {
        data_in[i] = patterns[i];
    }

    // Run DUT
    hamming_encoder(data_in, data_out);

    // Check directed patterns
    std::cout << "Test 1: Directed patterns\n";
    for (unsigned i = 0; i < num_patterns; ++i) {
        ap_uint<8> din = data_in[i];
        ap_uint<12> expected = reference_hamming_encode(din);
        ap_uint<12> actual   = data_out[i];
        bool match = (expected == actual);
        bool parity_ok = parity_self_check(actual);
        if (!match || !parity_ok) ++total_errors;

        std::cout << "  idx " << i
                  << " din=0x" << std::hex << std::setw(2) << std::setfill('0') << (unsigned)din
                  << " (" << to_bits8(din) << ")"
                  << " -> expected=0x" << std::hex << std::setw(3) << std::setfill('0') << (unsigned)expected
                  << " (" << to_bits12(expected) << ")"
                  << " actual=0x" << std::hex << std::setw(3) << std::setfill('0') << (unsigned)actual
                  << " (" << to_bits12(actual) << ")"
                  << " match=" << (match ? "YES" : "NO")
                  << " parity=" << (parity_ok ? "OK" : "BAD")
                  << std::dec << "\n";
    }

    // Also verify some untouched positions remained zero-encoded
    unsigned check_indices[] = {8, 100, 511, 1023};
    for (unsigned idx : check_indices) {
        ap_uint<12> actual = data_out[idx];
        if (actual != 0 || !parity_self_check(actual)) {
            std::cout << "  Unexpected non-zero at idx " << idx
                      << ": 0x" << std::hex << std::setw(3) << std::setfill('0') << (unsigned)actual
                      << " (" << to_bits12(actual) << ")" << std::dec << "\n";
            ++total_errors;
        }
    }

    // ----------------------------------------------------------------------------
    // Test 2: Full sweep over array with sequential byte pattern
    // ----------------------------------------------------------------------------
    std::cout << "Test 2: Full sweep with sequential pattern\n";
    for (unsigned i = 0; i < DATA_SIZE; ++i) {
        data_in[i] = (unsigned char)(i & 0xFF);
    }
    hamming_encoder(data_in, data_out);

    unsigned sweep_errors = 0;
    for (unsigned i = 0; i < DATA_SIZE; ++i) {
        ap_uint<12> expected = reference_hamming_encode(data_in[i]);
        ap_uint<12> actual   = data_out[i];
        if (expected != actual || !parity_self_check(actual)) {
            if (sweep_errors < 5) { // print only first few mismatches
                std::cout << "  Mismatch at idx " << i
                          << " din=0x" << std::hex << std::setw(2) << std::setfill('0') << (unsigned)data_in[i]
                          << " expected=0x" << std::hex << std::setw(3) << std::setfill('0') << (unsigned)expected
                          << " actual=0x" << std::hex << std::setw(3) << std::setfill('0') << (unsigned)actual
                          << std::dec << "\n";
            }
            ++sweep_errors;
        }
    }
    if (sweep_errors == 0) {
        std::cout << "  Sweep check: PASS\n";
    } else {
        std::cout << "  Sweep check: FAIL (errors=" << sweep_errors << ")\n";
    }
    total_errors += sweep_errors;

    // ----------------------------------------------------------------------------
    // Test 3: Randomized inputs with fixed seed for reproducibility
    // ----------------------------------------------------------------------------
    std::cout << "Test 3: Random pattern\n";
    std::srand(0xC0FFEEu);
    for (unsigned i = 0; i < DATA_SIZE; ++i) {
        data_in[i] = (unsigned char)(std::rand() & 0xFF);
    }
    hamming_encoder(data_in, data_out);

    unsigned rand_errors = 0;
    for (unsigned i = 0; i < DATA_SIZE; ++i) {
        ap_uint<12> expected = reference_hamming_encode(data_in[i]);
        ap_uint<12> actual   = data_out[i];
        if (expected != actual || !parity_self_check(actual)) {
            if (rand_errors < 5) { // print only first few mismatches
                std::cout << "  Mismatch at idx " << i
                          << " din=0x" << std::hex << std::setw(2) << std::setfill('0') << (unsigned)data_in[i]
                          << " expected=0x" << std::hex << std::setw(3) << std::setfill('0') << (unsigned)expected
                          << " actual=0x" << std::hex << std::setw(3) << std::setfill('0') << (unsigned)actual
                          << std::dec << "\n";
            }
            ++rand_errors;
        }
    }
    if (rand_errors == 0) {
        std::cout << "  Random check: PASS\n";
    } else {
        std::cout << "  Random check: FAIL (errors=" << rand_errors << ")\n";
    }
    total_errors += rand_errors;

    // ----------------------------------------------------------------------------
    // Summary
    // ----------------------------------------------------------------------------
    if (total_errors == 0) {
        std::cout << "All tests PASSED\n";
        return 0;
    } else {
        std::cout << "Tests FAILED with total errors: " << total_errors << "\n";
        return 1;
    }
}