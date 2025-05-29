#include <stdlib.h>
int lcs_rec(const char *a, const char *b, int i, int j) {
    if (i<0 || j<0) return 0;
    if (a[i]==b[j]) 
        return 1 + lcs_rec(a,b,i-1,j-1);  // 递归 
    else {
        int x = lcs_rec(a,b,i-1,j);
        int y = lcs_rec(a,b,i,j-1);
        return x>y?x:y;
    }
}

int lcs(const char *a, const char *b) {
    return lcs_rec(a,b, strlen(a)-1, strlen(b)-1);
}
