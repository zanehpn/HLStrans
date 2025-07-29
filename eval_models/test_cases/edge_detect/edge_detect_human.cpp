#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdint.h>

#define WIDTH 64
#define HEIGHT 64

typedef uint8_t data_t;

void edge_detect(int *inputImage, int *outputImage, int EDGE_THRESHOLD) {
    
    data_t lineBuffer1[WIDTH+2];
#pragma HLS RESOURCE variable=lineBuffer1 core=RAM_2P_BRAM
    data_t lineBuffer2[WIDTH+2];
#pragma HLS RESOURCE variable=lineBuffer2 core=RAM_2P_BRAM
    data_t pixelWindow[3][3];
#pragma HLS ARRAY_PARTITION variable=pixelWindow complete dim=1
#pragma HLS ARRAY_PARTITION variable=pixelWindow complete dim=2

    // Process the image row by row
    for (int row = 0; row < HEIGHT; row++) {
        for (int col = 0; col < WIDTH + 2; col++) {
            data_t newPixel;
            
            // Read new pixel (handle padding for the first and last column)
            if (col == 0 || col == WIDTH + 1) {
                newPixel = 0;
            } else {
                newPixel = inputImage[row * WIDTH + (col - 1)];
            }

            // Update pixel window
            pixelWindow[0][0] = pixelWindow[0][1];
            pixelWindow[0][1] = pixelWindow[0][2];
            pixelWindow[0][2] = lineBuffer1[col];
            pixelWindow[1][0] = pixelWindow[1][1];
            pixelWindow[1][1] = pixelWindow[1][2];
            pixelWindow[1][2] = lineBuffer2[col];
            pixelWindow[2][0] = pixelWindow[2][1];
            pixelWindow[2][1] = pixelWindow[2][2];
            pixelWindow[2][2] = newPixel;

            // Update line buffers
            lineBuffer1[col] = lineBuffer2[col];
            lineBuffer2[col] = newPixel;

            // Apply Sobel filter if within valid pixel range
            if (col > 0 && col < WIDTH + 1 && row > 0) {
                int Gx = (pixelWindow[0][0] + 2 * pixelWindow[0][1] + pixelWindow[0][2]) -
                         (pixelWindow[2][0] + 2 * pixelWindow[2][1] + pixelWindow[2][2]);
                int Gy = (pixelWindow[0][0] + 2 * pixelWindow[1][0] + pixelWindow[2][0]) -
                         (pixelWindow[0][2] + 2 * pixelWindow[1][2] + pixelWindow[2][2]);

                int gradient = (int)(abs(Gx) + abs(Gy));

                // Apply thresholding
                if (gradient >= EDGE_THRESHOLD) {
                    gradient = 255;
                }

                // Store the result (excluding padding)
                outputImage[(row - 1) * WIDTH + (col - 1)] = gradient;
            }
        }
    }
}
