// contents of rgb_to_yuv_tb.cpp
#include <iostream>
#include <cstdint>
#include <cassert>

// Include the DUT implementation (no main() is defined there)
#include "rgb_to_yuv.cpp"

// Helper to mimic the ap_uint<8> cast behavior when assigning from double:
// - Truncate toward zero
// - Wrap modulo 256 (2^8)
static inline unsigned to_ap_uint8(double x) {
    long long t = (long long)x;        // truncate toward zero
    return static_cast<unsigned>(t & 0xFFLL); // wrap to 8 bits
}

// Compute expected YUV for given RGB using the same coefficients as DUT
static void compute_expected(int r, int g, int b, unsigned &y, unsigned &u, unsigned &v) {
    double rd = static_cast<double>(r);
    double gd = static_cast<double>(g);
    double bd = static_cast<double>(b);

    double yd = 0.299 * rd + 0.587 * gd + 0.114 * bd;
    double ud = -0.14713 * rd - 0.28886 * gd + 0.436 * bd + 128.0;
    double vd = 0.615 * rd - 0.51499 * gd - 0.10001 * bd + 128.0;

    y = to_ap_uint8(yd);
    u = to_ap_uint8(ud);
    v = to_ap_uint8(vd);
}

int main() {
    // Allocate static arrays to avoid stack overflow for large 2D arrays
    static ap_uint<8> R[HEIGHT][WIDTH];
    static ap_uint<8> G[HEIGHT][WIDTH];
    static ap_uint<8> B[HEIGHT][WIDTH];
    static ap_uint<8> Y[HEIGHT][WIDTH];
    static ap_uint<8> U[HEIGHT][WIDTH];
    static ap_uint<8> V[HEIGHT][WIDTH];

    // Initialize all inputs to zero (black) to ensure deterministic behavior
    for (int i = 0; i < HEIGHT; ++i) {
        for (int j = 0; j < WIDTH; ++j) {
            R[i][j] = 0;
            G[i][j] = 0;
            B[i][j] = 0;
        }
    }

    // Define several representative test pixels at unique coordinates
    struct TestPixel {
        int i, j;
        int r, g, b;
        const char* name;
    } tests[] = {
        // All zeros (black)
        {0, 0, 0, 0, 0, "Black (0,0,0)"},
        // All max (white)
        {1, 2, 255, 255, 255, "White (255,255,255)"},
        // Pure red (note: V may wrap due to lack of saturation in DUT)
        {2, 3, 255, 0, 0, "Red (255,0,0)"},
        // Pure green (note: V may wrap negative to high value)
        {3, 4, 0, 255, 0, "Green (0,255,0)"},
        // Pure blue
        {4, 5, 0, 0, 255, "Blue (0,0,255)"},
        // Mid-gray
        {10, 10, 128, 128, 128, "Gray (128,128,128)"},
        // Random mix
        {15, 31, 16, 200, 45, "Random (16,200,45)"}
    };

    // Apply test pixels
    for (const auto& tp : tests) {
        R[tp.i][tp.j] = tp.r;
        G[tp.i][tp.j] = tp.g;
        B[tp.i][tp.j] = tp.b;
    }

    // Run the device under test
    rgb_to_yuv(R, G, B, Y, U, V);

    // Verify selected pixels against expected values
    for (const auto& tp : tests) {
        unsigned expY, expU, expV;
        compute_expected(tp.r, tp.g, tp.b, expY, expU, expV);

        unsigned gotY = (unsigned)Y[tp.i][tp.j];
        unsigned gotU = (unsigned)U[tp.i][tp.j];
        unsigned gotV = (unsigned)V[tp.i][tp.j];

        // Print and assert each test case result
        std::cout << "Test: " << tp.name
                  << " at (" << tp.i << "," << tp.j << ") -> "
                  << "YUV got=(" << gotY << "," << gotU << "," << gotV << ")"
                  << " expected=(" << expY << "," << expU << "," << expV << ")\n";

        // Basic assertions to ensure correctness
        assert(gotY == expY);
        assert(gotU == expU);
        assert(gotV == expV);
    }

    // Additional check: a location we did not set remains black -> Y=0, U=128, V=128
    // This validates the default behavior for zero input.
    int zi = 100, zj = 100;
    assert((unsigned)R[zi][zj] == 0u && (unsigned)G[zi][zj] == 0u && (unsigned)B[zi][zj] == 0u);
    unsigned expY0, expU0, expV0;
    compute_expected(0, 0, 0, expY0, expU0, expV0);
    std::cout << "Test: Default zero input at (100,100) -> "
              << "YUV got=(" << (unsigned)Y[zi][zj] << "," << (unsigned)U[zi][zj] << "," << (unsigned)V[zi][zj] << ")"
              << " expected=(" << expY0 << "," << expU0 << "," << expV0 << ")\n";
    assert((unsigned)Y[zi][zj] == expY0);
    assert((unsigned)U[zi][zj] == expU0);
    assert((unsigned)V[zi][zj] == expV0);

    std::cout << "All tests PASSED.\n";
    return 0;
}