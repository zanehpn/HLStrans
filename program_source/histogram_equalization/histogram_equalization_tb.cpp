// contents of histogram_equalization_tb.cpp
#include <iostream>
#include <cassert>

// Include the DUT source to avoid duplicate symbol issues and to access definitions.
#include "histogram_equalization.cpp"

// Helper to run the DUT
void run_heq(const ap_uint<8> in[IMAGE_SIZE], ap_uint<8> out[IMAGE_SIZE]) {
    histogram_equalization(const_cast<ap_uint<8>*>(in), out);
}

// Test 1: Uniform ramp 0..255 repeated (uniform histogram).
// Expected: Equalization is identity mapping (output == input) for all pixels.
void test_ramp_identity() {
    ap_uint<8> in[IMAGE_SIZE];
    ap_uint<8> out[IMAGE_SIZE];
    for (int i = 0; i < IMAGE_SIZE; ++i) {
        in[i] = static_cast<ap_uint<8>>(i & 0xFF);
    }

    run_heq(in, out);

    for (int i = 0; i < IMAGE_SIZE; ++i) {
        assert(out[i] == in[i]);
    }
    std::cout << "Test 1 (ramp identity) passed: output equals input for all pixels." << std::endl;
}

// Test 2: Binary image: first half zeros, second half 255.
// Expected: 0 maps to 0, 255 maps to 255 (extremes preserved).
void test_binary_extremes() {
    ap_uint<8> in[IMAGE_SIZE];
    ap_uint<8> out[IMAGE_SIZE];

    for (int i = 0; i < IMAGE_SIZE / 2; ++i) in[i] = 0;
    for (int i = IMAGE_SIZE / 2; i < IMAGE_SIZE; ++i) in[i] = 255;

    run_heq(in, out);

    for (int i = 0; i < IMAGE_SIZE / 2; ++i) {
        assert(out[i] == 0);
    }
    for (int i = IMAGE_SIZE / 2; i < IMAGE_SIZE; ++i) {
        assert(out[i] == 255);
    }
    std::cout << "Test 2 (binary extremes) passed: zeros->0 and 255->255." << std::endl;
}

// Test 3: Skewed distribution: 3/4 zeros, 1/4 at 128.
// Expected: zeros map to 0, 128 maps to 255 due to stretching.
void test_skewed_low_and_mid() {
    ap_uint<8> in[IMAGE_SIZE];
    ap_uint<8> out[IMAGE_SIZE];

    int n_zero = (IMAGE_SIZE * 3) / 4;   // 768 for IMAGE_SIZE=1024
    int n_mid  = IMAGE_SIZE - n_zero;    // 256

    for (int i = 0; i < n_zero; ++i) in[i] = 0;
    for (int i = n_zero; i < IMAGE_SIZE; ++i) in[i] = 128;

    run_heq(in, out);

    for (int i = 0; i < n_zero; ++i) {
        assert(out[i] == 0);
    }
    for (int i = n_zero; i < IMAGE_SIZE; ++i) {
        assert(out[i] == 255);
    }
    std::cout << "Test 3 (skewed 0 and 128) passed: zeros->0 and 128->255." << std::endl;
}

// Test 4: Three-level distribution: 1/4 zeros, 1/2 at 100, 1/4 at 200.
// Expected mapping with cdf_min = 256 and denominator = 768:
//   0   -> 0
//   100 -> 170 (exactly (512*255)/768 = 170)
//   200 -> 255
void test_three_level_mapping() {
    ap_uint<8> in[IMAGE_SIZE];
    ap_uint<8> out[IMAGE_SIZE];

    int n0 = IMAGE_SIZE / 4;     // 256
    int n1 = IMAGE_SIZE / 2;     // 512
    int n2 = IMAGE_SIZE - n0 - n1; // 256

    int idx = 0;
    for (int i = 0; i < n0; ++i) in[idx++] = 0;
    for (int i = 0; i < n1; ++i) in[idx++] = 100;
    for (int i = 0; i < n2; ++i) in[idx++] = 200;

    run_heq(in, out);

    // Verify the expected mapping
    for (int i = 0; i < n0; ++i) {
        assert(out[i] == 0);
    }
    for (int i = n0; i < n0 + n1; ++i) {
        assert(out[i] == 170);
    }
    for (int i = n0 + n1; i < IMAGE_SIZE; ++i) {
        assert(out[i] == 255);
    }

    // Print a few samples to visualize mapping
    std::cout << "Test 4 (three-level) passed: 0->0, 100->170, 200->255." << std::endl;
    std::cout << "Sample outputs: "
              << "in[0]=0 -> out[0]=" << (unsigned)out[0]
              << ", in[n0]=100 -> out[n0]=" << (unsigned)out[n0]
              << ", in[end]=200 -> out[end]=" << (unsigned)out[IMAGE_SIZE-1]
              << std::endl;
}

int main() {
    std::cout << "Running histogram_equalization testbench..." << std::endl;

    test_ramp_identity();
    test_binary_extremes();
    test_skewed_low_and_mid();
    test_three_level_mapping();

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}