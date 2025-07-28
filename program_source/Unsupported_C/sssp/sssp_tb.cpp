#include <iostream>
#include <climits>
#include <cstring>
#include <cassert>
#include "../../../rabs_example/src/sssp/sssp.hpp"
void print_array(const char *name, const int *arr, int size) {
    std::cout << name << ": ";
    for (int i = 0; i < size; i++) {
        std::cout << arr[i] << " ";
    }
    std::cout << std::endl;
}

int main() {
    const int vertex_num = 4;
    const int rpao[] = {0, 2, 3, 4, 4}; // Row pointers
    const int ciao[] = {1, 2, 3, 3};     // Column indices (edges)
    const int weights[] = {10, 5, 1, 1}; // Weights of edges
    const int src = 0;                   // Source vertex

    int distance[vertex_num];

    // Expected output
    const int expected_distance[] = {0, 10, 5, 6};

    // Call the function
    sssp(rpao, ciao, weights, distance, vertex_num, src);

    // Print the result
    std::cout << "Computed distances:" << std::endl;
    print_array("distance", distance, vertex_num);

    // Verify the result
    bool pass = true;
    for (int i = 0; i < vertex_num; i++) {
        if (distance[i] != expected_distance[i]) {
            pass = false;
            break;
        }
    }

    if (pass) {
        std::cout << "PASS" << std::endl;
    } else {
        std::cout << "ERROR" << std::endl;
        std::cout << "Expected distances:" << std::endl;
        print_array("expected", expected_distance, vertex_num);
    }

    return 0;
}
