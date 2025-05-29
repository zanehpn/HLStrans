#include <stdio.h>
#include <math.h>
#include "insert_sort.h"


int main() {
    DTYPE A[SIZE] = { 3.2, 1.5, 4.8, 2.0, 0.9, 5.5, 7.7, 6.6,
                      2.2, 9.0, 8.1, 3.3, 1.1, 4.4, 0.0, 10.0 };
    DTYPE expected[SIZE] = { 0.0, 0.9, 1.1, 1.5, 2.0, 2.2, 3.2, 3.3,
                             4.4, 4.8, 5.5, 6.6, 7.7, 8.1, 9.0, 10.0 };

    insert_sort(A);
    

    bool pass = true;
    for (int i = 0; i < SIZE; i++) {
        if (fabs(A[i] - expected[i]) > 1e-6) {
            pass = false;
            break;
        }
    }

    if (pass)
        printf("pass\n");
    else
        printf("fail\n");

    return 0;
}
