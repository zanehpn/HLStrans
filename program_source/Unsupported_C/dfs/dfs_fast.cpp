#include <ap_int.h>
#include <hls_stream.h>

#define MAX_NODES 1024

struct TreeNode {
    int val;
    int left;
    int right;
};

static TreeNode tree_pool[MAX_NODES];

inline void process_node(int v) {
    volatile int tmp = v;
    (void)tmp;
}


void dfs_hls(int root_idx) {
    int stack[MAX_NODES];
    #pragma HLS RESOURCE variable=stack core=RAM_2P_BRAM
    int top = -1;

    if (root_idx >= 0) {
        stack[++top] = root_idx;
    }

    while (top >= 0) {
        #pragma HLS PIPELINE II=1

        int idx = stack[top--];
        TreeNode node = tree_pool[idx];

        process_node(node.val);

        if (node.right >= 0) {
            stack[++top] = node.right;
        }
        if (node.left >= 0) {
            stack[++top] = node.left;
        }
    }
}



void dfs(const TreeNode *in_tree,
             int *out_vals,        // 拓展：输出访问顺序
             int *out_count,       // 拓展：输出元素个数
             int root_idx,
             int *node_num) {
#pragma HLS INTERFACE m_axi      port=in_tree  offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi      port=out_vals offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi      port=out_count offset=slave bundle=gmem2
#pragma HLS INTERFACE s_axilite  port=root_idx     bundle=control
#pragma HLS INTERFACE s_axilite  port=node_num     bundle=control
#pragma HLS INTERFACE s_axilite  port=return       bundle=control

    copy_nodes: for (int i = 0; i < *node_num; i++) {
    #pragma HLS PIPELINE II=1
        tree_pool[i] = in_tree[i];
    }

    dfs_hls(root_idx);

    *out_count = 0;
}
