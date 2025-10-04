// ---- file: linked_list_traversal_malloc_variant.cpp ----
#include <cstdint>

#define LIST_SIZE 1024

struct Node {
    int data;
    uint16_t next;
};

void linked_list_traversal(Node nodes[LIST_SIZE], int& sum) {
    Node* dyn_nodes = new Node[LIST_SIZE];
    for (uint16_t i = 0; i < LIST_SIZE; ++i) {
        dyn_nodes[i] = nodes[i];
    }

    sum = 0;
    for (uint16_t i = 0; i < LIST_SIZE; ++i) {
        sum += dyn_nodes[i].data;
    }

    delete[] dyn_nodes;
}
