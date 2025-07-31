void adi(int tsteps, int n, double u[60][60], double v[60][60], double p[60][60], double q[60][60]) {
    const double DX = 1.0/60;
    const double DY = 1.0/60;
    const double DT = 1.0/40;
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

    #pragma HLS ARRAY_PARTITION variable=p dim=2 cyclic factor=16
    #pragma HLS ARRAY_PARTITION variable=q dim=2 cyclic factor=16
    #pragma HLS ARRAY_PARTITION variable=u dim=2 cyclic factor=16
    #pragma HLS ARRAY_PARTITION variable=v dim=2 cyclic factor=16

    TIMESTEP_LOOP:
    for (int t = 1; t <= 40; t++) {
        #pragma HLS LOOP_TRIPCOUNT max=40

        COL_SWEEP:
        for (int i = 1; i < 59; i++) {
            #pragma HLS PIPELINE II=1
            v[0][i] = 1.0;
            p[i][0] = 0.0;
            q[i][0] = v[0][i];

            FORWARD_J:
            for (int j = 1; j < 59; j++) {
                #pragma HLS UNROLL factor=4
                p[i][j] = -c / (a * p[i][j-1] + b);
                q[i][j] = (-d*u[j][i-1] + (1.0+2.0*d)*u[j][i] - f*u[j][i+1] - a*q[i][j-1]) / (a*p[i][j-1] + b);
            }

            v[59][i] = 1.0;

            REVERSE_J:
            for (int j = 58; j >= 1; j--) {
                #pragma HLS PIPELINE II=1
                #pragma HLS UNROLL factor=2
                v[j][i] = p[i][j] * v[j+1][i] + q[i][j];
            }
        }

        ROW_SWEEP:
        for (int i = 1; i < 59; i++) {
            #pragma HLS PIPELINE II=1
            u[i][0] = 1.0;
            p[i][0] = 0.0;
            q[i][0] = u[i][0];

            FORWARD_J2:
            for (int j = 1; j < 59; j++) {
                #pragma HLS UNROLL factor=4
                p[i][j] = -f / (d*p[i][j-1] + e);
                q[i][j] = (-a*v[i-1][j] + (1.0+2.0*a)*v[i][j] - c*v[i+1][j] - d*q[i][j-1]) / (d*p[i][j-1] + e);
            }

            u[i][59] = 1.0;

            REVERSE_J2:
            for (int j = 58; j >= 1; j--) {
                #pragma HLS PIPELINE II=1
                #pragma HLS UNROLL factor=2
                u[i][j] = p[i][j] * u[i][j+1] + q[i][j];
            }
        }
    }
}