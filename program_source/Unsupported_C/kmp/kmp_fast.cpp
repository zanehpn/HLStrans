// kmp_hls.c
#include <stdint.h>
#define TMAX 1024
#define PMAX  128

void build_pi(const char pat[PMAX], int m, int pi[PMAX]) {
    pi[0] = 0; int k = 0;
    for (int q = 1; q < m; ++q) {
        while (k>0 && pat[k]!=pat[q]) k = pi[k-1];
        if (pat[k]==pat[q]) ++k;
        pi[q] = k;
    }
}

int kmp(const char text[TMAX], int n,
               const char pat[PMAX], int m) {
    int pi[PMAX];
    build_pi(pat, m, pi);
    int q = 0;
    for (int i = 0; i < n; ++i) {
        while (q>0 && pat[q] != text[i]) q = pi[q-1];
        if (pat[q] == text[i]) ++q;
        if (q == m) return i - m + 1;
    }
    return -1;
}
