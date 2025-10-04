// contents of knn_tb.cpp
#include <iostream>
#include <cassert>

// Replicate constants and forward declare the DUT (Device Under Test).
// We avoid including knn.cpp directly to prevent duplicate symbol errors when both are compiled.
#define DATA_SIZE 1024
#define K 5

extern void knn(float query_point[2], float data_points[DATA_SIZE][2], int labels[DATA_SIZE], int& predicted_label);

int main() {
    // Common buffers
    float data_points[DATA_SIZE][2];
    int labels[DATA_SIZE];
    float query[2];
    int predicted = -1;

    // ------------------------------------------------------------
    // Test 1: Basic functionality - K nearest neighbors all from label 1
    // - Create 5 very close points near the query (0,0) with label 1
    // - All other points are far away with label 2
    // - Expect predicted_label == 1
    // ------------------------------------------------------------
    for (int i = 0; i < DATA_SIZE; ++i) {
        data_points[i][0] = 1000.0f + i;   // far away cluster
        data_points[i][1] = 1000.0f + i;
        labels[i] = 2;
    }
    for (int i = 0; i < K; ++i) {
        data_points[i][0] = 0.001f * (i + 1);
        data_points[i][1] = 0.001f * (i + 1);
        labels[i] = 1;
    }
    query[0] = 0.0f; query[1] = 0.0f;
    predicted = -1;
    knn(query, data_points, labels, predicted);
    std::cout << "Test 1 predicted_label: " << predicted << " (expected 1)\n";
    assert(predicted == 1);

    // ------------------------------------------------------------
    // Test 2: Query near the far cluster - neighbors are from label 2
    // - Using the same dataset from Test 1
    // - Query near (1010, 1010) so nearest neighbors are from the far cluster (label 2)
    // - Expect predicted_label == 2
    // ------------------------------------------------------------
    query[0] = 1010.0f; query[1] = 1010.0f;
    predicted = -1;
    knn(query, data_points, labels, predicted);
    std::cout << "Test 2 predicted_label: " << predicted << " (expected 2)\n";
    assert(predicted == 2);

    // ------------------------------------------------------------
    // Test 3: Majority voting between two labels
    // - Make 3 nearest neighbors label 7 and 2 neighbors label 8
    // - All other points are very far with label 9
    // - Expect predicted_label == 7 due to majority among K=5
    // ------------------------------------------------------------
    for (int i = 0; i < DATA_SIZE; ++i) {
        data_points[i][0] = 5000.0f + i;   // far away cluster
        data_points[i][1] = 5000.0f + i;
        labels[i] = 9;
    }
    // Three closest of label 7
    for (int i = 0; i < 3; ++i) {
        data_points[i][0] = 0.001f * (i + 1);
        data_points[i][1] = 0.001f * (i + 1);
        labels[i] = 7;
    }
    // Next two closest of label 8
    for (int i = 3; i < 5; ++i) {
        data_points[i][0] = 0.01f * (i + 1);
        data_points[i][1] = 0.01f * (i + 1);
        labels[i] = 8;
    }
    query[0] = 0.0f; query[1] = 0.0f;
    predicted = -1;
    knn(query, data_points, labels, predicted);
    std::cout << "Test 3 predicted_label: " << predicted << " (expected 7)\n";
    assert(predicted == 7);

    // ------------------------------------------------------------
    // Test 4: Boundary label value (0) to exercise vote_count[0]
    // - Create 5 nearest neighbors all labeled 0
    // - Expect predicted_label == 0
    // ------------------------------------------------------------
    for (int i = 0; i < DATA_SIZE; ++i) {
        data_points[i][0] = 2000.0f + i;   // far away cluster
        data_points[i][1] = 2000.0f + i;
        labels[i] = 9;
    }
    for (int i = 0; i < K; ++i) {
        data_points[i][0] = 0.0005f * (i + 1);
        data_points[i][1] = 0.0005f * (i + 1);
        labels[i] = 0;
    }
    query[0] = 0.0f; query[1] = 0.0f;
    predicted = -1;
    knn(query, data_points, labels, predicted);
    std::cout << "Test 4 predicted_label: " << predicted << " (expected 0)\n";
    assert(predicted == 0);

    std::cout << "All tests passed.\n";
    return 0;
}