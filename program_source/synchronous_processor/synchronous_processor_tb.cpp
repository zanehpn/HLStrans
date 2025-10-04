// contents of synchronous_processor_tb.cpp

#include <iostream>
#include <cassert>

// Include the DUT implementation and its definitions (ap_int, SIZE, and the function)
#include "synchronous_processor.cpp"

// Helper to print a few sample outputs for visual inspection
static void print_samples(const char* label, ap_int<16> out[SIZE], int count = 8) {
    std::cout << label << ": ";
    for (int i = 0; i < count && i < SIZE; ++i) {
        std::cout << (int)out[i] << (i == count - 1 ? "" : ", ");
    }
    std::cout << std::endl;
}

// Test 1: Simple linear pattern without overflow
// input1[i] = i, input2[i] = 2*i, expected output = 3*i
static bool test_simple_linear() {
    ap_int<16> in1[SIZE];
    ap_int<16> in2[SIZE];
    ap_int<16> out[SIZE];

    for (int i = 0; i < SIZE; ++i) {
        in1[i] = (ap_int<16>)i;
        in2[i] = (ap_int<16>)(2 * i);
        out[i] = 0;
    }

    synchronous_processor(in1, in2, out);

    for (int i = 0; i < SIZE; ++i) {
        ap_int<16> expected = (ap_int<16>)(3 * i);
        if (out[i] != expected) {
            std::cerr << "test_simple_linear FAILED at index " << i
                      << " expected " << (int)expected << " got " << (int)out[i] << std::endl;
            return false;
        }
    }

    print_samples("Simple linear test output samples", out);
    return true;
}

// Test 2: Wrap-around edge cases for 16-bit signed arithmetic
// Even indices:  32767 + 1     => -32768 (wrap-around)
// Odd indices:  -32768 + (-1)  =>  32767 (wrap-around)
static bool test_wraparound_edges() {
    ap_int<16> in1[SIZE];
    ap_int<16> in2[SIZE];
    ap_int<16> out[SIZE];

    for (int i = 0; i < SIZE; ++i) {
        if ((i & 1) == 0) {
            in1[i] = (ap_int<16>)32767;
            in2[i] = (ap_int<16>)1;
        } else {
            in1[i] = (ap_int<16>)(-32768);
            in2[i] = (ap_int<16>)(-1);
        }
        out[i] = 0;
    }

    synchronous_processor(in1, in2, out);

    for (int i = 0; i < SIZE; ++i) {
        ap_int<16> expected = in1[i] + in2[i]; // ap_int handles wrap-around
        if (out[i] != expected) {
            std::cerr << "test_wraparound_edges FAILED at index " << i
                      << " expected " << (int)expected << " got " << (int)out[i] << std::endl;
            return false;
        }
    }

    print_samples("Wrap-around test output samples", out);
    return true;
}

// Test 3: Mixed negative/positive patterned inputs with no overflow expected
// input1[i] in range [-25, 24], input2[i] in range [-35, 34], so sum in [-60, 59]
static bool test_mixed_pattern() {
    ap_int<16> in1[SIZE];
    ap_int<16> in2[SIZE];
    ap_int<16> out[SIZE];

    for (int i = 0; i < SIZE; ++i) {
        in1[i] = (ap_int<16>)((i % 50) - 25);
        in2[i] = (ap_int<16>)((i % 70) - 35);
        out[i] = 0;
    }

    synchronous_processor(in1, in2, out);

    for (int i = 0; i < SIZE; ++i) {
        ap_int<16> expected = (ap_int<16>)((i % 50) - 25) + (ap_int<16>)((i % 70) - 35);
        if (out[i] != expected) {
            std::cerr << "test_mixed_pattern FAILED at index " << i
                      << " expected " << (int)expected << " got " << (int)out[i] << std::endl;
            return false;
        }
    }

    print_samples("Mixed pattern test output samples", out);
    return true;
}

// Test 4: All zeros to confirm baseline behavior
static bool test_zeros() {
    ap_int<16> in1[SIZE];
    ap_int<16> in2[SIZE];
    ap_int<16> out[SIZE];

    for (int i = 0; i < SIZE; ++i) {
        in1[i] = 0;
        in2[i] = 0;
        out[i] = 0;
    }

    synchronous_processor(in1, in2, out);

    for (int i = 0; i < SIZE; ++i) {
        if (out[i] != 0) {
            std::cerr << "test_zeros FAILED at index " << i
                      << " expected 0 got " << (int)out[i] << std::endl;
            return false;
        }
    }

    print_samples("Zero test output samples", out);
    return true;
}

int main() {
    bool ok = true;

    // Run each test and track overall status
    ok &= test_simple_linear();
    ok &= test_wraparound_edges();
    ok &= test_mixed_pattern();
    ok &= test_zeros();

    if (ok) {
        std::cout << "All tests PASSED" << std::endl;
        return 0;
    } else {
        std::cerr << "Some tests FAILED" << std::endl;
        return 1;
    }
}