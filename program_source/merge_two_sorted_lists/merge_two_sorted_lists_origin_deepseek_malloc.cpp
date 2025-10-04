#include <iostream>

#define SIZE 1024

void merge_two_sorted_lists(int list1[SIZE], int list2[SIZE], int merged_list[2*SIZE]) {
    int* l1 = new int[SIZE];
    int* l2 = new int[SIZE];
    int* out = new int[2 * SIZE];

    for (int idx = 0; idx < SIZE; ++idx) {
        l1[idx] = list1[idx];
        l2[idx] = list2[idx];
    }

    int i = 0, j = 0;
    for (int k = 0; k < 2 * SIZE; ++k) {
        if (i < SIZE && (j >= SIZE || l1[i] <= l2[j])) {
            out[k] = l1[i];
            ++i;
        } else {
            out[k] = l2[j];
            ++j;
        }
    }

    for (int k = 0; k < 2 * SIZE; ++k) {
        merged_list[k] = out[k];
    }

    delete[] l1;
    delete[] l2;
    delete[] out;
}
