
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#include "cordic.h"

using namespace std;
// #define M_PI 3.1415926536897932384626

double abs_double(double var) {
    if (var < 0)
        var = -var;
    return var;
}
int main(int argc, char **argv) {

    FILE *fp;

    COS_SIN_TYPE s;    // sine
    COS_SIN_TYPE c;    // cos
    THETA_TYPE radian; // radian versuin of degree

    // zs=sin, zc=cos using math.h in VivadoHLS
    double zs, zc; // sine and cos values calculated from math.

    // Error checking
    double Total_Error_Sin = 0.0;
    double Total_error_Cos = 0.0;
    double error_sin = 0.0, error_cos = 0.0;

    fp = fopen("out.dat", "w");
    for (int i = 1; i < NUM_DEGREE; i++) {
        radian = i * M_PI / 180;
        cordic(radian, s, c);
        zs = sin((double)radian);
        zc = cos((double)radian);
        error_sin = (abs_double((double)s - zs) / zs) * 100.0;
        error_cos = (abs_double((double)c - zc) / zc) * 100.0;
        Total_Error_Sin = Total_Error_Sin + error_sin;
        Total_error_Cos = Total_error_Cos + error_cos;

        fprintf(
            fp,
            "degree=%d, radian=%f, cos=%f, sin=%f\n",
            i,
            (double)radian,
            (double)c,
            (double)s);
    }

    fclose(fp);
    if (Total_Error_Sin < 160 || Total_error_Cos < 100) {
        printf("PASS\n");
        return 1;
    }
    else {
        printf("FAIL\n");
        return 0;
    }
    printf(
        "Total_Sin=%f, Total_Cos=%f, \n",
        Total_Error_Sin,
        Total_error_Cos);

    
    return 0;
}