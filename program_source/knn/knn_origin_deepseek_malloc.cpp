#include <cmath>
#include <limits>

#define DATA_SIZE 1024
#define K 5

void knn(float query_point[2], float data_points[DATA_SIZE][2], int labels[DATA_SIZE], int& predicted_label) {
    float* distances = new float[DATA_SIZE];
    int* nearest_labels = new int[K];
    int* vote_count = new int[10];

    // Calculate distances from the query point to all data points
    for (int i = 0; i < DATA_SIZE; i++) {
        float dx = data_points[i][0] - query_point[0];
        float dy = data_points[i][1] - query_point[1];
        distances[i] = std::sqrt(dx * dx + dy * dy);
    }

    // Initialize nearest labels
    for (int i = 0; i < K; i++) {
        nearest_labels[i] = -1;
    }

    // Find K nearest neighbors
    for (int i = 0; i < K; i++) {
        float min_distance = std::numeric_limits<float>::max();
        int min_index = -1;
        for (int j = 0; j < DATA_SIZE; j++) {
            if (distances[j] < min_distance) {
                min_distance = distances[j];
                min_index = j;
            }
        }
        nearest_labels[i] = labels[min_index];
        distances[min_index] = std::numeric_limits<float>::max(); // Mark this point as visited
    }

    // Initialize vote counts
    for (int i = 0; i < 10; i++) {
        vote_count[i] = 0;
    }

    // Perform majority voting
    for (int i = 0; i < K; i++) {
        vote_count[nearest_labels[i]]++;
    }

    int max_votes = 0;
    for (int i = 0; i < 10; i++) {
        if (vote_count[i] > max_votes) {
            max_votes = vote_count[i];
            predicted_label = i;
        }
    }

    delete[] distances;
    delete[] nearest_labels;
    delete[] vote_count;
}
