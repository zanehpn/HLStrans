
void trmm(double alpha,double A[60][60],double B[60][80])
{


  for (int i = 0; i < 60; i++) {
    for (int j = 0; j < 80; j++) {
      double sum = B[i][j];
      for (int k = 0; k < 60; k++) {
        if (k > i) {
          sum += A[k][i] * B[k][j];
        }
      }
      B[i][j] = alpha * sum;
    }
  }
}
