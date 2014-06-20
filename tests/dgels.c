/* This test program is derived from the documentation of LAPACKE. */

#include "atlapack-test-utils.h"

int
main (int argc, const char *const argv[])
{
#define M		5
#define N		3
#define NRHS		2
#define LDA		3
#define LDB		2
  double	A[M][N] = {
    { 1, 1, 1 },
    { 2, 3, 4 },
    { 3, 5, 2 },
    { 4, 2, 5 },
    { 5, 4, 3 }
  };
  double	B[M][NRHS] = {
    { -10, -3 },
    { 12, 14 },
    { 14, 12 },
    { 16, 16 },
    { 18, 16 }
  };
  double	expected_X[N][NRHS] = {
    { 2.0, 1.0 },
    { 1.0, 1.0 },
    { 1.0, 2.0 }
  };
  lapack_int	info;

  info	= LAPACKE_dgels(LAPACK_ROW_MAJOR, 'N', M, N, NRHS, MREF(A), LDA, MREF(B), LDB);

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* result logging */
  {
    print_real_row_major_matrix("X, computed unknowns", N, NRHS, B);
  }

  /* result checking */
  {
    compare_real_row_major_result_and_expected_result("X, computed unknowns",
						      N, NRHS, B, expected_X);
  }
  exit(exit_code);
}

/* end of file */
