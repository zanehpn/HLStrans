void fdtd_2d(int tmax, int nx, int ny, double* ex, double* ey, double* hz, double* _fict_) {
    int t, i, j;
    for (t = 0; t < tmax; t++) {
        // Update ey boundary (first row)
        for (j = 0; j < ny; j++) {
            ey[j] = _fict_[t];
        }
        // Update ey interior
        for (i = 1; i < nx; i++) {
            for (j = 0; j < ny; j++) {
                ey[i * ny + j] -= 0.5 * (hz[i * ny + j] - hz[(i - 1) * ny + j]);
            }
        }
        // Update ex (interior columns)
        for (i = 0; i < nx; i++) {
            for (j = 1; j < ny; j++) {
                ex[i * ny + j] -= 0.5 * (hz[i * ny + j] - hz[i * ny + (j - 1)]);
            }
        }
        // Update hz (valid ranges to prevent out-of-bounds)
        for (i = 0; i < nx - 1; i++) {
            for (j = 0; j < ny - 1; j++) {
                hz[i * ny + j] -= 0.7 * (ex[i * ny + (j + 1)] - ex[i * ny + j] + ey[(i + 1) * ny + j] - ey[i * ny + j]);
            }
        }
    }
}