#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cstring>
using namespace std;
#include "rendering_sw.hpp"


// Typedefs (ensure these match your actual implementation)
typedef unsigned char bit8;

int main() {
    // Initialize test input data
    Triangle_3D test_triangles[NUM_3D_TRI];
    bit8 output[MAX_X][MAX_Y];
    bit8 expected_output[MAX_X][MAX_Y]; // For future use in verification

    // Seed for random triangle generation
    srand(static_cast<unsigned>(time(0)));

    // Generate random test triangles
    for (int i = 0; i < NUM_3D_TRI; i++) {
        test_triangles[i].x0 = rand() % MAX_X;
        test_triangles[i].y0 = rand() % MAX_Y;
        test_triangles[i].z0 = rand() % 256;
        test_triangles[i].x1 = rand() % MAX_X;
        test_triangles[i].y1 = rand() % MAX_Y;
        test_triangles[i].z1 = rand() % 256;
        test_triangles[i].x2 = rand() % MAX_X;
        test_triangles[i].y2 = rand() % MAX_Y;
        test_triangles[i].z2 = rand() % 256;
    }

    // Clear the output buffer
    memset(output, 0, sizeof(output));

    // Call the rendering function
    rendering_sw(test_triangles, output);

    // Print the output (for manual inspection or debugging)
    cout << "Rendered Output:\n";
    for (int y = 0; y < MAX_Y; y++) {
        for (int x = 0; x < MAX_X; x++) {
            cout << static_cast<int>(output[x][y]) << " ";
        }
        cout << endl;
    }

    // Additional test logic (optional):
    // 1. Compare output with expected_output if you have a known correct implementation.
    // 2. Validate specific triangles were rendered properly using test cases.
    // 3. Write the output to a file for visualization in external tools.

    return 0;
}
