// Converted from knn.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: knn.cpp ----
#include <cmath>
#include <limits>

#define DATA_SIZE 1024
#define K 5

void knn(float query_point[2], float data_points[DATA_SIZE][2], int labels[DATA_SIZE], int& predicted_label) {
#pragma HLS ARRAY_PARTITION variable=labels type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=data_points type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=data_points type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=query_point type=cyclic dim=1 factor=8
    float distances[DATA_SIZE];
    int nearest_labels[K];

    // Calculate distances from the query point to all data points
    for (int i = 0; i < DATA_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        float dx = data_points[i][0] - query_point[0];
        float dy = data_points[i][1] - query_point[1];
        distances[i] = std::sqrt(dx * dx + dy * dy);
    }

    // Initialize nearest labels with maximum possible distance
    for (int i = 0; i < K; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        nearest_labels[i] = -1;
    }

    // Find K nearest neighbors
    for (int i = 0; i < K; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        float min_distance = std::numeric_limits<float>::max();
        int min_index = -1;
        for (int j = 0; j < DATA_SIZE; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
            if (distances[j] < min_distance) {
                min_distance = distances[j];
                min_index = j;
            }
        }
        nearest_labels[i] = labels[min_index];
        distances[min_index] = std::numeric_limits<float>::max(); // Mark this point as visited
    }

    // Perform majority voting
    int vote_count[10] = {0}; // Assuming labels are in the range [0, 9]
    for (int i = 0; i < K; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=2
        vote_count[nearest_labels[i]]++;
    }

    int max_votes = 0;
    for (int i = 0; i < 10; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=2
        if (vote_count[i] > max_votes) {
            max_votes = vote_count[i];
            predicted_label = i;
        }
    }
}

// Top function name: knn
