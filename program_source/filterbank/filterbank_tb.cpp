
#include "filterbank.h"
#include <stdio.h>

/*
  Declaration of global variables
*/

static int filterbank_return_value;
static int filterbank_numiters;

void filterbank_init( void )
{
  filterbank_numiters = 2;
}


int filterbank_return( void )
{
  return filterbank_return_value;
}

/*
  Core benchmark functions for test
*/


void filterbank_core_test( vec_type r[ 256 ],
		vec_type y[ 256 ],
		vec_type H[ 8 ][ 32 ],
		vec_type F[ 8 ][ 32 ] )
{
  int i, j, k;

  for ( i = 0; i < 256; i++ ){
	    y[ i ] = 0;
  }

  for ( i = 0; i < 8; i++ ) {
	  vec_type Vect_H[ 256 ]; /* (output of the H) */
	  vec_type Vect_Dn[ ( int ) 256 / 8 ]; /* output of the down sampler; */
	  vec_type Vect_Up[ 256 ]; /* output of the up sampler; */
	  vec_type Vect_F[ 256 ]; /* this is the output of the */

    /* convolving H */
    for ( j = 0; j < 256; j++ ) {
        Vect_H[ j ] = 0;
      for ( k = 0; ( ( k < 32 ) & ( ( j - k ) >= 0 ) ); k++ ){
          Vect_H[ j ] += H[ i ][ k ] * r[ j - k ];
    	  }
      }

    /* Down Sampling */
    for ( j = 0; j < 256 / 8; j++ ){
        Vect_Dn[ j ] = Vect_H[ j * 8 ];

    }
    /* Up Sampling */
    for ( j = 0; j < 256; j++ ){
        Vect_Up[ j ] = 0;

    }
    for ( j = 0; j < 256 / 8; j++ ){
        Vect_Up[ j * 8 ] = Vect_Dn[ j ];
    }
    /* convolving F */
    for ( j = 0; j < 256; j++ ) {
      Vect_F[ j ] = 0;
      for ( k = 0; ( ( k < 32 ) & ( ( j - k ) >= 0 ) ); k++ ){
          Vect_F[ j ] += F[ i ][ k ] * Vect_Up[ j - k ];
    	  }
      }

    /* adding the results to the y matrix */

    for ( j = 0; j < 256; j++ ){
        y[ j ] += Vect_F[ j ];
    }
    }
}


int filterbank_body( void )
{
	vec_type r[ 256 ] = {0};
	vec_type y_sw[ 256 ] = {0};
	vec_type y_hw[ 256 ] = {0};
	vec_type H[ 8 ][ 32 ] = {0};
	vec_type F[ 8 ][ 32 ] = {0};
  int err_cnt = 0;

  int i, j;

  for ( i = 0; i < 256; i++ ){
	    r[ i ] = i + 1;
  }
  for ( i = 0; i < 32; i++ ) {

    for ( j = 0; j < 8; j++ ) {
      H[ j ][ i ] = i * 32 + j * 8 + j + i + j + 1;
      F[ j ][ i ] = i * j + j * j + j + i;
    }
  }

  // Test software
  filterbank_init();

  while ( filterbank_numiters-- > 0 )
    filterbank_core_test( r, y_sw, H, F );

  filterbank_init();

  // Test hardware
  while ( filterbank_numiters-- > 0 )
    filterbank( r, y_hw, H, F );  

  // Compare results

  for(i = 0; i < 256; i++){
    if(y_sw[i] != y_hw[i]) {
      err_cnt++;
    }
  }

  return err_cnt;
}

/*
  Main function
*/

int main( void )
{
  int err_cnt = 0;

  err_cnt = filterbank_body();

  if (err_cnt)
    printf("ERROR: %d", err_cnt);
  else
    printf("Test Passes:");
  return err_cnt;
}