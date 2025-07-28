#include <cmath>
#include <limits>
#include <stdio.h>

#define TARGETS 3000
#define QUERIES 1000
#define DIMS 3

float compute_distance(float target[DIMS], float query[DIMS]) {
    float dist = 0.0f;
    for (int i = 0; i < DIMS; i++) {
        float diff = target[i] - query[i];
        dist += diff * diff;
    }
    return dist;
}

void linear_search(float* targets, float* queries, unsigned int indices[QUERIES]) {
    for (int q = 0; q < QUERIES; q++) {
        float min_dist = std::numeric_limits<float>::max();
        unsigned int min_index = 0;
        
        for (int t = 0; t < TARGETS; t++) {
            float dist = compute_distance(targets, queries);
            if (dist < min_dist) {
                min_dist = dist;
                min_index = t;
            }
        }
        
        indices[q] = min_index;
    }
}
