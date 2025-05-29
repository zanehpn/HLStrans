#include <cassert>
#include <iostream>
#include <vector>

#define MAX_NODES 4

struct TreeNode {
    int val;
    int left;
    int right;
};

void dfs(const TreeNode *in_tree,
             int *out_vals,        // 拓展：输出访问顺序
             int *out_count,       // 拓展：输出元素个数
             int root_idx,
             int *node_num); 

int main() {
    // 1) Define a small example tree:
    //      0
    //     / \
    //    1   2
    //       / \
    //      3   4
    //
    // Pre-order (DFS): 0,1,2,3,4
    std::vector<TreeNode> in_tree = {
        {0, 1, 2},  // node 0: val=0, left=1, right=2
        {1, -1,-1}, // node 1: leaf
        {2, 3, 4},  // node 2
        {3, -1,-1}, // node 3
        {4, -1,-1}  // node 4
    };
    const int N = in_tree.size();

    // 2) Prepare output buffers
    std::vector<int> out_vals(N, -1);
    int out_count = -1;
    int root_idx = 0;
    int node_num = N;

    // 3) Call the HLS DFS kernel
    dfs(
        in_tree.data(),
        out_vals.data(),
        &out_count,
        root_idx,
        &node_num
    );

    // 4) Check results
    std::vector<int> expected = {0, 1, 2, 3, 4};
    assert(out_count == (int)expected.size());
    for (int i = 0; i < out_count; ++i) {
        if (out_vals[i] != expected[i]) {
            std::cerr << "Mismatch at idx " << i
                      << ": got " << out_vals[i]
                      << ", expected " << expected[i]
                      << std::endl;
            return 1;
        }
    }

    // 5) Print success
    std::cout << "DFS traversal correct! Visited order:";
    for (int i = 0; i < out_count; ++i) {
        std::cout << " " << out_vals[i];
    }
    std::cout << std::endl;
    return 0;
}
