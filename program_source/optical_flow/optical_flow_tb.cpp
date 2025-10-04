// contents of optical_flow_tb.cpp
#include <iostream>
#include <cassert>
#include <cstdint>

// Include the DUT implementation. It defines optical_flow() and all types.
#include "optical_flow.cpp"

// Helper to pack five 8-bit frames into frames_t (ap_uint<64>) as expected by optical_flow()
// Byte layout used by optical_flow(): [7:0]=f1, [15:8]=f2, [23:16]=f3, [31:24]=f4, [39:32]=f5
static inline frames_t pack_frames_u8(uint8_t f1, uint8_t f2, uint8_t f3, uint8_t f4, uint8_t f5) {
    frames_t w = 0;
    w.range(7, 0) = f1;
    w.range(15, 8) = f2;
    w.range(23, 16) = f3;
    w.range(31, 24) = f4;
    w.range(39, 32) = f5;
    return w;
}

int main() {
    // Allocate inputs and outputs
    static frames_t frames[MAX_HEIGHT][MAX_WIDTH];
    static velocity_t outputs[MAX_HEIGHT][MAX_WIDTH];

    // -------------------------------
    // Test 1: All-zero input sequence
    // - All five frames are 0 at every pixel.
    // - Expected: outputs are zero everywhere.
    // -------------------------------
    for (int r = 0; r < MAX_HEIGHT; ++r) {
        for (int c = 0; c < MAX_WIDTH; ++c) {
            frames[r][c] = pack_frames_u8(0, 0, 0, 0, 0);
        }
    }

    optical_flow(frames, outputs);

    // Verify that all outputs are zero
    int errors_zero = 0;
    for (int r = 0; r < MAX_HEIGHT; ++r) {
        for (int c = 0; c < MAX_WIDTH; ++c) {
            bool zero_x = (outputs[r][c].x == (vel_pixel_t)0);
            bool zero_y = (outputs[r][c].y == (vel_pixel_t)0);
            if (!zero_x || !zero_y) {
                errors_zero++;
                // Early break if too many errors (avoid excessive prints in large arrays)
                if (errors_zero < 5) {
                    std::cout << "Non-zero flow at (" << r << "," << c << "): "
                              << "vx=" << (double)outputs[r][c].x << ", vy=" << (double)outputs[r][c].y << "\n";
                }
            }
        }
    }
    std::cout << "[Test 1] All-zero input: non-zero count = " << errors_zero << "\n";
    assert(errors_zero == 0 && "Test 1 failed: expected all-zero flow");

    // -------------------------------
    // Test 2: Spatial ramp in frame3 and temporal ramp across frames
    // - frame3 has a simple spatial gradient to produce non-zero x/y gradients.
    // - frame1..5 increase over time to produce temporal gradients.
    // - Expected: edges (r<2 or r>=H-2 or c<2 or c>=W-2) remain zero by design.
    // - We print a few interior sample vectors for inspection.
    // -------------------------------
    for (int r = 0; r < MAX_HEIGHT; ++r) {
        for (int c = 0; c < MAX_WIDTH; ++c) {
            // Clamp simple ramp to 8-bit
            uint8_t ramp_spatial = (uint8_t)((r + c) & 0xFF);
            uint8_t f1 = 20;
            uint8_t f2 = 40;
            uint8_t f3 = ramp_spatial; // spatial gradient only used by gradient_xy
            uint8_t f4 = 80;
            uint8_t f5 = 120;
            frames[r][c] = pack_frames_u8(f1, f2, f3, f4, f5);
        }
    }

    optical_flow(frames, outputs);

    // Verify that the outer 2-pixel border is zero as per flow_calc() boundary condition.
    int edge_errors = 0;
    for (int r = 0; r < MAX_HEIGHT; ++r) {
        for (int c = 0; c < MAX_WIDTH; ++c) {
            if (r < 2 || r >= (MAX_HEIGHT - 2) || c < 2 || c >= (MAX_WIDTH - 2)) {
                bool zero_x = (outputs[r][c].x == (vel_pixel_t)0);
                bool zero_y = (outputs[r][c].y == (vel_pixel_t)0);
                if (!zero_x || !zero_y) {
                    edge_errors++;
                    if (edge_errors < 5) {
                        std::cout << "Non-zero edge flow at (" << r << "," << c << "): "
                                  << "vx=" << (double)outputs[r][c].x << ", vy=" << (double)outputs[r][c].y << "\n";
                    }
                }
            }
        }
    }
    std::cout << "[Test 2] Edge zero-check: non-zero edge count = " << edge_errors << "\n";
    assert(edge_errors == 0 && "Test 2 failed: expected zero flow on edges");

    // Print a few interior samples for manual inspection (values depend on filter math)
    int rc = MAX_HEIGHT / 2;
    int cc = MAX_WIDTH / 2;
    std::cout << "[Test 2] Sample interior flows:\n";
    auto print_sample = [&](int r, int c) {
        std::cout << "  (" << r << "," << c << "): "
                  << "vx=" << (double)outputs[r][c].x << ", vy=" << (double)outputs[r][c].y << "\n";
    };
    print_sample(rc, cc);
    if (rc + 5 < MAX_HEIGHT && cc + 0 < MAX_WIDTH) print_sample(rc + 5, cc);
    if (rc + 0 < MAX_HEIGHT && cc + 5 < MAX_WIDTH) print_sample(rc, cc + 5);
    if (rc + 10 < MAX_HEIGHT && cc + 10 < MAX_WIDTH) print_sample(rc + 10, cc + 10);
    if (100 < MAX_HEIGHT && 100 < MAX_WIDTH) print_sample(100, 100);

    std::cout << "All tests completed successfully.\n";
    return 0;
}