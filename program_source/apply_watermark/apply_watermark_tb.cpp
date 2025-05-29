#include "apply_watermark.h"
#include <ostream>
#include <iostream>

// Compute expected watermark addition for a given pixel value and position
static unsigned int get_expected(unsigned int orig, unsigned int x, unsigned int y) {
    unsigned int wm_x = x % WATERMARK_WIDTH;
    unsigned int wm_y = y % WATERMARK_HEIGHT;
    unsigned int mark = watermark[wm_y][wm_x];
    // saturatedAdd(orig, mark) behavior: channelwise saturate at 0xFF
    unsigned int res = 0;
    for (int c = 0; c < 3; ++c) {
        unsigned int shift = c * 8;
        unsigned int mask = 0xFFu << shift;
        unsigned int oc = (orig & mask) >> shift;
        unsigned int mc = (mark & mask) >> shift;
        unsigned int sum = oc + mc;
        if (sum > 0xFF) sum = 0xFF;
        res |= (sum << shift);
    }
    return res;
}

int main() {
    const unsigned int imgSize = width * height;
    const unsigned int vSize = (imgSize + DATA_SIZE - 1) / DATA_SIZE;

    // Allocate input and output buffers
    TYPE* input = new TYPE[vSize];
    TYPE* output = new TYPE[vSize];

    // Initialize input pixels to zero
    for (unsigned int idx = 0; idx < vSize; ++idx) {
        for (int i = 0; i < DATA_SIZE; ++i) {
            input[idx].data[i] = 0;
        }
    }

    // Call the DUT
    apply_watermark(input, output);

    // Verify results
    bool pass = true;
    for (unsigned int idx = 0; idx < vSize && pass; ++idx) {
        unsigned int base = idx * DATA_SIZE;
        for (int i = 0; i < DATA_SIZE; ++i) {
            unsigned int px_index = base + i;
            unsigned int x = px_index % width;
            unsigned int y = px_index / width;
            unsigned int got = output[idx].data[i];
            unsigned int exp = get_expected(0, x, y);
            if (got != exp) {
                std::cerr << "Mismatch at idx=" << idx << " elem=" << i
                          << " (x=" << x << ",y=" << y << "): got=0x"
                          << std::hex << got << ", exp=0x" << exp << std::dec << "\n";
                pass = false;
                break;
            }
        }
    }

    if (pass) {
        std::cout << "TEST PASSED" << std::endl;
        delete[] input;
        delete[] output;
        return 0;
    } else {
        std::cout << "TEST FAILED" << std::endl;
        delete[] input;
        delete[] output;
        return 1;
    }
}
