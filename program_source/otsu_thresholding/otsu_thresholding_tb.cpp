// contents of otsu_thresholding_tb.cpp

#include <iostream>
#include <random>
#include <algorithm>
#include <cstddef>

// Include the source to access otsu_thresholding and IMG_SIZE
#include "otsu_thresholding.cpp"

// Helper to count how many pixels are 255 in the output image
std::size_t count_white(const ap_uint<8> out[IMG_SIZE]) {
    std::size_t cnt = 0;
    for (int i = 0; i < IMG_SIZE; ++i) {
        if (out[i] == ap_uint<8>(255)) cnt++;
    }
    return cnt;
}

// Helper to validate that all pixels equal to expected value
bool all_equal(const ap_uint<8> out[IMG_SIZE], ap_uint<8> expected) {
    for (int i = 0; i < IMG_SIZE; ++i) {
        if (out[i] != expected) return false;
    }
    return true;
}

// Helper to print a brief preview of the first N pixels
void preview(const ap_uint<8> out[IMG_SIZE], int N = 16) {
    for (int i = 0; i < N; ++i) {
        std::cout << unsigned(out[i]) << (i + 1 < N ? ' ' : '\n');
    }
}

int main() {
    // Test 1: Uniform dark image (all zeros) -> expected all 0 after thresholding
    {
        ap_uint<8> image[IMG_SIZE];
        ap_uint<8> out[IMG_SIZE];
        for (int i = 0; i < IMG_SIZE; ++i) image[i] = ap_uint<8>(0);
        otsu_thresholding(image, out);
        bool pass = all_equal(out, ap_uint<8>(0));
        std::cout << "Test 1 (uniform dark image): " << (pass ? "PASS" : "FAIL") << "\n";
        std::cout << "White pixel count: " << count_white(out) << "\n";
        std::cout << "Preview: ";
        preview(out);
    }

    // Test 2: Uniform bright image (all 255) -> expected all 255 after thresholding
    {
        ap_uint<8> image[IMG_SIZE];
        ap_uint<8> out[IMG_SIZE];
        for (int i = 0; i < IMG_SIZE; ++i) image[i] = ap_uint<8>(255);
        otsu_thresholding(image, out);
        bool pass = all_equal(out, ap_uint<8>(255));
        std::cout << "Test 2 (uniform bright image): " << (pass ? "PASS" : "FAIL") << "\n";
        std::cout << "White pixel count: " << count_white(out) << "\n";
        std::cout << "Preview: ";
        preview(out);
    }

    // Test 3: Bimodal extremes (first half 0, second half 255) -> expected first half 0, second half 255
    {
        ap_uint<8> image[IMG_SIZE];
        ap_uint<8> out[IMG_SIZE];
        for (int i = 0; i < IMG_SIZE / 2; ++i) image[i] = ap_uint<8>(0);
        for (int i = IMG_SIZE / 2; i < IMG_SIZE; ++i) image[i] = ap_uint<8>(255);
        otsu_thresholding(image, out);

        bool first_half_ok = true;
        bool second_half_ok = true;
        for (int i = 0; i < IMG_SIZE / 2; ++i) {
            if (out[i] != ap_uint<8>(0)) { first_half_ok = false; break; }
        }
        for (int i = IMG_SIZE / 2; i < IMG_SIZE; ++i) {
            if (out[i] != ap_uint<8>(255)) { second_half_ok = false; break; }
        }

        std::cout << "Test 3 (bimodal 0/255 halves): "
                  << ((first_half_ok && second_half_ok) ? "PASS" : "FAIL") << "\n";
        std::cout << "White pixel count: " << count_white(out) << "\n";
        std::cout << "Preview: ";
        preview(out);
    }

    // Test 4: Two clusters (first half value 50, second half value 200)
    // Expected: low cluster maps to 0, high cluster maps to 255
    {
        ap_uint<8> image[IMG_SIZE];
        ap_uint<8> out[IMG_SIZE];
        for (int i = 0; i < IMG_SIZE / 2; ++i) image[i] = ap_uint<8>(50);
        for (int i = IMG_SIZE / 2; i < IMG_SIZE; ++i) image[i] = ap_uint<8>(200);
        otsu_thresholding(image, out);

        bool low_ok = true;
        bool high_ok = true;
        for (int i = 0; i < IMG_SIZE / 2; ++i) {
            if (out[i] != ap_uint<8>(0)) { low_ok = false; break; }
        }
        for (int i = IMG_SIZE / 2; i < IMG_SIZE; ++i) {
            if (out[i] != ap_uint<8>(255)) { high_ok = false; break; }
        }

        std::cout << "Test 4 (clusters 50/200): "
                  << ((low_ok && high_ok) ? "PASS" : "FAIL") << "\n";
        std::cout << "White pixel count: " << count_white(out) << "\n";
        std::cout << "Preview: ";
        preview(out);
    }

    // Test 5: Gradient pattern (0..255 repeated 4 times) -> expected mixed result (not all 0 or all 255)
    {
        ap_uint<8> image[IMG_SIZE];
        ap_uint<8> out[IMG_SIZE];
        for (int i = 0; i < IMG_SIZE; ++i) {
            image[i] = ap_uint<8>(i % 256);
        }
        otsu_thresholding(image, out);

        std::size_t white = count_white(out);
        bool not_all_zero = white > 0;
        bool not_all_white = white < IMG_SIZE;

        std::cout << "Test 5 (gradient repeated): "
                  << ((not_all_zero && not_all_white) ? "PASS" : "FAIL") << "\n";
        std::cout << "White pixel count: " << white << "\n";
        std::cout << "Preview: ";
        preview(out);
    }

    // Test 6: Random noise image -> print statistics and preview
    {
        ap_uint<8> image[IMG_SIZE];
        ap_uint<8> out[IMG_SIZE];
        std::mt19937 rng(12345); // fixed seed for reproducibility
        std::uniform_int_distribution<int> dist(0, 255);
        for (int i = 0; i < IMG_SIZE; ++i) {
            image[i] = ap_uint<8>(dist(rng));
        }
        otsu_thresholding(image, out);
        std::size_t white = count_white(out);
        std::cout << "Test 6 (random noise): PASS (executed)\n";
        std::cout << "White pixel count: " << white << "\n";
        std::cout << "Preview: ";
        preview(out);
    }

    return 0;
}