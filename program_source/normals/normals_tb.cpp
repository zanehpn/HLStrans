#include <cmath>
#include <cstdio>
#include "params.h"

// Declarations of your functions
void normalized(float v[3]);
void cross(float A[3], float B[3], float P[3]);
void normals(float vmap[rows*cols*3], float nmap[rows*cols*3]);

int main() {
    // Define dimensions (must match params.h)
    const int R = 1, C = 2;
    // Input vertex map: two 3D points
    // Point 0: (1, 0, 0)
    // Point 1: (0, 1, 0)
    float vmap[R*C*3] = {
        1.0f, 0.0f, 0.0f,   // vmap[0]
        0.0f, 1.0f, 0.0f    // vmap[1]
    };
    // Output normal map (initialized to zeros)
    float nmap[R*C*3] = {0};

    // Call your HLS kernel
    normals(vmap, nmap);

    // Expected normal for point 0: cross([1,0,0], [0,1,0]) = [0,0,1]
    // After normalization it's still [0,0,1].
    bool pass = true;
    // Check first normal
    float nx = nmap[0], ny = nmap[1], nz = nmap[2];
    if (std::fabs(nx - 0.0f) > 1e-3f ||
        std::fabs(ny - 0.0f) > 1e-3f ||
        std::fabs(nz - 1.0f) > 1e-3f) {
        pass = false;
        std::printf("Error at normal[0]: expected (0,0,1), got (%.3f,%.3f,%.3f)\n",
                    nx, ny, nz);
    }

    // For the second point, our simple kernel sets NaN if there's no valid neighbor:
    // positions 3..5 should be NaN.
    for (int k = 3; k < 6; ++k) {
        if (!std::isnan(nmap[k])) {
            pass = false;
            std::printf("Error at nmap[%d]: expected NaN, got %.3f\n", k, nmap[k]);
        }
    }

    if (pass) {
        std::printf("PASS\n");
    } else {
        std::printf("TEST FAIL\n");
    }

    return pass ? 0 : 1;
}
