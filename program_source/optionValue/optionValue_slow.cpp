#include <stdio.h>
#include <iostream>
#include <math.h>


#define STEPS 100
#define NUM_PATHS 1000
#define N_BUFF 500

void optionValue(double paths[NUM_PATHS][STEPS], double params[4]) {
    double S0    = params[0];
    double T     = params[1];
    double SIGMA = params[2];
    double MU    = params[3];

    double dt = T / STEPS;
    double f1 = (MU - 0.5 * SIGMA * SIGMA) * dt;
    double f2 = SIGMA * std::sqrt(dt);

    for (int p = 0; p < NUM_PATHS; ++p) {
        // Compute first step
        double prev = paths[p][0];
        paths[p][0]  = S0 * std::exp(f1 + f2 * prev);
        // Compute subsequent steps
        for (int i = 1; i < STEPS; ++i) {
            double curr = paths[p][i];
            paths[p][i] = paths[p][i-1] * std::exp(f1 + f2 * curr);
        }
    }
}