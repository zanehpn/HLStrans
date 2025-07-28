// file: non_synth_bubble.c
#include <stdlib.h>
#include <stdio.h>

// Dynamically allocate an array and perform bubble sort
void bubble_sort(int **arr, int n) {
    // arr is a pointer-to-pointer (unsupported) :contentReference[oaicite:0]{index=0}
    // malloc is dynamic memory allocation (unsupported) :contentReference[oaicite:1]{index=1}
    *arr = (int*)malloc(n * sizeof(int));
    if (!*arr) return;
    for (int i = 0; i < n; i++) {
        (*arr)[i] = rand() % 100;
    }

    // Recursion to sort half then other half (unsupported) :contentReference[oaicite:2]{index=2}
    if (n > 2) {
        bubble_sort(arr, n/2);
        bubble_sort(arr, n - n/2);
    }

    // Standard bubble sort
    for (int i = 0; i < n-1; i++) {
        for (int j = 0; j < n-i-1; j++) {
            if ((*arr)[j] > (*arr)[j+1]) {
                int tmp = (*arr)[j];
                (*arr)[j] = (*arr)[j+1];
                (*arr)[j+1] = tmp;
            }
        }
    }
}
