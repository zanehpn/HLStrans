// insertEnd_tb.cpp
#include <cassert>
#include <iostream>
#include <vector>
#include <cstring>

#define MAX_NODES 128

struct Node { int data; int next; };
int alloc_node();
void insertEnd(int &head_idx, int val);

// We'll need to expose the shared pools
Node node_pool[MAX_NODES];
bool used[MAX_NODES];

int main() {
    // Reset pools
    std::memset(used, 0, sizeof(used));
    for (int i = 0; i < MAX_NODES; ++i) {
        node_pool[i].data = 0;
        node_pool[i].next = -1;
    }

    int head = -1;
    std::vector<int> inputs = {5, 10, 3, 7, 1};
    std::vector<int> expected = inputs;

    // Insert all values at end
    for (int v : inputs) {
        insertEnd(head, v);
    }

    // Traverse linked list
    std::vector<int> result;
    for (int idx = head; idx != -1; idx = node_pool[idx].next) {
        result.push_back(node_pool[idx].data);
    }

    // Verify length
    assert(result.size() == expected.size());
    // Verify sequence
    for (size_t i = 0; i < expected.size(); ++i) {
        if (result[i] != expected[i]) {
            std::cerr << "Mismatch at position " << i
                      << ": got " << result[i]
                      << ", expected " << expected[i] << std::endl;
            return 1;
        }
    }

    std::cout << "insertEnd test passed. List contents:";
    for (int v : result) std::cout << " " << v;
    std::cout << std::endl;
    return 0;
}