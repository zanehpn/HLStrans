// Converted from kmeans_clustering.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: kmeans_clustering.cpp ----
#include <cmath>
#include <limits>

#define N_POINTS 1024
#define N_CLUSTERS 16
#define N_FEATURES 3

void kmeans_clustering(float points[N_POINTS][N_FEATURES], float centroids[N_CLUSTERS][N_FEATURES], int assignments[N_POINTS]) {
#pragma HLS ARRAY_PARTITION variable=assignments type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=centroids type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=centroids type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=points type=cyclic dim=2 factor=4
#pragma HLS ARRAY_PARTITION variable=points type=cyclic dim=1 factor=2
    float new_centroids[N_CLUSTERS][N_FEATURES] = {0};
    int counts[N_CLUSTERS] = {0};

    for (int i = 0; i < N_POINTS; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        float min_dist = std::numeric_limits<float>::max();
        int closest_centroid = 0;

        for (int j = 0; j < N_CLUSTERS; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            float dist = 0;
            for (int k = 0; k < N_FEATURES; k++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
                float diff = points[i][k] - centroids[j][k];
                dist += diff * diff;
            }

            if (dist < min_dist) {
                min_dist = dist;
                closest_centroid = j;
            }
        }

        assignments[i] = closest_centroid;
        counts[closest_centroid]++;
        for (int k = 0; k < N_FEATURES; k++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            new_centroids[closest_centroid][k] += points[i][k];
        }
    }

    for (int j = 0; j < N_CLUSTERS; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=2
        if (counts[j] > 0) {
            for (int k = 0; k < N_FEATURES; k++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
                centroids[j][k] = new_centroids[j][k] / counts[j];
            }
        }
    }
}

// Top function name: kmeans_clustering
