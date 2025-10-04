// ---- file: video_display_processor.cpp ----
#include <cstdint>

#define WIDTH 1024
#define HEIGHT 768

void video_display_processor(uint8_t input_frame[HEIGHT][WIDTH], uint8_t output_frame[HEIGHT][WIDTH]) {
#pragma HLS ARRAY_PARTITION variable=output_frame type=cyclic dim=2 factor=16
#pragma HLS ARRAY_PARTITION variable=output_frame type=cyclic dim=1 factor=4
#pragma HLS ARRAY_PARTITION variable=input_frame type=cyclic dim=2 factor=4
#pragma HLS ARRAY_PARTITION variable=input_frame type=cyclic dim=1 factor=1
    for (int y = 0; y < HEIGHT; y++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for (int x = 0; x < WIDTH; x++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            // Example processing: Invert colors
            output_frame[y][x] = 255 - input_frame[y][x];
        }
    }
}

// Top function name: video_display_processor
