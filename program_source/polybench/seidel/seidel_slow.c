
void seidel(int tsteps,int n,double A[120][120])
{
  int t;
  int i;
  int j;
  
  for (t = 0; t <= 39; t++) {
    
    for (i = 1; i <= 118; i++) {
      
      for (j = 1; j <= 118; j++) {
        A[i][j] = (A[i - 1][j - 1] + A[i - 1][j] + A[i - 1][j + 1] + A[i][j - 1] + A[i][j] + A[i][j + 1] + A[i + 1][j - 1] + A[i + 1][j] + A[i + 1][j + 1]) / 9.0;
      }
    }
  }
}
