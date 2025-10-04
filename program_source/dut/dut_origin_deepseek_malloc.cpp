#include <iostream>
#define N 10

struct A {
    char foo;
    short bar;
};

// Top function
int dut(A* arr);

int dut(A* arr) {
    int sum = 0;

    // Dynamically allocate a buffer to hold N elements
    A* buf = new A[N];
    for (unsigned i = 0; i < N; ++i) {
        buf[i] = arr[i];
    }

    // Compute sum from the dynamically allocated buffer
    for (unsigned i = 0; i < N; ++i) {
        auto tmp = buf[i];
        sum += tmp.foo + tmp.bar;
    }

    delete[] buf;
    return sum;
}
