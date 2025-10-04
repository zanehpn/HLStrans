// contents of error_correction_with_arq_tb.cpp
#include <iostream>
#include <cassert>
#include <cstdlib>
#include <ctime>

// Include the DUT source (defines ARRAY_SIZE and error_correction_with_arq)
#include "error_correction_with_arq.cpp"

static int verify_equal(const ap_uint<8> expected[ARRAY_SIZE], const ap_uint<8> actual[ARRAY_SIZE], bool verbose = false) {
    int mismatches = 0;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        if (expected[i] != actual[i]) {
            ++mismatches;
            if (verbose && mismatches <= 10) {
                std::cout << "Mismatch at index " << i
                          << ": expected=" << (unsigned)expected[i]
                          << " actual=" << (unsigned)actual[i] << "\n";
            }
        }
    }
    return mismatches;
}

int main() {
    std::srand(static_cast<unsigned>(std::time(nullptr)));

    ap_uint<8> input_data[ARRAY_SIZE];
    ap_uint<8> corrected_data[ARRAY_SIZE];
    ap_uint<1> ack[ARRAY_SIZE];

    int total_failures = 0;

    // Test 1: All zeros input, all ACKs set to 1
    // Expectation: corrected_data equals input_data (all zeros)
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        input_data[i] = (ap_uint<8>)0x00;
        ack[i] = (ap_uint<1>)1;
        corrected_data[i] = 0; // clear
    }
    error_correction_with_arq(input_data, corrected_data, ack);
    {
        int mismatches = verify_equal(input_data, corrected_data, true);
        if (mismatches == 0) {
            std::cout << "Test 1 PASS: All zeros with ACK=1\n";
        } else {
            std::cout << "Test 1 FAIL: mismatches=" << mismatches << "\n";
            ++total_failures;
        }
    }

    // Test 2: All 0xFF input, all ACKs set to 0
    // Expectation: corrected_data equals input_data (all 0xFF)
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        input_data[i] = (ap_uint<8>)0xFF;
        ack[i] = (ap_uint<1>)0;
        corrected_data[i] = 0; // clear
    }
    error_correction_with_arq(input_data, corrected_data, ack);
    {
        int mismatches = verify_equal(input_data, corrected_data, true);
        if (mismatches == 0) {
            std::cout << "Test 2 PASS: All 0xFF with ACK=0\n";
        } else {
            std::cout << "Test 2 FAIL: mismatches=" << mismatches << "\n";
            ++total_failures;
        }
    }

    // Test 3: Ascending pattern modulo 256, alternating ACKs 0/1
    // Expectation: corrected_data equals input_data for every element
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        input_data[i] = (ap_uint<8>)(i & 0xFF);
        ack[i] = (ap_uint<1>)(i & 0x1);
        corrected_data[i] = 0; // clear
    }
    error_correction_with_arq(input_data, corrected_data, ack);
    {
        int mismatches = verify_equal(input_data, corrected_data, true);
        if (mismatches == 0) {
            std::cout << "Test 3 PASS: Ascending pattern with alternating ACKs\n";
        } else {
            std::cout << "Test 3 FAIL: mismatches=" << mismatches << "\n";
            ++total_failures;
        }
    }

    // Test 4: Random input data and random ACKs
    // Expectation: corrected_data equals input_data regardless of ACK values
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        input_data[i] = (ap_uint<8>)(std::rand() & 0xFF);
        ack[i] = (ap_uint<1>)(std::rand() & 0x1);
        corrected_data[i] = 0; // clear
    }
    error_correction_with_arq(input_data, corrected_data, ack);
    {
        int mismatches = verify_equal(input_data, corrected_data, true);
        if (mismatches == 0) {
            std::cout << "Test 4 PASS: Random data with random ACKs\n";
        } else {
            std::cout << "Test 4 FAIL: mismatches=" << mismatches << "\n";
            ++total_failures;
        }
    }

    // Edge Case Test 5: Single non-zero element at start and end, mixed ACKs
    // Expectation: corrected_data equals input_data
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        input_data[i] = (ap_uint<8>)0;
        ack[i] = (ap_uint<1>)((i % 3) == 0);
        corrected_data[i] = 0; // clear
    }
    input_data[0] = (ap_uint<8>)0xAB;
    input_data[ARRAY_SIZE - 1] = (ap_uint<8>)0xCD;

    error_correction_with_arq(input_data, corrected_data, ack);
    {
        int mismatches = verify_equal(input_data, corrected_data, true);
        if (mismatches == 0) {
            std::cout << "Test 5 PASS: Edge indices with mixed ACKs\n";
        } else {
            std::cout << "Test 5 FAIL: mismatches=" << mismatches << "\n";
            ++total_failures;
        }
    }

    if (total_failures == 0) {
        std::cout << "All tests PASSED\n";
    } else {
        std::cout << "Some tests FAILED: total_failures=" << total_failures << "\n";
    }

    // Optional: assert to fail fast in automated regression environments
    assert(total_failures == 0 && "One or more tests failed");

    return (total_failures == 0) ? 0 : 1;
}