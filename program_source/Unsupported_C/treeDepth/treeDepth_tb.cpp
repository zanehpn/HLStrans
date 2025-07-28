// file: treeDepth_tb.cpp

#include <iostream>
#include <cassert>

#define MAX_NODES 128
typedef struct { int val, l, r; } NodeSlot;

// Prototype of the HLS kernel
int treeDepth(int root_idx);

// Shared global state
extern NodeSlot nodes[MAX_NODES];
extern int free_list_head;

// Software reference: recursively compute max depth
int treeDepth_ref(int idx) {
    if (idx < 0) return 0;
    int dl = treeDepth_ref(nodes[idx].l);
    int dr = treeDepth_ref(nodes[idx].r);
    return 1 + ((dl > dr) ? dl : dr);
}

// Helper: allocate a new node from a simple freelist
int alloc_node(int &free_head, int val) {
    assert(free_head >= 0);
    int idx = free_head;
    free_head = nodes[idx].r;           // use r field to chain freelist
    nodes[idx].val = val;
    nodes[idx].l = nodes[idx].r = -1;
    return idx;
}

// Build a left‑skewed chain of given length, return root index
int build_left_chain(int &free_head, int length) {
    int root = -1;
    for (int i = 0; i < length; ++i) {
        int n = alloc_node(free_head, i);
        nodes[n].l = root;
        root = n;
    }
    return root;
}

// Build a perfect binary tree of given height, return root index
int build_perfect(int &free_head, int height) {
    if (height == 0) return -1;
    int root = alloc_node(free_head, height);
    root = alloc_node(free_head, height);
    nodes[root].l = build_perfect(free_head, height-1);
    nodes[root].r = build_perfect(free_head, height-1);
    return root;
}

int main() {
    // 1) Initialize freelist: link nodes[0..127] via r field
    free_list_head = 0;
    for (int i = 0; i < MAX_NODES-1; ++i)
        nodes[i].r = i+1;
    nodes[MAX_NODES-1].r = -1;

    bool pass = true;

    // 2) Test cases
    struct { int (*build)(int&,int); int param; } tests[] = {
        { build_left_chain, 1 },
        { build_left_chain, 5 },
        { build_left_chain, 10 },
        { build_perfect,    1 },
        { build_perfect,    3 },
        { build_perfect,    5 }
    };

    for (auto &t : tests) {
        // reset freelist for each test
        free_list_head = 0;
        for (int i = 0; i < MAX_NODES-1; ++i) nodes[i].r = i+1;
        nodes[MAX_NODES-1].r = -1;

        int root = t.build(free_list_head, t.param);
        int depth_ref = treeDepth_ref(root);

        int depth_hls = treeDepth(root);  // HLS kernel call

        std::cout << "Test param=" << t.param
                  << " REF depth=" << depth_ref
                  << " HLS depth=" << depth_hls << "\n";

        if (depth_hls != depth_ref) {
            std::cout << "  MISMATCH!\n";
            pass = false;
            break;
        }
    }

    // 3) Final result
    if (pass) {
        std::cout << "TEST PASSED\n";  // clear success message :contentReference[oaicite:2]{index=2}
        return 0;
    } else {
        std::cout << "TEST FAILED\n";  // failure message
        return 1;
    }
}
