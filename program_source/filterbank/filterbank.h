#ifndef FILTERBANK_H_   /* Include guard */
#define FILTERBANK_H_


#include <ap_int.h>

/*
  Forward declaration of functions
*/

//#define vec_type int
typedef float vec_type;
//#define vec_type float

void filterbank( vec_type r[ 256 ],
		vec_type y[ 256 ],
		vec_type H[ 8 ][ 32 ],
		vec_type F[ 8 ][ 32 ] );

#endif 
