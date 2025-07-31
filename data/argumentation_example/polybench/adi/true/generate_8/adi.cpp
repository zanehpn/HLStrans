void adi(int tsteps, int n, double u[60][60], double v[60][60], double p[60][60], double q[60][60]) {
    const double DX = 1.0 / 60.0;
    const double DY = 1.0 / 60.0;
    const double DT = 1.0 / 40.0;
    const double B1 = 2.0;
    const double B2 = 1.0;
    
    const double mul1 = B1 * DT / (DX * DX);
    const double mul2 = B2 * DT / (DY * DY);
    
    const double a = -mul1 / 2.0;
    const double b = 1.0 + mul1;
    const double c = a;
    const double d = -mul2 / 2.0;
    const double e = 1.0 + mul2;
    const double f = d;
    
    // Precompute frequently used constants
    const double term_d_col = 1.0 + 2.0 * d;
    const double term_a_row = 1.0 + 2.0 * a;
    const double neg_f = -f;
    const double neg_c = -c;
    
    for (int t = 1; t <= 40; t++) {
        // Column Sweep
        for (int i = 1; i < 59; i++) {
            v[0][i] = 1.0;
            p[i][0] = 0.0;
            q[i][0] = v[0][i];
            
            for (int j = 1; j < 59; j++) {
                const double denom = a * p[i][j-1] + b;
                const double inv_denom = 1.0 / denom;
                p[i][j] = (-c) * inv_denom;
                q[i][j] = ((-d) * u[j][i-1] + term_d_col * u[j][i] + neg_f * u[j][i+1] - a * q[i][j-1]) * inv_denom;
            }
            
            v[59][i] = 1.0;
            for (int j = 57; j >= 0; j--) {
                const int idx = j + 1;
                v[idx][i] = p[i][idx] * v[idx + 1][i] + q[i][idx];
            }
        }
        
        // Row Sweep
        for (int i = 1; i < 59; i++) {
            u[i][0] = 1.0;
            p[i][0] = 0.0;
            q[i][0] = u[i][0];
            
            for (int j = 1; j < 59; j++) {
                const double denom_row = d * p[i][j-1] + e;
                const double inv_denom_row = 1.0 / denom_row;
                p[i][j] = (-f) * inv_denom_row;
                q[i][j] = ((-a) * v[i-1][j] + term_a_row * v[i][j] + neg_c * v[i+1][j] - d * q[i][j-1]) * inv_denom_row;
            }
            
            u[i][59] = 1.0;
            for (int j = 57; j >= 0; j--) {
                const int idx = j + 1;
                u[i][idx] = p[i][idx] * u[i][idx + 1] + q[i][idx];
            }
        }
    }
}