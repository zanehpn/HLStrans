// Standard C++ implementation converted from HLS-specific types

#define N 20

void loop_imperfect(int A[N], int B[N]) {
    int i, j;
    int acc;

    for (i = 0; i < 20; i++) {
        acc = 0;
        for (j = 0; j < 20; j++) {
            acc += A[j] * j;
        }
        if (i % 2 == 0)
            B[i] = acc / 20;
        else
            B[i] = 0;
    }
}
