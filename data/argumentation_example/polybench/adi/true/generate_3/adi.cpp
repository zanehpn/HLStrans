void adi(int tsteps, int n, double u[60][60], double v[60][60], double p[60][60], double q[60][60]) {
  int t, i, j;
  double DX, DY, DT, B1, B2, mul1, mul2, a, b, c, d, e, f;

  DX = 1.0 / 60;
  DY = 1.0 / 60;
  DT = 1.0 / 40;
  B1 = 2.0;
  B2 = 1.0;
  mul1 = B1 * DT / (DX * DX);
  mul2 = B2 * DT / (DY * DY);
  a = -mul1 / 2.0;
  b = 1.0 + mul1;
  c = a;
  d = -mul2 / 2.0;
  e = 1.0 + mul2;
  f = d;

  for (t = 1; t <= 40; t++) {
    // Column sweep (x-direction)
    for (i = 1; i < 59; i++) {
      v[0][i] = 1.0;
      p[i][0] = 0.0;
      q[i][0] = v[0][i];
      for (j = 1; j < 59; j++) {
        p[i][j] = -c / (a * p[i][j - 1] + b);
        q[i][j] = (-d * u[j-1][i] + (1.0 + 2.0 * d) * u[j][i] - f * u[j+1][i] - a * q[i][j - 1]) / (a * p[i][j - 1] + b);
      }
      v[59][i] = 1.0;
      for (j = 58; j >= 1; j--) {
        v[j][i] = p[i][j] * v[j + 1][i] + q[i][j];
      }
    }

    // Row sweep (y-direction)
    for (i = 1; i < 59; i++) {
      u[i][0] = 1.0;
      p[i][0] = 0.0;
      q[i][0] = u[i][0];
      for (j = 1; j < 59; j++) {
        p[i][j] = -f / (d * p[i][j - 1] + e);
        q[i][j] = (-a * v[i][j-1] + (1.0 + 2.0 * a) * v[i][j] - c * v[i][j+1] - d * q[i][j - 1]) / (d * p[i][j - 1] + e);
      }
      u[i][59] = 1.0;
      for (j = 58; j >= 1; j--) {
        u[i][j] = p[i][j] * u[i][j + 1] + q[i][j];
      }
    }
  }
}