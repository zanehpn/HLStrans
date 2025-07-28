#include "hls_stream.h"
#include <stdio.h>
#include <string.h>

#define MAX_IMAGE_WIDTH     1920
#define MAX_IMAGE_HEIGHT    1080
#define FILTER_V_SIZE       15
#define FILTER_H_SIZE       15
#ifndef MIN
#define MIN(a,b) ((a<b)?a:b)
#endif
#ifndef MAX
#define MAX(a,b) ((a<b)?b:a)
#endif

typedef unsigned char       U8;
typedef unsigned short      U16;
typedef unsigned int        U32;
typedef signed char         I8;
typedef signed short        I16;
typedef signed int          I32;

void convolution(
    const char           coeffs[256],
    float                factor,
    short                bias,
    unsigned short       width,
    unsigned short       height,
    unsigned short       stride,
    const unsigned char  src[MAX_IMAGE_WIDTH * MAX_IMAGE_HEIGHT],
    unsigned char        dst[MAX_IMAGE_WIDTH * MAX_IMAGE_HEIGHT])
{
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            int sum = 0;
            for (int ky = -FILTER_V_SIZE / 2; ky <= FILTER_V_SIZE / 2; ky++) {
                for (int kx = -FILTER_H_SIZE / 2; kx <= FILTER_H_SIZE / 2; kx++) {
                    int src_y = y + ky;
                    int src_x = x + kx;
                    
                    // Handle boundary conditions with mirroring
                    if (src_y < 0) src_y = -src_y;
                    if (src_x < 0) src_x = -src_x;
                    if (src_y >= height) src_y = 2 * height - src_y - 1;
                    if (src_x >= width) src_x = 2 * width - src_x - 1;
                    
                    int coef_index = (ky + FILTER_V_SIZE / 2) * FILTER_H_SIZE + (kx + FILTER_H_SIZE / 2);
                    sum += src[src_y * width + src_x] * coeffs[coef_index];
                }
            }
            int result = static_cast<int>(factor * sum) + bias;
            dst[y * width + x] = (result < 0) ? 0 : (result > 255) ? 255 : result;
        }
    }
}
