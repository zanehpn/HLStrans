// insert_tb.cpp
#include <cassert>
#include <iostream>
#include <vector>
#include <cstring>
#include <algorithm>

#define MAX_NODES 128

typedef struct { int val; int next; } NodeSlot;

// DUT prototype
void insert(int &head, int &free_head, NodeSlot nodes[MAX_NODES], int x);

int main() {
    // 1) Allocate node pool and initialize free list [0..MAX_NODES-1]
    static NodeSlot nodes[MAX_NODES];
    int free_head = 0;
    for (int i = 0; i < MAX_NODES - 1; ++i) {
        nodes[i].next = i + 1;
    }
    nodes[MAX_NODES - 1].next = -1;

    int head = -1;  // initially empty list

    // 2) Values to insert (unsorted)
    std::vector<int> inputs = { 5, 3, 7, 1, 4, 9, 0 };
    std::vector<int> expected = inputs;
    std::sort(expected.begin(), expected.end());

    // 3) Insert each value and verify intermediate list ordering
    for (size_t k = 0; k < inputs.size(); ++k) {
        int x = inputs[k];
        insert(head, free_head, nodes, x);

        // Walk the list into a vector
        std::vector<int> list_vals;
        for (int cur = head; cur != -1; cur = nodes[cur].next) {
            list_vals.push_back(nodes[cur].val);
        }

        // Expected sorted prefix of size k+1
        std::vector<int> exp_prefix(expected.begin(), expected.begin() + k + 1);
        assert(list_vals == exp_prefix && "List contents mismatch after insert");

        // Print state
        std::cout << "After inserting " << x << ":";
        for (int v : list_vals) std::cout << " " << v;
        std::cout << std::endl;
    }

    std::cout << "All inserts produced correct sorted lists." << std::endl;
    return 0;
}
