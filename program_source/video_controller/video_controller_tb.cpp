// contents of video_controller_tb.cpp
#include <cstdio>
#include <cstdlib>
#include <cassert>

// Include the source under test to access WIDTH, HEIGHT, and video_controller()
#include "video_controller.cpp"

int main() {
    // Allocate frames as static to avoid large stack usage
    static ap_uint<8> input_frame[HEIGHT][WIDTH];
    static ap_uint<8> output_frame[HEIGHT][WIDTH];

    // Helper lambda to validate output equals 255 - input for the whole frame
    auto validate_inversion = [&](const char* test_name) {
        int mismatches = 0;
        for (int i = 0; i < HEIGHT; ++i) {
            for (int j = 0; j < WIDTH; ++j) {
                ap_uint<8> expected = ap_uint<8>(255 - (unsigned int)input_frame[i][j]);
                if (output_frame[i][j] != expected) {
                    if (mismatches < 5) {
                        std::printf("%s: Mismatch at (%d,%d): in=%u out=%u exp=%u\n",
                                    test_name, i, j,
                                    (unsigned)input_frame[i][j],
                                    (unsigned)output_frame[i][j],
                                    (unsigned)expected);
                    }
                    ++mismatches;
                }
            }
        }
        if (mismatches == 0) {
            std::printf("%s: PASS (no mismatches)\n", test_name);
        } else {
            std::printf("%s: FAIL (%d mismatches)\n", test_name, mismatches);
        }
        assert(mismatches == 0 && "Output does not match expected inversion");
    };

    // Test 1: All zeros input -> output should be all 255
    // This checks the lower boundary condition of pixel values.
    for (int i = 0; i < HEIGHT; ++i)
        for (int j = 0; j < WIDTH; ++j)
            input_frame[i][j] = ap_uint<8>(0);
    video_controller(input_frame, output_frame);
    validate_inversion("Test 1 (all zeros)");

    // Test 2: All 255 input -> output should be all 0
    // This checks the upper boundary condition of pixel values.
    for (int i = 0; i < HEIGHT; ++i)
        for (int j = 0; j < WIDTH; ++j)
            input_frame[i][j] = ap_uint<8>(255);
    video_controller(input_frame, output_frame);
    validate_inversion("Test 2 (all 255)");

    // Test 3: Gradient pattern across the frame
    // This exercises a wide range of input values and ensures general correctness.
    for (int i = 0; i < HEIGHT; ++i) {
        for (int j = 0; j < WIDTH; ++j) {
            unsigned val = (unsigned)((i * 7 + j * 13) & 0xFF);
            input_frame[i][j] = ap_uint<8>(val);
        }
    }
    video_controller(input_frame, output_frame);
    validate_inversion("Test 3 (gradient)");

    // Spot check a few representative coordinates and print values for visual confirmation
    // (These should already be correct due to assertions above.)
    int si[4] = {0, HEIGHT / 2, 123, HEIGHT - 1};
    int sj[4] = {0, WIDTH / 2, 456, WIDTH - 1};
    for (int k = 0; k < 4; ++k) {
        int i = si[k] < HEIGHT ? si[k] : HEIGHT - 1;
        int j = sj[k] < WIDTH ? sj[k] : WIDTH - 1;
        std::printf("Sample (%d,%d): in=%u out=%u (exp=%u)\n",
                    i, j,
                    (unsigned)input_frame[i][j],
                    (unsigned)output_frame[i][j],
                    (unsigned)(255 - (unsigned)input_frame[i][j]));
    }

    std::printf("All tests passed.\n");
    return 0;
}