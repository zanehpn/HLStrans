#include <string.h>
#ifndef _SW_H
#define _SW_H
#include "assert.h"
#include <ap_int.h>
#include <stdio.h>
#include <string.h>

typedef ap_uint<2> uint2_t;
typedef ap_uint<1> uint1_t;

typedef struct _pe {
    short d;
    short p;
} pe;
#define GAP -1
#define MATCH 2
#define MISS_MATCH -1
#define ABSMAXCOST MATCH

#define MINVAL -32000


#define UINTSZ sizeof(unsigned int)
#define BPSZ 2
#define UINTNUMBP ((UINTSZ*8)/(BPSZ))

#define LOG2MAXPE 5
#define MAXPE (1<<LOG2MAXPE)
#define MAXROW 128
#define MAXCOL 256
#define NUMPACKED 16
#define PACKEDSZ ((MAXROW + MAXCOL)) / (UINTNUMBP)
#define READREFUINTSZ(X, Y) ((((X) + (Y)))/(UINTNUMBP))
#define NUMITER 1024

//A-0, C-1, G-2, T-3
const char bases[5] = "ACGT";
void simpleSW(uint2_t refSeq[MAXCOL],
    uint2_t readSeq[MAXROW],
    short *maxr,
    short *maxc,
    short *maxv);

void smithwaterman(unsigned int *input, unsigned int *output, int *size);
#endif