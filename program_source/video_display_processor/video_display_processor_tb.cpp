// contents of video_display_processor_tb.cpp

#include <iostream>
#include <random>
#include <cstdint>
#include <cstring>

// Include the DUT (Device Under Test) source directly to avoid linkage issues.
// This brings in WIDTH, HEIGHT, and the video_display_processor function.
#include "video_display_processor.cpp"

// Helper to fill the entire frame with a constant value
static void fill_constant(uint8_t frame[HEIGHT][WIDTH], uint8_t value) {
    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            frame[y][x] = value;
        }
    }
}

// Helper to fill with a simple gradient pattern: (x + y) % 256
static void fill_gradient(uint8_t frame[HEIGHT][WIDTH]) {
    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            frame[y][x] = static_cast<uint8_t>((x + y) & 0xFF);
        }
    }
}

// Helper to fill with pseudo-random data using a deterministic seed
static void fill_random(uint8_t frame[HEIGHT][WIDTH], uint32_t seed = 12345u) {
    std::mt19937 rng(seed);
    std::uniform_int_distribution<int> dist(0, 255);
    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            frame[y][x] = static_cast<uint8_t>(dist(rng));
        }
    }
}

// Verify that output_frame is the inversion of input_frame: out = 255 - in
static bool verify_inversion(const uint8_t in[HEIGHT][WIDTH],
                             const uint8_t out[HEIGHT][WIDTH],
                             int max_mismatch_reports = 5) {
    int mismatches = 0;
    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            uint8_t expected = static_cast<uint8_t>(255 - in[y][x]);
            if (out[y][x] != expected) {
                if (mismatches < max_mismatch_reports) {
                    std::cerr << "Mismatch at (" << y << "," << x << "): "
                              << "in=" << static_cast<int>(in[y][x])
                              << " out=" << static_cast<int>(out[y][x])
                              << " expected=" << static_cast<int>(expected) << "\n";
                }
                ++mismatches;
            }
        }
    }
    if (mismatches != 0) {
        std::cerr << "Total mismatches: " << mismatches << "\n";
        return false;
    }
    return true;
}

// Print a few sample pixels to visually confirm behavior
static void print_sample_pixels(const uint8_t in[HEIGHT][WIDTH],
                                const uint8_t out[HEIGHT][WIDTH]) {
    // Corners and center samples
    int sample_coords[5][2] = {
        {0, 0},
        {0, WIDTH - 1},
        {HEIGHT - 1, 0},
        {HEIGHT - 1, WIDTH - 1},
        {HEIGHT / 2, WIDTH / 2}
    };
    std::cout << "Sample pixels (y, x): in -> out (expected=255-in)\n";
    for (auto& coord : sample_coords) {
        int y = coord[0];
        int x = coord[1];
        uint8_t in_px = in[y][x];
        uint8_t out_px = out[y][x];
        std::cout << "(" << y << "," << x << "): "
                  << static_cast<int>(in_px) << " -> "
                  << static_cast<int>(out_px) << " ("
                  << static_cast<int>(255 - in_px) << ")\n";
    }
}

int main() {
    // Allocate frames statically to avoid large stack usage
    static uint8_t input_frame[HEIGHT][WIDTH];
    static uint8_t output_frame[HEIGHT][WIDTH];

    bool all_passed = true;

    // Test 1: Constant black frame (all zeros) should invert to all 255
    std::cout << "Test 1: Constant black frame -> expect all 255\n";
    fill_constant(input_frame, 0);
    // Clear output to a distinguishable value before processing
    fill_constant(output_frame, 0xAA);
    video_display_processor(input_frame, output_frame);
    if (!verify_inversion(input_frame, output_frame)) {
        std::cerr << "Test 1 FAILED\n";
        all_passed = false;
    } else {
        std::cout << "Test 1 PASSED\n";
        print_sample_pixels(input_frame, output_frame);
    }

    // Test 2: Constant white frame (all 255) should invert to all 0
    std::cout << "\nTest 2: Constant white frame -> expect all 0\n";
    fill_constant(input_frame, 255);
    fill_constant(output_frame, 0xAA);
    video_display_processor(input_frame, output_frame);
    if (!verify_inversion(input_frame, output_frame)) {
        std::cerr << "Test 2 FAILED\n";
        all_passed = false;
    } else {
        std::cout << "Test 2 PASSED\n";
        print_sample_pixels(input_frame, output_frame);
    }

    // Test 3: Gradient pattern to verify general correctness across values
    std::cout << "\nTest 3: Gradient pattern -> verify out = 255 - (x+y)%256\n";
    fill_gradient(input_frame);
    fill_constant(output_frame, 0xAA);
    video_display_processor(input_frame, output_frame);
    if (!verify_inversion(input_frame, output_frame)) {
        std::cerr << "Test 3 FAILED\n";
        all_passed = false;
    } else {
        std::cout << "Test 3 PASSED\n";
        print_sample_pixels(input_frame, output_frame);
    }

    // Test 4: Random data with fixed seed for reproducibility
    std::cout << "\nTest 4: Random frame with fixed seed -> general robustness\n";
    fill_random(input_frame, 98765u);
    fill_constant(output_frame, 0xAA);
    video_display_processor(input_frame, output_frame);
    if (!verify_inversion(input_frame, output_frame)) {
        std::cerr << "Test 4 FAILED\n";
        all_passed = false;
    } else {
        std::cout << "Test 4 PASSED\n";
        print_sample_pixels(input_frame, output_frame);
    }

    // Final result summary and return code
    if (all_passed) {
        std::cout << "\nAll tests PASSED\n";
        return 0;
    } else {
        std::cerr << "\nOne or more tests FAILED\n";
        return 1;
    }
}