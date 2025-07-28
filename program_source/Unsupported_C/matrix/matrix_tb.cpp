// matrix_tb.cpp
#include <cassert>
#include <iostream>

// Prototype (or include your matrix_hls.cpp)
void matrix(int rows, int cols, int value);

// Externally visible HLS array
int mat_hls[32][32];

int main() {
    // 1) Zero out entire matrix to detect untouched areas
    for (int i = 0; i < 32; ++i)
        for (int j = 0; j < 32; ++j)
            mat_hls[i][j] = 0xDEADBEEF;

    // 2) Test cases: (rows, cols, value)
    struct Test { int r,c,v; } tests[] = {
        {1, 1,  7},
        {4, 5, 13},
        {32,32, -1},
        {8,16, 42},
    };

    for (auto &t : tests) {
        // Before each case, reinitialize to known pattern
        for (int i = 0; i < 32; ++i)
            for (int j = 0; j < 32; ++j)
                mat_hls[i][j] = 0xDEADBEEF;

        // 3) Invoke DUT
        matrix(t.r, t.c, t.v);

        // 4) Verify
        for (int i = 0; i < 32; ++i) {
            for (int j = 0; j < 32; ++j) {
                int expected;
                if (i < t.r && j < t.c) expected = t.v;
                else                      expected = 0xDEADBEEF;
                if (mat_hls[i][j] != expected) {
                    std::cerr << "Mismatch at (" << i << "," << j << ") "
                              << "for test ("
                              << t.r << "," << t.c << "," << t.v << "): "
                              << "got " << mat_hls[i][j]
                              << ", expected " << expected
                              << std::endl;
                    return 1;
                }
            }
        }
        std::cout << "Test matrix(" << t.r << "," << t.c << "," << t.v 
                  << ") passed." << std::endl;
    }

    std::cout << "All matrix tests passed." << std::endl;
    return 0;
}
