// contents of linked_list_traversal_tb.cpp
#include <iostream>
#include <cassert>
#include <cstdint>

// Include the source to get definitions of Node, LIST_SIZE, and linked_list_traversal
#include "linked_list_traversal.cpp"

// Helper to compute a reference sum over the nodes' data
static int reference_sum(const Node nodes[LIST_SIZE]) {
    long long sum = 0;
    for (uint16_t i = 0; i < LIST_SIZE; ++i) {
        sum += nodes[i].data;
    }
    return static_cast<int>(sum);
}

// Utility to initialize the 'next' field to a simple ring (not used by traversal, but keeps structure consistent)
static void init_next_ring(Node nodes[LIST_SIZE]) {
    for (uint16_t i = 0; i < LIST_SIZE; ++i) {
        nodes[i].next = static_cast<uint16_t>((i + 1) % LIST_SIZE);
    }
}

int main() {
    Node nodes[LIST_SIZE];
    int sum = -12345;

    // Test 1: All zeros -> expected sum is 0
    for (uint16_t i = 0; i < LIST_SIZE; ++i) {
        nodes[i].data = 0;
    }
    init_next_ring(nodes);
    sum = 999; // Ensure function overwrites sum
    linked_list_traversal(nodes, sum);
    std::cout << "Test 1 (all zeros) sum = " << sum << std::endl;
    assert(sum == 0);

    // Test 2: Sequential values 0..LIST_SIZE-1 -> expected sum = LIST_SIZE * (LIST_SIZE - 1) / 2
    for (uint16_t i = 0; i < LIST_SIZE; ++i) {
        nodes[i].data = static_cast<int>(i);
    }
    init_next_ring(nodes);
    linked_list_traversal(nodes, sum);
    {
        long long expected = static_cast<long long>(LIST_SIZE) * (LIST_SIZE - 1) / 2;
        std::cout << "Test 2 (sequential) sum = " << sum << " expected = " << expected << std::endl;
        assert(sum == expected);
    }

    // Test 3: Alternating +1 and -1 -> equal counts, expected sum = 0
    for (uint16_t i = 0; i < LIST_SIZE; ++i) {
        nodes[i].data = (i % 2 == 0) ? 1 : -1;
    }
    init_next_ring(nodes);
    linked_list_traversal(nodes, sum);
    std::cout << "Test 3 (alternating +1/-1) sum = " << sum << std::endl;
    assert(sum == 0);

    // Test 4: Constant value (1000) -> expected sum = 1000 * LIST_SIZE
    for (uint16_t i = 0; i < LIST_SIZE; ++i) {
        nodes[i].data = 1000;
    }
    init_next_ring(nodes);
    linked_list_traversal(nodes, sum);
    {
        int expected = 1000 * static_cast<int>(LIST_SIZE);
        std::cout << "Test 4 (constant 1000) sum = " << sum << " expected = " << expected << std::endl;
        assert(sum == expected);
    }

    // Test 5: Deterministic pseudo-random-ish pattern -> compare against independently computed reference sum
    // Pattern: val = ((i * 37 + 13) % 101) - 50 -> range [-50, 50]
    for (uint16_t i = 0; i < LIST_SIZE; ++i) {
        nodes[i].data = static_cast<int>((static_cast<unsigned>(i) * 37u + 13u) % 101u) - 50;
    }
    init_next_ring(nodes);
    linked_list_traversal(nodes, sum);
    {
        int expected = reference_sum(nodes);
        std::cout << "Test 5 (patterned data) sum = " << sum << " expected = " << expected << std::endl;
        assert(sum == expected);
    }

    std::cout << "All tests passed." << std::endl;
    return 0;
}