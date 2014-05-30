/* This test program is derived from the documentation of LAPACKE. */

#include <stdio.h>
#include <stdlib.h>
#include <lapacke.h>
#include <cblas.h>
#include <math.h>
#include <complex.h>

#define MAX(X,Y)	(((X)>(Y))? (X) : (Y))

int
main (int argc, const char *const argv[])
{
  lapack_complex_float	*a, *tau, *r, one, zero;
  lapack_int		info, m, n, lda;
  int			i, j;
  float			err = 0.0;

  m	= 10;
  n	= 5;
  lda	= m;
  one	= lapack_make_complex_float(1.0, 0.0);
  zero	= lapack_make_complex_float(0.0, 0.0);
  a	= calloc(m * n, sizeof(lapack_complex_float));
  r	= calloc(n * n, sizeof(lapack_complex_float));
  tau	= calloc(m,     sizeof(lapack_complex_float));

  for (j=0; j<n; ++j) {
    for (i=0; i<m; ++i) {
      a[i+j*m] = lapack_make_complex_float(i+1, j+1);
    }
  }
  info = LAPACKE_cgeqrf(LAPACK_COL_MAJOR, m, n,    a, lda, tau);
  info = LAPACKE_cungqr(LAPACK_COL_MAJOR, m, n, n, a, lda, tau);
  for (j=0; j<n; ++j) {
    for (i=0; i<n; ++i) {
      r[i+j*n] = (i == j)? -one : zero;
    }
  }
  cblas_cgemm(CblasColMajor, CblasConjTrans, CblasNoTrans,
	      n, n, m, &one, a, lda, a, lda, &one, r, n);
  for (j=0; j<n; ++j) {
    for (i=0; i<n; ++i) {
      err = MAX(err, cabs(r[i+j*n]));
    }
  }
  printf("error %e\n", err);
  free(tau);
  free(r);
  free(a);
  exit(EXIT_SUCCESS);
}

/* end of file */
