// median_filter_tb.c
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>

#define W  640
#define H  480

// DUT prototype
void median_filter(int in[W*H], int out[W*H]);

// Software median of a 5×5 block
static int sw_median5x5(const int img[W*H], int cy, int cx) {
    int buf[25], idx = 0;
    for (int dy = -2; dy <= 2; ++dy)
      for (int dx = -2; dx <= 2; ++dx)
        buf[idx++] = img[(cy+dy)*W + (cx+dx)];
    // simple selection sort up to the 13th element
    for (int i = 0; i < 13; ++i)
      for (int j = i+1; j < 25; ++j)
        if (buf[j] < buf[i]) {
          int t = buf[i]; buf[i] = buf[j]; buf[j] = t;
        }
    return buf[12];
}

int main() {
    // 1) Allocate and initialize test image
    static int in_img[W*H], out_img[W*H];
    for (int y = 0; y < H; ++y) {
      for (int x = 0; x < W; ++x) {
        // create a simple gradient pattern
        in_img[y*W + x] = (y*W + x) % 256;
        out_img[y*W + x] = -1;
      }
    }

    // 2) Call the HLS median filter kernel
    median_filter(in_img, out_img);

    // 3) Verify each valid output pixel
    for (int y = 2; y < H-2; ++y) {
      for (int x = 2; x < W-2; ++x) {
        int got = out_img[y*W + x];
        int exp = sw_median5x5(in_img, y, x);
        if (got != exp) {
          printf("Mismatch at (%d,%d): got %d, expected %d\n",
                 y, x, got, exp);
          return 1;
        }
      }
    }

    // 4) Report success
    printf("All median filter outputs correct.\n");
    return 0;
}
