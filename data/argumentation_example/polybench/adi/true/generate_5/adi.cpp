void adi(int tsteps, int n, double u[60][60], double v[60][60], double p[60][60], double q[60][60]) {
    int t, i, j;
    double DX = 1.0 / 60;
    double DY = 1.0 / 60;
    double DT = 1.0 / 40;
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
        // Column sweep (x-direction)
        for (i = 1; i < 59; i++) {
            v[0][i] = 1.0;
            p[i][0] = 0.0;
            q[i][0] = v[0][i];
            for (j = 1; j < 59; j++) {
                p[i][j] = -c / (a * p[i][j - 1] + b);
                q[i][j] = (-d * u[j - 1][i] + (1.0 + 2.0 * d) * u[j][i] - f * u[j + 1][i] - a * q[i][j - 1]) / (a * p[i][j - 1] + b);
            }
            v[59][i] = 1.0;
            for (j = 57; j >= 0; j--) {
                int idx = 58 - j;
                v[idx][i] = p[i][idx] * v[idx + 1][i] + q[i][idx];
            }
        }

        // Row sweep (y-direction)
        for (i = 1; i < 59; i++) {
            u[i][0] = 1.0;
            p[i][0] = 0.0;
            q[i][0] = u[i][0];
            for (j = 1; j < 59; j++) {
                p[i][j] = -f / (d * p[i][j - 1] + e);
                q[i][j] = (-a * v[i][j - 1] + (1.0 + 2.0 * a) * v[i][j] - c * v[i][j + 1] - d * q[i][j - 1]) / (d * p[i][j - 1] + e);
            }
            u[i][59] = 1.0;
            for (j = 57; j >= 0; j--) {
                int idx = 58 - j;
                u[i][idx] = p[i][idx] * u[i][idx + 1] + q[i][idx];
            }
        }
    }
}