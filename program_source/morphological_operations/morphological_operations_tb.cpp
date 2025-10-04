// contents of morphological_operations_tb.cpp
#include <cstdint>
#include <iostream>
#include <cstdlib>
#include <vector>

// Include the source under test (no main defined there)
#include "morphological_operations.cpp"

// Helper: fill entire image with a constant value
static void fill_image(uint8_t img[IMG_SIZE][IMG_SIZE], uint8_t val) {
    for (int i = 0; i < IMG_SIZE; ++i) {
        for (int j = 0; j < IMG_SIZE; ++j) {
            img[i][j] = val;
        }
    }
}

// Helper: assert equality with message and exit on failure
static void assert_eq_u8(uint8_t actual, uint8_t expected, const char* context, int i = -1, int j = -1) {
    if (actual != expected) {
        std::cerr << "ASSERT FAILED: " << context
                  << " at (" << i << "," << j << ")"
                  << " expected=" << (int)expected << " actual=" << (int)actual << std::endl;
        std::exit(1);
    }
}

int main() {
    // Use static to keep arrays off the stack
    static uint8_t input[IMG_SIZE][IMG_SIZE];
    static uint8_t out_dil[IMG_SIZE][IMG_SIZE];
    static uint8_t out_ero[IMG_SIZE][IMG_SIZE];

    int center = IMG_SIZE / 2;

    // Test 1: Single bright pixel on dark background
    // - Dilation should produce a 3x3 block around the bright pixel
    // - Erosion should produce zeros everywhere in the interior
    {
        fill_image(input, 0);
        fill_image(out_dil, 0xAA);
        fill_image(out_ero, 0xAA);

        input[center][center] = 100;

        morphological_operations(input, out_dil, true);   // Dilation
        // Check 3x3 region becomes 100
        for (int di = -1; di <= 1; ++di) {
            for (int dj = -1; dj <= 1; ++dj) {
                assert_eq_u8(out_dil[center + di][center + dj], 100, "Single pixel dilation", center + di, center + dj);
            }
        }
        // Check outside immediate neighborhood remains 0
        assert_eq_u8(out_dil[center + 2][center], 0, "Outside dilation region (down one step)", center + 2, center);
        assert_eq_u8(out_dil[center - 2][center], 0, "Outside dilation region (up one step)", center - 2, center);
        assert_eq_u8(out_dil[center][center + 2], 0, "Outside dilation region (right one step)", center, center + 2);
        assert_eq_u8(out_dil[center][center - 2], 0, "Outside dilation region (left one step)", center, center - 2);

        morphological_operations(input, out_ero, false);  // Erosion
        // Check a few points (including center) are 0 due to surrounding zeros
        for (int di = -1; di <= 1; ++di) {
            for (int dj = -1; dj <= 1; ++dj) {
                assert_eq_u8(out_ero[center + di][center + dj], 0, "Single pixel erosion should be zero", center + di, center + dj);
            }
        }
        // Check some far interior position is also 0
        assert_eq_u8(out_ero[center + 50][center - 73], 0, "Erosion far point", center + 50, center - 73);

        std::cout << "Test 1 passed: Single bright pixel behavior (dilation/erosion) verified." << std::endl;
    }

    // Test 2: Solid 5x5 block of value 200 on zeros
    // - Dilation should expand to a 7x7 block of 200
    // - Erosion should shrink to a 3x3 block of 200
    {
        fill_image(input, 0);
        // Place a 5x5 block centered at (center, center)
        for (int i = center - 2; i <= center + 2; ++i) {
            for (int j = center - 2; j <= center + 2; ++j) {
                input[i][j] = 200;
            }
        }

        morphological_operations(input, out_dil, true);   // Dilation
        // Check 7x7 region becomes 200
        for (int i = center - 3; i <= center + 3; ++i) {
            for (int j = center - 3; j <= center + 3; ++j) {
                assert_eq_u8(out_dil[i][j], 200, "5x5 dilation -> 7x7 region", i, j);
            }
        }
        // Just outside the dilated region should be 0
        assert_eq_u8(out_dil[center + 4][center], 0, "Outside 7x7 dilation region (down)", center + 4, center);
        assert_eq_u8(out_dil[center - 4][center], 0, "Outside 7x7 dilation region (up)", center - 4, center);
        assert_eq_u8(out_dil[center][center + 4], 0, "Outside 7x7 dilation region (right)", center, center + 4);
        assert_eq_u8(out_dil[center][center - 4], 0, "Outside 7x7 dilation region (left)", center, center - 4);

        morphological_operations(input, out_ero, false);  // Erosion
        // Check 3x3 region remains 200 at the center
        for (int i = center - 1; i <= center + 1; ++i) {
            for (int j = center - 1; j <= center + 1; ++j) {
                assert_eq_u8(out_ero[i][j], 200, "5x5 erosion -> 3x3 region", i, j);
            }
        }
        // Just outside the 3x3 eroded region should be 0
        assert_eq_u8(out_ero[center + 2][center], 0, "Outside 3x3 erosion region (down)", center + 2, center);
        assert_eq_u8(out_ero[center - 2][center], 0, "Outside 3x3 erosion region (up)", center - 2, center);
        assert_eq_u8(out_ero[center][center + 2], 0, "Outside 3x3 erosion region (right)", center, center + 2);
        assert_eq_u8(out_ero[center][center - 2], 0, "Outside 3x3 erosion region (left)", center, center - 2);

        std::cout << "Test 2 passed: 5x5 block dilation/erosion sizes verified." << std::endl;
    }

    // Test 3: Constant field (value 123) should be invariant under both dilation and erosion (interior)
    {
        fill_image(input, 123);
        morphological_operations(input, out_dil, true);    // Dilation
        morphological_operations(input, out_ero, false);   // Erosion

        // Sample a few interior points
        std::vector<std::pair<int,int>> pts = {
            {1,1},
            {2,500},
            {500,2},
            {center, center},
            {100, 900},
            {900, 100},
            {IMG_SIZE - 2, IMG_SIZE - 2},
            {IMG_SIZE - 3, IMG_SIZE - 3}
        };
        for (auto &p : pts) {
            int i = p.first;
            int j = p.second;
            if (i < 1 || i > IMG_SIZE - 2 || j < 1 || j > IMG_SIZE - 2) continue; // ensure interior
            assert_eq_u8(out_dil[i][j], 123, "Constant field dilation", i, j);
            assert_eq_u8(out_ero[i][j], 123, "Constant field erosion", i, j);
        }

        std::cout << "Test 3 passed: Constant field invariance verified." << std::endl;
    }

    // Test 4: Single dark pixel on bright background (255)
    // - Erosion should produce a 3x3 block of 0
    // - Dilation should remain 255 everywhere in the interior
    {
        fill_image(input, 255);
        input[center][center] = 0;

        morphological_operations(input, out_ero, false);   // Erosion
        // 3x3 zero region at center
        for (int di = -1; di <= 1; ++di) {
            for (int dj = -1; dj <= 1; ++dj) {
                assert_eq_u8(out_ero[center + di][center + dj], 0, "Single dark pixel erosion -> 3x3 zeros", center + di, center + dj);
            }
        }
        // Just outside should be 255
        assert_eq_u8(out_ero[center + 2][center], 255, "Outside 3x3 erosion region (down)", center + 2, center);
        assert_eq_u8(out_ero[center - 2][center], 255, "Outside 3x3 erosion region (up)", center - 2, center);
        assert_eq_u8(out_ero[center][center + 2], 255, "Outside 3x3 erosion region (right)", center, center + 2);
        assert_eq_u8(out_ero[center][center - 2], 255, "Outside 3x3 erosion region (left)", center, center - 2);

        morphological_operations(input, out_dil, true);    // Dilation
        // A few interior points (including center) should be 255
        for (auto &p : std::vector<std::pair<int,int>>{
                {center, center}, {center + 1, center}, {center, center + 1},
                {10, 10}, {500, 500}, {IMG_SIZE - 3, IMG_SIZE - 3} }) {
            int i = p.first, j = p.second;
            if (i >= 1 && i <= IMG_SIZE - 2 && j >= 1 && j <= IMG_SIZE - 2) {
                assert_eq_u8(out_dil[i][j], 255, "Dilation with bright background", i, j);
            }
        }

        std::cout << "Test 4 passed: Single dark pixel behavior (dilation/erosion) verified." << std::endl;
    }

    // Test 5: Basic morphological property checks at sample points
    // - Dilation output >= input (pointwise)
    // - Erosion output <= input (pointwise)
    {
        // Create a mixed pattern
        fill_image(input, 0);
        for (int i = 100; i < 110; ++i) {
            for (int j = 200; j < 212; ++j) {
                input[i][j] = (uint8_t)((i + j) % 256);
            }
        }
        // Add a bright stripe
        for (int i = 300; i < 305; ++i) {
            for (int j = 400; j < 410; ++j) {
                input[i][j] = 240;
            }
        }

        morphological_operations(input, out_dil, true);
        morphological_operations(input, out_ero, false);

        // Sample some interior points for property checks
        std::vector<std::pair<int,int>> pts = {
            {101,201}, {105,210}, {304,405}, {center, center}, {500, 600}, {700, 700}
        };
        for (auto &p : pts) {
            int i = p.first, j = p.second;
            if (i < 1 || i > IMG_SIZE - 2 || j < 1 || j > IMG_SIZE - 2) continue;
            if (out_dil[i][j] < input[i][j]) {
                std::cerr << "ASSERT FAILED: Dilation not >= input at (" << i << "," << j << ")"
                          << " in=" << (int)input[i][j] << " out=" << (int)out_dil[i][j] << std::endl;
                return 1;
            }
            if (out_ero[i][j] > input[i][j]) {
                std::cerr << "ASSERT FAILED: Erosion not <= input at (" << i << "," << j << ")"
                          << " in=" << (int)input[i][j] << " out=" << (int)out_ero[i][j] << std::endl;
                return 1;
            }
        }

        std::cout << "Test 5 passed: Basic morphological properties verified." << std::endl;
    }

    std::cout << "All tests passed." << std::endl;
    return 0;
}