#include <iostream>
#include <cmath>
#include <cassert>
#include "optionValue.h"
// Bring in the declaration of optionValue

int main() {
    // Prepare a small-scale test: use parameters that force every output to 1.0
    // Choose S0=1, T arbitrary, SIGMA=0, MU=0 → f1 = 0, f2 = 0 → exp(0) = 1
    double params[4] = { 1.0, 1.0, 0.0, 0.0 };

    // Allocate and initialize paths to arbitrary (e.g. zeros)
    static double paths[NUM_PATHS][STEPS];
    for(int p = 0; p < NUM_PATHS; ++p)
        for(int i = 0; i < STEPS; ++i)
            paths[p][i] = 0.0;

    // Call the function under test
    optionValue(paths, params);

    // Verify: since f1=f2=0, each step becomes prev * exp(0) = prev.
    // And the very first step path[0] = S0 * exp(0) = 1
    // So all entries should end up being exactly 1.0
    bool pass = true;
    for(int p = 0; p < NUM_PATHS && pass; ++p) {
        for(int i = 0; i < STEPS; ++i) {
            if (std::abs(paths[p][i] - 1.0) > 1e-9) {
                std::cerr << "Mismatch at path " << p 
                          << ", step " << i 
                          << ": got " << paths[p][i] 
                          << ", expected 1.0\n";
                pass = false;
                break;
            }
        }
    }

    if (pass) {
        std::cout << "Test pass\n";
        return 0;
    } else {
        std::cout << "Test fail\n";
        return 1;
    }
}
