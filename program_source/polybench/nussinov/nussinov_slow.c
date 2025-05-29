#include "nussinov.h"

void nussinov(char seq[60], int table[60][60]) {

    const int n = 60;

    int i, j, k;

/*L1:*/    for (i = n - 1; i >= 0; i--) {
            #pragma HLS  LOOP_TRIPCOUNT min=1 max=60
/*L2:*/        for (j = i + 1; j < n; j++) {
            #pragma HLS  LOOP_TRIPCOUNT min=1 max=60

            if (j - 1 >= 0)
                table[i][j] =
                    ((table[i][j] >= table[i][j - 1]) ? table[i][j]
                                                      : table[i][j - 1]);
            if (i + 1 < n)
                table[i][j] =
                    ((table[i][j] >= table[i + 1][j]) ? table[i][j]
                                                      : table[i + 1][j]);

            if (j - 1 >= 0 && i + 1 < n) {

                if (i < j - 1)
                    table[i][j] =
                        ((table[i][j] >=
                          table[i + 1][j - 1] +
                              (((seq[i]) + (seq[j])) == 3 ? 1 : 0))
                             ? table[i][j]
                             : table[i + 1][j - 1] +
                                   (((seq[i]) + (seq[j])) == 3 ? 1 : 0));
                else
                    table[i][j] =
                        ((table[i][j] >= table[i + 1][j - 1])
                             ? table[i][j]
                             : table[i + 1][j - 1]);
            }

/*L3:*/            for (k = i + 1; k < j; k++) {
                    #pragma HLS  LOOP_TRIPCOUNT min=1 max=60
                table[i][j] =
                    ((table[i][j] >= table[i][k] + table[k + 1][j])
                         ? table[i][j]
                         : table[i][k] + table[k + 1][j]);
            }
        }
    }
}