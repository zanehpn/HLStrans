// ---- file: edge_detector.cpp ----
#include <cmath>

#define IMG_WIDTH 1024
#define IMG_HEIGHT 1024

void edge_detector(int input_image[IMG_HEIGHT][IMG_WIDTH], int output_image[IMG_HEIGHT][IMG_WIDTH]) {
#pragma HLS ARRAY_PARTITION variable=output_image type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=output_image type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=input_image type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=input_image type=cyclic dim=1 factor=1
    int gx, gy;
    int sobel_x[3][3] = {
        {-1, 0, 1},
        {-2, 0, 2},
        {-1, 0, 1}
    };
    int sobel_y[3][3] = {
        {-1, -2, -1},
        {0, 0, 0},
        {1, 2, 1}
    };

    for (int i = 1; i < IMG_HEIGHT - 1; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for (int j = 1; j < IMG_WIDTH - 1; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            gx = 0;
            gy = 0;
            for (int k = -1; k <= 1; k++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
                for (int l = -1; l <= 1; l++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
                    gx += input_image[i + k][j + l] * sobel_x[k + 1][l + 1];
                    gy += input_image[i + k][j + l] * sobel_y[k + 1][l + 1];
                }
            }
            output_image[i][j] = (int)sqrt((float)(gx * gx + gy * gy));
        }
    }
}

// Top function name: edge_detector
