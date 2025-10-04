// Converted from video_controller_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: video_controller.cpp ----
#include <ap_int.h>

#define WIDTH 1920
#define HEIGHT 1080

void video_controller(ap_uint<8> input_frame[HEIGHT][WIDTH], ap_uint<8> output_frame[HEIGHT][WIDTH]) {

    int i, j;
    for (i = 0; i < HEIGHT; i++) {

        for (j = 0; j < WIDTH; j++) {

            // Example processing: Invert the pixel value
            output_frame[i][j] = 255 - input_frame[i][j];
        }
    }
}

// Top function name: video_controller
