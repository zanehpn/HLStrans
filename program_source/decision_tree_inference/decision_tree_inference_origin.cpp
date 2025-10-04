// Converted from decision_tree_inference_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: decision_tree_inference.cpp ----
#include <stdint.h>

#define N_FEATURES 10
#define N_NODES 1024

struct Node {
    int feature_index;
    float threshold;
    int left;
    int right;
    float value;
};

void decision_tree_inference(float features[N_FEATURES], Node nodes[N_NODES], float *result) {

    int node_index = 0;
    for (int i = 0; i < N_NODES; i++) {

        Node node = nodes[node_index];
        if (node.left == -1 && node.right == -1) {
            *result = node.value;
            return;
        }
        if (features[node.feature_index] <= node.threshold) {
            node_index = node.left;
        } else {
            node_index = node.right;
        }
    }
    *result = 0.0f; // Default value if no leaf node is reached
}

// Top function name: decision_tree_inference
