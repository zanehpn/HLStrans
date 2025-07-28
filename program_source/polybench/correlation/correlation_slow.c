#include <math.h>

void correlation(double float_n,double data[100][80],double corr[80][80],double mean[80],double stddev[80])
{
  int i;
  int j;
  int k;
  double eps = 0.1;
  
  for (j = 0; j < 80; j++) {
    mean[j] = 0.0;
    
    for (i = 0; i < 100; i++) {
      mean[j] += data[i][j];
    }
    mean[j] /= float_n;
  }
  
  
  for (j = 0; j < 80; j++) {
    stddev[j] = 0.0;
    
    for (i = 0; i < 100; i++) {
      stddev[j] += pow(data[i][j] - mean[j],(double )2);
    }
    stddev[j] /= float_n;
    stddev[j] = sqrt(stddev[j]);
/* The following in an inelegant but usual way to handle
         near-zero std. dev. values, which below would cause a zero-
         divide. */
    stddev[j] = (stddev[j] <= eps?1.0 : stddev[j]);
  }
/* Center and reduce the column vectors. */
  
  
  
  for (i = 0; i < 100; i++) {
    
    for (j = 0; j < 80; j++) {
      data[i][j] -= mean[j];
      data[i][j] /= sqrt(float_n) * stddev[j];
    }
  }
/* Calculate the m * m correlation matrix. */
  
  
  
  for (i = 0; i < 80 - 1; i++) {
    corr[i][i] = 1.0;
    
    for (j = i + 1; j < 80; j++) {
      corr[i][j] = 0.0;
      
      for (k = 0; k < 100; k++) {
        corr[i][j] += data[k][i] * data[k][j];
      }
      corr[j][i] = corr[i][j];
    }
  }
  corr[80 - 1][80 - 1] = 1.0;
}
