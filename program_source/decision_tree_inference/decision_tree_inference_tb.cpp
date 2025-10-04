// contents of decision_tree_inference_tb.cpp
#include <iostream>
#include <cassert>
#include <cmath>

// Include the source to access Node, constants, and function without duplicate symbols
#include "decision_tree_inference.cpp"

// Helper to initialize all nodes as leaves with value 0.0f (safe defaults)
static void init_nodes(Node nodes[N_NODES]) {
    for (int i = 0; i < N_NODES; ++i) {
        nodes[i].feature_index = -1;
        nodes[i].threshold = 0.0f;
        nodes[i].left = -1;
        nodes[i].right = -1;
        nodes[i].value = 0.0f;
    }
}

int main() {
    {
        // Test 1: Simple 1-split tree with two leaf children
        // Tree:
        //   Node 0: if feature[0] <= 0.5 then -> Node 1 else -> Node 2
        //   Node 1: leaf value 1.23
        //   Node 2: leaf value -4.56
        Node nodes[N_NODES];
        init_nodes(nodes);
        nodes[0] = {0, 0.5f, 1, 2, 0.0f};
        nodes[1] = {-1, 0.0f, -1, -1, 1.23f};
        nodes[2] = {-1, 0.0f, -1, -1, -4.56f};

        float features[N_FEATURES] = {};
        float result = 0.0f;

        // Go left (0.4 <= 0.5): expect 1.23
        features[0] = 0.4f;
        decision_tree_inference(features, nodes, &result);
        std::cout << "Test 1 (left branch) result: " << result << std::endl;
        assert(std::fabs(result - 1.23f) < 1e-6f);

        // Go right (0.6 > 0.5): expect -4.56
        features[0] = 0.6f;
        decision_tree_inference(features, nodes, &result);
        std::cout << "Test 1 (right branch) result: " << result << std::endl;
        assert(std::fabs(result - (-4.56f)) < 1e-6f);
    }

    {
        // Test 2: Deeper tree with mixed paths
        // Tree:
        //   Node 0: if f[0] <= 1.0 -> Node 1 else -> Node 4
        //   Node 1: if f[1] <= 2.0 -> Node 2 else -> Node 3
        //   Node 2: leaf 10.0
        //   Node 3: leaf 20.0
        //   Node 4: leaf 3.14
        Node nodes[N_NODES];
        init_nodes(nodes);
        nodes[0] = {0, 1.0f, 1, 4, 0.0f};
        nodes[1] = {1, 2.0f, 2, 3, 0.0f};
        nodes[2] = {-1, 0.0f, -1, -1, 10.0f};
        nodes[3] = {-1, 0.0f, -1, -1, 20.0f};
        nodes[4] = {-1, 0.0f, -1, -1, 3.14f};

        float features[N_FEATURES] = {};
        float result = 0.0f;

        // Path: root left, then left -> expect 10.0
        features[0] = 0.5f;  // <= 1.0 -> Node 1
        features[1] = 1.5f;  // <= 2.0 -> Node 2 (leaf)
        decision_tree_inference(features, nodes, &result);
        std::cout << "Test 2 (left-left) result: " << result << std::endl;
        assert(std::fabs(result - 10.0f) < 1e-6f);

        // Path: root left, then right -> expect 20.0
        features[0] = 0.5f;  // <= 1.0 -> Node 1
        features[1] = 2.5f;  // > 2.0 -> Node 3 (leaf)
        decision_tree_inference(features, nodes, &result);
        std::cout << "Test 2 (left-right) result: " << result << std::endl;
        assert(std::fabs(result - 20.0f) < 1e-6f);

        // Path: root right -> expect 3.14
        features[0] = 1.5f;  // > 1.0 -> Node 4 (leaf)
        decision_tree_inference(features, nodes, &result);
        std::cout << "Test 2 (right) result: " << result << std::endl;
        assert(std::fabs(result - 3.14f) < 1e-6f);
    }

    {
        // Test 3: Cyclic tree that never reaches a leaf within N_NODES iterations
        // Node 0 points to itself regardless of threshold -> should hit default 0.0f
        Node nodes[N_NODES];
        init_nodes(nodes);
        nodes[0] = {0, 0.5f, 0, 0, 42.0f};  // not a leaf; left/right point to self

        float features[N_FEATURES] = {};
        features[0] = 0.4f;
        float result = -123.0f;

        decision_tree_inference(features, nodes, &result);
        std::cout << "Test 3 (cyclic, expect default 0.0) result: " << result << std::endl;
        assert(std::fabs(result - 0.0f) < 1e-6f);
    }

    {
        // Test 4: Root is a leaf node; should immediately return its value
        Node nodes[N_NODES];
        init_nodes(nodes);
        nodes[0] = {-1, 0.0f, -1, -1, 7.77f};

        float features[N_FEATURES] = {};
        float result = 0.0f;

        decision_tree_inference(features, nodes, &result);
        std::cout << "Test 4 (root leaf) result: " << result << std::endl;
        assert(std::fabs(result - 7.77f) < 1e-6f);
    }

    std::cout << "All tests passed." << std::endl;
    return 0;
}