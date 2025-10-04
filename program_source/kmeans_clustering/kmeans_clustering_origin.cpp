// Converted from kmeans_clustering_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: kmeans_clustering.cpp ----
#include <cmath>
#include <limits>

#define N_POINTS 1024
#define N_CLUSTERS 16
#define N_FEATURES 3

void kmeans_clustering(float points[N_POINTS][N_FEATURES], float centroids[N_CLUSTERS][N_FEATURES], int assignments[N_POINTS]) {

    float new_centroids[N_CLUSTERS][N_FEATURES] = {0};
    int counts[N_CLUSTERS] = {0};

    for (int i = 0; i < N_POINTS; i++) {

        float min_dist = std::numeric_limits<float>::max();
        int closest_centroid = 0;

        for (int j = 0; j < N_CLUSTERS; j++) {

            float dist = 0;
            for (int k = 0; k < N_FEATURES; k++) {

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

            new_centroids[closest_centroid][k] += points[i][k];
        }
    }

    for (int j = 0; j < N_CLUSTERS; j++) {

        if (counts[j] > 0) {
            for (int k = 0; k < N_FEATURES; k++) {

                centroids[j][k] = new_centroids[j][k] / counts[j];
            }
        }
    }
}

// Top function name: kmeans_clustering
