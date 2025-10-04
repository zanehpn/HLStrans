#include <cmath>
#include <cstdint>

#define IMG_WIDTH 1024
#define IMG_HEIGHT 1024

void sobel_edge_detection(uint8_t input_image[IMG_HEIGHT][IMG_WIDTH], uint8_t output_image[IMG_HEIGHT][IMG_WIDTH]) {
    int gx, gy;

    // Dynamic allocation for Sobel kernels
    int* sobel_x = new int[9]{-1, 0, 1, -2, 0, 2, -1, 0, 1};
    int* sobel_y = new int[9]{-1, -2, -1,  0, 0, 0,  1, 2, 1};

    // Dynamic allocation for image buffers
    const int W = IMG_WIDTH;
    const int H = IMG_HEIGHT;
    const int size = W * H;
    uint8_t* in_buf = new uint8_t[size];
    uint8_t* out_buf = new uint8_t[size];

    // Copy input_image into dynamic buffer
    for (int i = 0; i < H; ++i) {
        for (int j = 0; j < W; ++j) {
            in_buf[i * W + j] = input_image[i][j];
        }
    }

    // Compute Sobel on interior pixels, store into dynamic output buffer
    for (int i = 1; i < H - 1; i++) {
        for (int j = 1; j < W - 1; j++) {
            gx = 0;
            gy = 0;
            for (int x = -1; x <= 1; x++) {
                for (int y = -1; y <= 1; y++) {
                    int pixel = in_buf[(i + x) * W + (j + y)];
                    int k = (x + 1) * 3 + (y + 1);
                    gx += pixel * sobel_x[k];
                    gy += pixel * sobel_y[k];
                }
            }
            int magnitude = static_cast<int>(std::sqrt(gx * gx + gy * gy));
            if (magnitude > 255) magnitude = 255;
            out_buf[i * W + j] = static_cast<uint8_t>(magnitude);
        }
    }

    // Copy interior results back to output_image, leaving borders unchanged
    for (int i = 1; i < H - 1; i++) {
        for (int j = 1; j < W - 1; j++) {
            output_image[i][j] = out_buf[i * W + j];
        }
    }

    // Free dynamic memory
    delete[] sobel_x;
    delete[] sobel_y;
    delete[] in_buf;
    delete[] out_buf;
}
