#include <stdio.h>
#include "merge_sort.h" 

bool is_sorted(DTYPE A[SIZE]) {
    for (int i = 0; i < SIZE - 1; i++) {
        if (A[i] > A[i + 1]) {
            return false;
        }
    }
    return true;
}

int main(void) {
    DTYPE A[SIZE] = {
        34, 7, 23, 32, 5, 62, 78, 1,
        55, 42, 11, 90, 15, 3, 27, 50
    };

    printf("Original array:\n");
    for (int i = 0; i < SIZE; i++) {
        printf("%g ", A[i]);
    }
    printf("\n");

    merge_sort(A);

    printf("Sorted array:\n");
    for (int i = 0; i < SIZE; i++) {
        printf("%g ", A[i]);
    }
    printf("\n");

    if (is_sorted(A)) {
        printf("test pass\n");
    } else {
        printf("test fail\n");
    }

    return 0;
}
