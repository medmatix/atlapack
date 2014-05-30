/* This test program is derived from the documentation of LAPACKE. */

#include <stdio.h>
#include <lapacke.h>
#include <math.h>

int
main (int argc, const char *const argv[])
{
  double	a[5][3] = { 1, 1, 1,
			    2, 3, 4,
			    3, 5, 2,
			    4, 2, 5,
			    5, 4, 3 };
  double	b[5][2] = { -10, -3,
			    12, 14,
			    14, 12,
			    16, 16,
			    18, 16 };
  lapack_int	info, m, n, lda, ldb, nrhs;
  m	= 5;
  n	= 3;
  nrhs	= 2;
  lda	= 3;
  ldb	= 2;
  info	= LAPACKE_dgels(LAPACK_ROW_MAJOR, 'N', m, n, nrhs, *a, lda, *b, ldb);
  /* result logging */
  for (int i=0; i<n; ++i) {
    for (int j=0; j<nrhs; ++j) {
      printf("%lf ", b[i][j]);
    }
    printf("\n");
  }
  /* result checking */
  {
    double	expected_result[3][2] = { 2, 1,
					  1, 1,
					  1, 2 };
    for (int i=0; i<n; ++i) {
      for (int j=0; j<nrhs; ++j) {
	if (fabs(b[i][j] - expected_result[i][j]) > 1e-3) {
	  exit(EXIT_FAILURE);
	}
      }
    }
  }
  exit(EXIT_SUCCESS);
}

/* end of file */
