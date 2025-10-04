// contents of merge_two_sorted_lists_tb.cpp
#include <iostream>
#include <vector>
#include <cassert>
#include <algorithm>
#include <random>

// Include the source to get the function and SIZE definition
#include "merge_two_sorted_lists.cpp"

// Helper function to print first and last few elements of the merged list
void print_preview(const int* merged, int total_size, int preview = 10) {
    std::cout << "First " << preview << " elements: ";
    for (int i = 0; i < preview && i < total_size; ++i) {
        std::cout << merged[i] << (i + 1 < preview ? ", " : "");
    }
    std::cout << "\nLast " << preview << " elements: ";
    for (int i = total_size - preview; i < total_size; ++i) {
        if (i >= 0)
            std::cout << merged[i] << (i + 1 < total_size ? ", " : "");
    }
    std::cout << "\n";
}

int main() {
    int list1[SIZE];
    int list2[SIZE];
    int merged[2 * SIZE];

    // Test 1: Even vs Odd merge
    // list1 holds even numbers [0, 2, 4, ...], list2 holds odd numbers [1, 3, 5, ...]
    // Expected merged result: [0, 1, 2, 3, ..., 2047]
    for (int i = 0; i < SIZE; ++i) {
        list1[i] = 2 * i;
        list2[i] = 2 * i + 1;
    }
    merge_two_sorted_lists(list1, list2, merged);
    for (int k = 0; k < 2 * SIZE; ++k) {
        assert(merged[k] == k);
    }
    std::cout << "Test 1 (Even vs Odd) passed.\n";
    print_preview(merged, 2 * SIZE);

    // Test 2: Duplicates in both lists
    // list1 = [0, 1, 2, ..., 1023], list2 = [0, 1, 2, ..., 1023]
    // Expected merged result: [0, 0, 1, 1, 2, 2, ..., 1023, 1023]
    for (int i = 0; i < SIZE; ++i) {
        list1[i] = i;
        list2[i] = i;
    }
    merge_two_sorted_lists(list1, list2, merged);
    for (int k = 0; k < 2 * SIZE; ++k) {
        int expected = k / 2;
        assert(merged[k] == expected);
    }
    std::cout << "Test 2 (Duplicates) passed.\n";
    print_preview(merged, 2 * SIZE);

    // Test 3: Non-overlapping ranges
    // list1 = [0..1023], list2 = [10000..11023]
    // Expected merged: first 1024 from list1, then next 1024 from list2
    for (int i = 0; i < SIZE; ++i) {
        list1[i] = i;
        list2[i] = 10000 + i;
    }
    merge_two_sorted_lists(list1, list2, merged);
    for (int k = 0; k < 2 * SIZE; ++k) {
        int expected = (k < SIZE) ? k : 10000 + (k - SIZE);
        assert(merged[k] == expected);
    }
    std::cout << "Test 3 (Non-overlapping ranges) passed.\n";
    print_preview(merged, 2 * SIZE);

    // Test 4: Negative numbers
    // list1 = [-2048..-1025], list2 = [-1024..-1]
    // Expected merged: [-2048..-1]
    for (int i = 0; i < SIZE; ++i) {
        list1[i] = -2048 + i;
        list2[i] = -1024 + i;
    }
    merge_two_sorted_lists(list1, list2, merged);
    for (int k = 0; k < 2 * SIZE; ++k) {
        int expected = (k < SIZE) ? (-2048 + k) : (-1024 + (k - SIZE));
        assert(merged[k] == expected);
    }
    std::cout << "Test 4 (Negative numbers) passed.\n";
    print_preview(merged, 2 * SIZE);

    // Test 5: Constant arrays identical
    // list1 = [7, 7, ..., 7], list2 = [7, 7, ..., 7]
    // Expected merged: all 7
    for (int i = 0; i < SIZE; ++i) {
        list1[i] = 7;
        list2[i] = 7;
    }
    merge_two_sorted_lists(list1, list2, merged);
    for (int k = 0; k < 2 * SIZE; ++k) {
        assert(merged[k] == 7);
    }
    std::cout << "Test 5 (Constant arrays) passed.\n";
    print_preview(merged, 2 * SIZE);

    // Test 6: Random but sorted arrays, compare against std::merge
    // Generate deterministic sorted arrays by cumulative sum of small random increments
    {
        std::mt19937 rng(42);
        std::uniform_int_distribution<int> dist(0, 5);
        std::vector<int> v1(SIZE), v2(SIZE), ref(2 * SIZE);

        int curr1 = -1000;
        int curr2 = -500;
        for (int i = 0; i < SIZE; ++i) {
            curr1 += dist(rng);
            curr2 += dist(rng);
            v1[i] = curr1;
            v2[i] = curr2;
            list1[i] = v1[i];
            list2[i] = v2[i];
        }

        // Reference using std::merge (stable, matches tie-breaking of <=)
        std::merge(v1.begin(), v1.end(), v2.begin(), v2.end(), ref.begin());

        merge_two_sorted_lists(list1, list2, merged);

        for (int k = 0; k < 2 * SIZE; ++k) {
            assert(merged[k] == ref[k]);
        }
        std::cout << "Test 6 (Random sorted arrays vs std::merge) passed.\n";
        print_preview(merged, 2 * SIZE);
    }

    std::cout << "All tests passed successfully.\n";
    return 0;
}