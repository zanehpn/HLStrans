#include "floyd_warshall.h"

void floyd_warshall(int path[60][60]) {

    const int n = 60;

    int i, j, k;

/*L1:*/    for (k = 0; k < n; k++) {
/*L2:*/        for (i = 0; i < n; i++)
/*L3:*/            for (j = 0; j < n; j++)
                path[i][j] = path[i][j] < path[i][k] + path[k][j]
                                 ? path[i][j]
                                 : path[i][k] + path[k][j];
    }
}
