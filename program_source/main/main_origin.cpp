// Converted from main_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: adpcm.c ----

  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
  xb += (long) (*tqmf_ptr) * (*h_ptr++);

  xl = (xa + xb) >> 15;
  xh = (xa - xb) >> 15;

  xa1 += (long) (*ac_ptr) * (*h_ptr++);
  xa2 += (long) (*ad_ptr) * (*h_ptr++);

void
reset ()
{
  int i;

  detl = dec_detl = 32;

}

  if (el >= 0)
    ril = quant26bt_pos[mil];
  else
    ril = quant26bt_neg[mil];
  return (ril);
}

	}
    }
  else
    {
      for (i = 0; i < 6; i++)
	{

	  if ((long) dlt * dlti[i] >= 0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
  dlti[4] = dlti[3];
  dlti[3] = dlti[2];
  dlti[2] = dlti[1];
  dlti[1] = dlti[0];
  dlti[0] = dlt;
}

/* uppol2 - update second predictor coefficient (pole section) */
/* inputs: al1, al2, plt, plt1, plt2. outputs: apl2 */

int
uppol2 (int al1, int al2, int plt, int plt1, int plt2)
{
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
  if ((long) plt * plt1 >= 0L)
    wd2 = -wd2;			/* check same sign */
  wd2 = wd2 >> 7;		/* gain of 1/128 */
  if ((long) plt * plt2 >= 0L)
    {
      wd4 = wd2 + 128;		/* same sign case */
    }
  else
    {
      wd4 = wd2 - 128;
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
    apl2 = 12288;
  if (apl2 < -12288)
    apl2 = -12288;
  return (apl2);
}

/* uppol1 - update first predictor coefficient (pole section) */
/* inputs: al1, apl2, plt, plt1. outputs: apl1 */

int
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
    }
  else
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
  if (apl1 > wd3)
    apl1 = wd3;
  if (apl1 < -wd3)
    apl1 = -wd3;
  return (apl1);
}

/* logsch - update log quantizer scale factor in higher sub-band */
/* note that nbh is passed and returned */

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
  if (nbh < 0)
    nbh = 0;
  if (nbh > 22528)
    nbh = 22528;
  return (nbh);
}

/*
+--------------------------------------------------------------------------+
| * Test Vectors (added for CHStone)                                       |
|     test_data : input data                                               |
|     test_compressed : expected output data for "encode"                  |
|     test_result : expected output data for "decode"                      |
+--------------------------------------------------------------------------+
*/

#define SIZE 100
#define IN_END 100

const int test_data[SIZE] = {
  0x44, 0x44, 0x44, 0x44, 0x44,
  0x44, 0x44, 0x44, 0x44, 0x44,
  0x44, 0x44, 0x44, 0x44, 0x44,
  0x44, 0x44, 0x43, 0x43, 0x43,
  0x43, 0x43, 0x43, 0x43, 0x42,
  0x42, 0x42, 0x42, 0x42, 0x42,
  0x41, 0x41, 0x41, 0x41, 0x41,
  0x40, 0x40, 0x40, 0x40, 0x40,
  0x40, 0x40, 0x40, 0x3f, 0x3f,
  0x3f, 0x3f, 0x3f, 0x3e, 0x3e,
  0x3e, 0x3e, 0x3e, 0x3e, 0x3d,
  0x3d, 0x3d, 0x3d, 0x3d, 0x3d,
  0x3c, 0x3c, 0x3c, 0x3c, 0x3c,
  0x3c, 0x3c, 0x3c, 0x3c, 0x3b,
  0x3b, 0x3b, 0x3b, 0x3b, 0x3b,
  0x3b, 0x3b, 0x3b, 0x3b, 0x3b,
  0x3b, 0x3b, 0x3b, 0x3b, 0x3b,
  0x3b, 0x3b, 0x3b, 0x3b, 0x3b,
  0x3b, 0x3b, 0x3c, 0x3c, 0x3c,
  0x3c, 0x3c, 0x3c, 0x3c, 0x3c
};
int compressed[SIZE], result[SIZE];
const int test_compressed[SIZE] = {
  0xfd, 0xde, 0x77, 0xba, 0xf2,
  0x90, 0x20, 0xa0, 0xec, 0xed,
  0xef, 0xf1, 0xf3, 0xf4, 0xf5,
  0xf5, 0xf5, 0xf5, 0xf6, 0xf6,
  0xf6, 0xf7, 0xf8, 0xf7, 0xf8,
  0xf7, 0xf9, 0xf8, 0xf7, 0xf9,
  0xf8, 0xf8, 0xf6, 0xf8, 0xf8,
  0xf7, 0xf9, 0xf9, 0xf9, 0xf8,
  0xf7, 0xfa, 0xf8, 0xf8, 0xf7,
  0xfb, 0xfa, 0xf9, 0xf8, 0xf8
};
const int test_result[SIZE] = {
  0, 0xffffffff, 0xffffffff, 0, 0,
  0xffffffff, 0, 0, 0xffffffff, 0xffffffff,
  0, 0, 0x1, 0x1, 0,
  0xfffffffe, 0xffffffff, 0xfffffffe, 0, 0xfffffffc,
  0x1, 0x1, 0x1, 0xfffffffb, 0x2,
  0x2, 0x3, 0xb, 0x14, 0x14,
  0x16, 0x18, 0x20, 0x21, 0x26,
  0x27, 0x2e, 0x2f, 0x33, 0x32,
  0x35, 0x33, 0x36, 0x34, 0x37,
  0x34, 0x37, 0x35, 0x38, 0x36,
  0x39, 0x38, 0x3b, 0x3a, 0x3f,
  0x3f, 0x40, 0x3a, 0x3d, 0x3e,
  0x41, 0x3c, 0x3e, 0x3f, 0x42,
  0x3e, 0x3b, 0x37, 0x3b, 0x3e,
  0x41, 0x3b, 0x3b, 0x3a, 0x3b,
  0x36, 0x39, 0x3b, 0x3f, 0x3c,
  0x3b, 0x37, 0x3b, 0x3d, 0x41,
  0x3d, 0x3e, 0x3c, 0x3e, 0x3b,
  0x3a, 0x37, 0x3b, 0x3e, 0x41,
  0x3c, 0x3b, 0x39, 0x3a, 0x36
};

void
adpcm_main ()
{
  int i, j;

/* reset, initialize required memory */
  reset ();

  j = 10;

  for (i = 0; i < IN_END; i += 2)
    {

      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < IN_END; i += 2)
    {

      decode (compressed[i / 2]);
      result[i] = xout1;
      result[i + 1] = xout2;
    }
}

int
main ()
{
  int i;
  int main_result;

      main_result = 0;
      adpcm_main ();
      for (i = 0; i < IN_END / 2; i++)
	{

	  if (compressed[i] != test_compressed[i])
	    {
	      main_result += 1;
	    }
	}
      for (i = 0; i < IN_END; i++)
	{

	  if (result[i] != test_result[i])
	    {
	      main_result += 1;
	    }
	}
      printf ("%d\n", main_result);
      return main_result;
    }
