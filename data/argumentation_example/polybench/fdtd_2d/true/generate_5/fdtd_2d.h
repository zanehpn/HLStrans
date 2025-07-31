#ifndef FDTD_2D_H
#define FDTD_2D_H

void fdtd_2d(int tmax, int nx, int ny, double ex[60][80], double ey[60][80], double hz[60][80], double _fict_[40]);

#endif