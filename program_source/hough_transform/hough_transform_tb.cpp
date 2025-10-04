// contents of hough_transform_tb.cpp

#include <iostream>
#include <cassert>

// Include the source to avoid duplicate symbol/linking issues and to reuse types/macros
#include "hough_transform.cpp"

// Helper to clear image array
static void clear_image(ap_uint<8> img[HEIGHT][WIDTH]) {
    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            img[y][x] = 0;
        }
    }
}

// Helper to check if entire accumulator is zero
static bool is_accumulator_zero(const ap_uint<32> acc[THETA_SIZE][RHO_SIZE]) {
    for (int t = 0; t < THETA_SIZE; ++t) {
        for (int r = 0; r < RHO_SIZE; ++r) {
            if (acc[t][r] != 0) {
                return false;
            }
        }
    }
    return true;
}

int main() {
    // Allocate arrays statically to avoid large stack allocations
    static ap_uint<8> image[HEIGHT][WIDTH];
    static ap_uint<32> accumulator[THETA_SIZE][RHO_SIZE];

    // Test 1: Empty image should produce an all-zero accumulator
    clear_image(image);
    hough_transform(image, accumulator);
    bool acc_zero = is_accumulator_zero(accumulator);
    std::cout << "Test 1 (Empty image -> zero accumulator): " << (acc_zero ? "PASS" : "FAIL") << std::endl;
    assert(acc_zero && "Accumulator must be all zeros for empty image");

    // Test 2: Vertical line at x=100 and horizontal line at y=200
    // - For theta=0 deg (cos=1, sin=0), rho = x + RHO_SIZE/2, so bin at rho = 100 + 724 = 824 should have HEIGHT votes (1024)
    // - For theta=90 deg (cos=0, sin=1), rho = y + RHO_SIZE/2, so bin at rho = 200 + 724 = 924 should have WIDTH votes (1024)
    clear_image(image);
    const int half_rho = RHO_SIZE / 2;
    const int x_vertical = 100;
    const int y_horizontal = 200;

    // Draw vertical line at x=100 across all y
    for (int y = 0; y < HEIGHT; ++y) {
        image[y][x_vertical] = 255;
    }
    // Draw horizontal line at y=200 across all x
    for (int x = 0; x < WIDTH; ++x) {
        image[y_horizontal][x] = 255;
    }

    // Run Hough Transform
    hough_transform(image, accumulator);

    // Compute expected bins
    const int theta0 = 0;
    const int theta90 = 90;
    const int rho_for_vertical_at_theta0 = half_rho + x_vertical;   // 724 + 100 = 824
    const int rho_for_horizontal_at_theta90 = half_rho + y_horizontal; // 724 + 200 = 924

    // Verify main expected peaks
    ap_uint<32> vcount = accumulator[theta0][rho_for_vertical_at_theta0];
    ap_uint<32> hcount = accumulator[theta90][rho_for_horizontal_at_theta90];

    std::cout << "Test 2: Vertical line peak at (theta=0, rho=" << rho_for_vertical_at_theta0 << ") = " << (unsigned long long)vcount << std::endl;
    std::cout << "Test 2: Horizontal line peak at (theta=90, rho=" << rho_for_horizontal_at_theta90 << ") = " << (unsigned long long)hcount << std::endl;

    assert(vcount == HEIGHT && "Vertical line peak count mismatch (expected HEIGHT)");
    assert(hcount == WIDTH && "Horizontal line peak count mismatch (expected WIDTH)");

    // Additional checks for specific bins:
    // - At theta=0, rho=724 corresponds to x=0. Only the horizontal line contributes 1 pixel at (x=0, y=200).
    const int rho_x0_theta0 = half_rho + 0; // 724
    ap_uint<32> count_x0_theta0 = accumulator[theta0][rho_x0_theta0];
    std::cout << "Test 2: Bin (theta=0, rho=" << rho_x0_theta0 << ") expected 1 -> " << (unsigned long long)count_x0_theta0 << std::endl;
    assert(count_x0_theta0 == 1 && "Bin (theta=0, rho=724) should have exactly 1 vote from (x=0, y=200)");

    // - Bins that cannot be reached at theta=0/90 with our non-negative x,y should remain zero:
    ap_uint<32> zero_check_0_0 = accumulator[0][0];
    ap_uint<32> zero_check_90_0 = accumulator[90][0];
    std::cout << "Test 2: Bin (theta=0, rho=0) = " << (unsigned long long)zero_check_0_0 << " (expected 0)" << std::endl;
    std::cout << "Test 2: Bin (theta=90, rho=0) = " << (unsigned long long)zero_check_90_0 << " (expected 0)" << std::endl;
    assert(zero_check_0_0 == 0 && "Bin (theta=0, rho=0) should be zero");
    assert(zero_check_90_0 == 0 && "Bin (theta=90, rho=0) should be zero");

    std::cout << "All tests passed." << std::endl;
    return 0;
}