// contents of video_processor_tb.cpp
#include <iostream>
#include <random>
#include <cstdint>
#include <cassert>

// Include the DUT (Device Under Test) implementation
#include "video_processor.cpp"

// Use static storage to avoid large stack allocations for 1024x1024 arrays
static uint8_t in_buf[HEIGHT][WIDTH];
static uint8_t out_buf[HEIGHT][WIDTH];

// Helper: Count mismatches between output and expected inversion of input
static int count_mismatches_inversion(const uint8_t input[HEIGHT][WIDTH],
                                      const uint8_t output[HEIGHT][WIDTH]) {
    int mismatches = 0;
    for (int i = 0; i < HEIGHT; ++i) {
        for (int j = 0; j < WIDTH; ++j) {
            uint8_t expected = static_cast<uint8_t>(255 - input[i][j]);
            if (output[i][j] != expected) {
                ++mismatches;
            }
        }
    }
    return mismatches;
}

// Helper: Fill output buffer with a known pattern to ensure it gets overwritten
static void poison_output(uint8_t value = 0xEE) {
    for (int i = 0; i < HEIGHT; ++i) {
        for (int j = 0; j < WIDTH; ++j) {
            out_buf[i][j] = value;
        }
    }
}

int main() {
    bool all_pass = true;

    // Test 1: All zeros input, expect all 255 output
    // Purpose: Verify inversion of minimum input value
    {
        for (int i = 0; i < HEIGHT; ++i) {
            for (int j = 0; j < WIDTH; ++j) {
                in_buf[i][j] = 0;
            }
        }
        poison_output();
        video_processor(in_buf, out_buf);
        int mismatches = count_mismatches_inversion(in_buf, out_buf);
        std::cout << "Test 1 (all zeros): mismatches=" << mismatches << "\n";
        all_pass &= (mismatches == 0);
        assert(mismatches == 0 && "Test 1 failed: output not all 255 for zero input");
        // Spot check a few corners
        std::cout << "  Sample outputs: (0,0)=" << int(out_buf[0][0])
                  << " (H-1,W-1)=" << int(out_buf[HEIGHT-1][WIDTH-1]) << "\n";
    }

    // Test 2: All 255 input, expect all zeros output
    // Purpose: Verify inversion of maximum input value
    {
        for (int i = 0; i < HEIGHT; ++i) {
            for (int j = 0; j < WIDTH; ++j) {
                in_buf[i][j] = 255;
            }
        }
        poison_output();
        video_processor(in_buf, out_buf);
        int mismatches = count_mismatches_inversion(in_buf, out_buf);
        std::cout << "Test 2 (all 255): mismatches=" << mismatches << "\n";
        all_pass &= (mismatches == 0);
        assert(mismatches == 0 && "Test 2 failed: output not all 0 for 255 input");
        std::cout << "  Sample outputs: (0,0)=" << int(out_buf[0][0])
                  << " (H-1,W-1)=" << int(out_buf[HEIGHT-1][WIDTH-1]) << "\n";
    }

    // Test 3: Gradient pattern input, expect inverted gradient output
    // Purpose: Verify general correctness across varying values
    {
        for (int i = 0; i < HEIGHT; ++i) {
            for (int j = 0; j < WIDTH; ++j) {
                in_buf[i][j] = static_cast<uint8_t>((i + j) & 0xFF);
            }
        }
        poison_output();
        video_processor(in_buf, out_buf);
        int mismatches = count_mismatches_inversion(in_buf, out_buf);
        std::cout << "Test 3 (gradient): mismatches=" << mismatches << "\n";
        all_pass &= (mismatches == 0);
        assert(mismatches == 0 && "Test 3 failed: gradient inversion incorrect");
        std::cout << "  Sample inputs/outputs: (0,0) in=" << int(in_buf[0][0]) << " out=" << int(out_buf[0][0])
                  << " (100,200) in=" << int(in_buf[100][200]) << " out=" << int(out_buf[100][200]) << "\n";
    }

    // Test 4: Pseudorandom input, deterministic seed, expect correct inversion
    // Purpose: Stress test with random values and verify inversion property
    {
        std::mt19937 rng(12345); // deterministic seed
        std::uniform_int_distribution<int> dist(0, 255);
        for (int i = 0; i < HEIGHT; ++i) {
            for (int j = 0; j < WIDTH; ++j) {
                in_buf[i][j] = static_cast<uint8_t>(dist(rng));
            }
        }
        poison_output();
        video_processor(in_buf, out_buf);
        int mismatches = count_mismatches_inversion(in_buf, out_buf);
        std::cout << "Test 4 (random): mismatches=" << mismatches << "\n";
        all_pass &= (mismatches == 0);
        assert(mismatches == 0 && "Test 4 failed: random inversion incorrect");
        std::cout << "  Sample inputs/outputs: (512,512) in=" << int(in_buf[512][512]) << " out=" << int(out_buf[512][512]) << "\n";
    }

    // Test 5: In-place processing (input and output are the same buffer)
    // Purpose: Check behavior when input and output alias; should still invert correctly here
    {
        // Initialize in_buf with a pattern
        for (int i = 0; i < HEIGHT; ++i) {
            for (int j = 0; j < WIDTH; ++j) {
                in_buf[i][j] = static_cast<uint8_t>((i * 3 + j * 5) & 0xFF);
            }
        }
        // Call with the same buffer for input and output
        video_processor(in_buf, in_buf);

        // Verify: after in-place inversion, each element should be 255 - original
        int mismatches = 0;
        for (int i = 0; i < HEIGHT; ++i) {
            for (int j = 0; j < WIDTH; ++j) {
                uint8_t original = static_cast<uint8_t>((i * 3 + j * 5) & 0xFF);
                uint8_t expected = static_cast<uint8_t>(255 - original);
                if (in_buf[i][j] != expected) {
                    ++mismatches;
                }
            }
        }
        std::cout << "Test 5 (in-place): mismatches=" << mismatches << "\n";
        all_pass &= (mismatches == 0);
        assert(mismatches == 0 && "Test 5 failed: in-place inversion incorrect");
        std::cout << "  Sample in-place outputs: (0,0)=" << int(in_buf[0][0])
                  << " (H-1,W-1)=" << int(in_buf[HEIGHT-1][WIDTH-1]) << "\n";
    }

    std::cout << (all_pass ? "ALL TESTS PASSED" : "SOME TESTS FAILED") << std::endl;
    return all_pass ? 0 : 1;
}