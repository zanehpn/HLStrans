#include <stdlib.h>
#include <stdio.h>
#include "ap_int.h"
#include <algorithm>
#include "params.h"
// size of (tmphei * tmpwid + inhei * inwid) = (100x100 + 200x200)





struct axis_t {
    unsigned char data;
    ap_int<1> last;
};

struct window  {
	unsigned char win[tmpdim][tmpdim];
};


struct buffer {
	unsigned char buf [tmpdim][indim];
};

void temp_match(axis_t *INPUT, axis_t *OUTPUT);



