// contents of gaussian_blur_tb.cpp
#include <iostream>
#include <cmath>
#include <cassert>

// Include the source to access gaussian_blur, WIDTH, HEIGHT, and kernel behavior
#include "gaussian_blur.cpp"

static float g_input[HEIGHT][WIDTH];
static float g_output[HEIGHT][WIDTH];

static bool approx_equal(float a, float b, float eps = 1e-6f) {
    return std::fabs(a - b) <= eps;
}

static void fill_array(float arr[HEIGHT][WIDTH], float value) {
    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            arr[y][x] = value;
        }
    }
}

// Compute a single reference blur value at (y, x) using the same 5x5 kernel
static float reference_blur_at(const float arr[HEIGHT][WIDTH], int y, int x) {
    static const float kernel[5][5] = {
        {1, 4, 7, 4, 1},
        {4, 16, 26, 16, 4},
        {7, 26, 41, 26, 7},
        {4, 16, 26, 16, 4},
        {1, 4, 7, 4, 1}
    };
    const float kernel_sum = 273.0f;

    float sum = 0.0f;
    for (int ky = 0; ky < 5; ++ky) {
        for (int kx = 0; kx < 5; ++kx) {
            sum += arr[y + ky - 2][x + kx - 2] * kernel[ky][kx];
        }
    }
    return sum / kernel_sum;
}

int main() {
    std::cout << "Starting gaussian_blur testbench with WIDTH=" << WIDTH
              << ", HEIGHT=" << HEIGHT << std::endl;

    // Test 1: Uniform input image of ones; interior should remain 1.0 after blur.
    {
        // Initialize input to 1.0 and output to a sentinel value
        fill_array(g_input, 1.0f);
        fill_array(g_output, -1.0f);

        gaussian_blur(g_input, g_output);

        // Verify interior equals 1.0 and borders untouched (-1.0)
        int errors = 0;
        for (int y = 0; y < HEIGHT; ++y) {
            for (int x = 0; x < WIDTH; ++x) {
                bool is_border = (y < 2 || y >= HEIGHT - 2 || x < 2 || x >= WIDTH - 2);
                if (is_border) {
                    if (!approx_equal(g_output[y][x], -1.0f)) {
                        if (++errors <= 10) {
                            std::cerr << "Test1 border overwrite at (" << y << "," << x << "): "
                                      << g_output[y][x] << " != -1.0" << std::endl;
                        }
                    }
                } else {
                    if (!approx_equal(g_output[y][x], 1.0f)) {
                        if (++errors <= 10) {
                            std::cerr << "Test1 interior mismatch at (" << y << "," << x << "): "
                                      << g_output[y][x] << " != 1.0" << std::endl;
                        }
                    }
                }
            }
        }
        if (errors != 0) {
            std::cerr << "Test 1 failed with " << errors << " mismatches." << std::endl;
            return 1;
        } else {
            std::cout << "Test 1 passed: uniform image preserved (interior), borders untouched." << std::endl;
        }
    }

    // Test 2: Impulse response; place a single 1 at (cy,cx) and verify 5x5 kernel footprint
    {
        fill_array(g_input, 0.0f);
        fill_array(g_output, 0.0f);

        const int cy = HEIGHT / 2;
        const int cx = WIDTH / 2;
        g_input[cy][cx] = 1.0f;

        gaussian_blur(g_input, g_output);

        // Expected normalized kernel values around (cy, cx)
        static const float kernel[5][5] = {
            {1, 4, 7, 4, 1},
            {4, 16, 26, 16, 4},
            {7, 26, 41, 26, 7},
            {4, 16, 26, 16, 4},
            {1, 4, 7, 4, 1}
        };
        const float kernel_sum = 273.0f;

        int errors = 0;

        // Check the exact 5x5 neighborhood matches the normalized kernel
        for (int ky = 0; ky < 5; ++ky) {
            for (int kx = 0; kx < 5; ++kx) {
                float expected = kernel[ky][kx] / kernel_sum;
                float got = g_output[cy + ky - 2][cx + kx - 2];
                if (!approx_equal(got, expected, 1e-6f)) {
                    if (++errors <= 10) {
                        std::cerr << "Test2 kernel mismatch at offset (" << ky << "," << kx << "): "
                                  << got << " != " << expected << std::endl;
                    }
                }
            }
        }

        // Spot-check a few interior points outside the 5x5 neighborhood should be zero
        int check_points[][2] = {
            {cy - 10, cx - 10}, {cy - 10, cx + 10}, {cy + 10, cx - 10}, {cy + 10, cx + 10},
            {cy, cx - 10}, {cy, cx + 10}, {cy - 10, cx}, {cy + 10, cx}
        };
        for (auto &pt : check_points) {
            int y = pt[0];
            int x = pt[1];
            // Ensure we're within the interior region
            if (y >= 2 && y < HEIGHT - 2 && x >= 2 && x < WIDTH - 2) {
                if (!approx_equal(g_output[y][x], 0.0f, 1e-7f)) {
                    if (++errors <= 10) {
                        std::cerr << "Test2 non-zero outside kernel region at (" << y << "," << x
                                  << "): " << g_output[y][x] << " != 0" << std::endl;
                    }
                }
            }
        }

        if (errors != 0) {
            std::cerr << "Test 2 failed with " << errors << " mismatches." << std::endl;
            return 2;
        } else {
            std::cout << "Test 2 passed: impulse response matches normalized kernel." << std::endl;
        }
    }

    // Test 3: Ramp pattern; verify convolution at a few sample interior points against reference computation
    {
        // Create a simple ramp: input[y][x] = x + y
        for (int y = 0; y < HEIGHT; ++y) {
            for (int x = 0; x < WIDTH; ++x) {
                g_input[y][x] = static_cast<float>(x + y);
            }
        }
        fill_array(g_output, -999.0f);

        gaussian_blur(g_input, g_output);

        // Sample a few well-inside points to avoid boundary concerns
        int samples[][2] = {
            {100, 100},
            {256, 512},
            {512, 256},
            {700, 900}
        };

        int errors = 0;
        for (auto &pt : samples) {
            int y = pt[0];
            int x = pt[1];
            // Ensure samples are within the interior region
            if (y < 2 || y >= HEIGHT - 2 || x < 2 || x >= WIDTH - 2) continue;

            float expected = reference_blur_at(g_input, y, x);
            float got = g_output[y][x];
            if (!approx_equal(got, expected, 1e-4f)) {
                if (++errors <= 10) {
                    std::cerr << "Test3 mismatch at (" << y << "," << x << "): "
                              << got << " != " << expected << std::endl;
                }
            }
        }

        // Verify border still untouched (should remain -999.0f)
        for (int y = 0; y < HEIGHT; ++y) {
            for (int x = 0; x < WIDTH; ++x) {
                bool is_border = (y < 2 || y >= HEIGHT - 2 || x < 2 || x >= WIDTH - 2);
                if (is_border && !approx_equal(g_output[y][x], -999.0f)) {
                    if (++errors <= 10) {
                        std::cerr << "Test3 border overwrite at (" << y << "," << x << "): "
                                  << g_output[y][x] << " != -999.0" << std::endl;
                    }
                }
            }
        }

        if (errors != 0) {
            std::cerr << "Test 3 failed with " << errors << " mismatches." << std::endl;
            return 3;
        } else {
            std::cout << "Test 3 passed: ramp pattern matches reference at sample points, borders untouched." << std::endl;
        }
    }

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}