// MALLOC_VARIANT

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
    // Dynamically allocate and copy inputs
    float* features_dyn = new float[N_FEATURES];
    Node* nodes_dyn = new Node[N_NODES];
    for (int i = 0; i < N_FEATURES; ++i) {
        features_dyn[i] = features[i];
    }
    for (int i = 0; i < N_NODES; ++i) {
        nodes_dyn[i] = nodes[i];
    }

    int node_index = 0;
    for (int i = 0; i < N_NODES; i++) {
        Node node = nodes_dyn[node_index];
        if (node.left == -1 && node.right == -1) {
            *result = node.value;
            delete[] features_dyn;
            delete[] nodes_dyn;
            return;
        }
        if (features_dyn[node.feature_index] <= node.threshold) {
            node_index = node.left;
        } else {
            node_index = node.right;
        }
    }
    *result = 0.0f; // Default value if no leaf node is reached

    delete[] features_dyn;
    delete[] nodes_dyn;
}
