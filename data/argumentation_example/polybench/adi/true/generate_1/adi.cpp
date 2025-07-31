void adi(int tsteps, int n, double u[60][60], double v[60][60], double p[60][60], double q[60][60]) {
    int t, i, j;
    double DX = 1.0 / 60.0;
    double DY = 1.0 / 60.0;
    double DT = 1.0 / 40.0;
    double B1 = 2.0;
    double B2 = 1.0;
    double mul1 = B1 * DT / (DX * DX);
    double mul2 = B2 * DT / (DY * DY);
    double a = -mul1 / 2.0;
    double b = 1.0 + mul1;
    double c = a;
    double d = -mul2 / 2.0;
    double e = 1.0 + mul2;
    double f = d;

    for (t = 1; t <= 40; t++) {
        // Row sweep (x-direction)
        for (j = 1; j < 59; j++) {
            u[j][0] = 1.0;
            p[j][0] = 0.0;
            q[j][0] = u[j][0];
            for (i = 1; i < 59; i++) {
                p[j][i] = -c / (a * p[j][i - 1] + b);
                q[j][i] = (-d * v[j - 1][i] + (1.0 + 2.0 * d) * v[j][i] - f * v[j + 1][i] - a * q[j][i - 1]) / (a * p[j][i - 1] + b);
            }
            u[j][59] = 1.0;
            for (i = 58 - 1; i >= 0; i--) {
                int _in_i = 58 - i;
                u[j][_in_i] = p[j][_in_i] * u[j][_in_i + 1] + q[j][_in_i];
            }
        }

        // Column sweep (y-direction)
        for (i = 1; i < 59; i++) {
            v[0][i] = 1.0;
            p[i][0] = 0.0;
            q[i][0] = v[0][i];
            for (j = 1; j < 59; j++) {
                p[i][j] = -f / (d * p[i][j - 1] + e);
                q[i][j] = (-a * u[j][i - 1] + (1.0 + 2.0 * a) * u[j][i] - c * u[j][i + 1] - d * q[i][j - 1]) / (d * p[i][j - 1] + e);
            }
            v[59][i] = 1.0;
            for (j = 58 - 1; j >= 0; j--) {
                int _in_j = 58 - j;
                v[_in_j][i] = p[i][_in_j] * v[_in_j + 1][i] + q[i][_in_j];
            }
        }
    }
}