/* This test program is built from  examples from the Net.  See both the
 * manual page for the Fortran routine dgesv(3) and the prototype of the
 * C function in "lapacke.h".
 *
 * We want to solve the system of equations:
 *
 *    10 * x + 1 * y + 2 * z = 9
 *    3 * x + 4 * y + 5 * z = 8
 *    6 * x + 7 * y + 8 * z = 7
 *
 * in matrix notation:
 *
 *     -       -   - -     - -
 *    | 0  1  2 | | x |   | 9 |
 *    | 3  4  5 | | y | = | 8 |
 *    | 6  7  8 | | z |   | 7 |
 *     -       -   - -     - -
 *
 * and we will use the symbols: A X = B.
 */

#include <stdio.h>
#include <lapacke.h>
#include <math.h>
#include "atlapack-test-utils.h"

static void doit_in_row_major (void);

int
main (int argc, const char *const argv[])
{
  doit_in_row_major();
  exit(EXIT_SUCCESS);
}
void
doit_in_row_major (void)
{
  /* These constants are all of type "lapack_int". */
#define	N	3	/* number of equations */
#define	NRHS	1	/* number of right-hand sides */
#define	LDA	3	/* leading dimension of A */
#define	LDB	1	/* leading dimension of B */
  /* Operand of computation: coefficients matrix, row-major order. */
  const double	A[N][N] = {
    10.0, 1.0, 2.0,
    3.0, 4.0, 5.0,
    6.0, 7.0, 8.0
  };
  /* Operand of computation: right-hand side matrix, row-major order. */
  const double	B[N][LDB] = {
    9.0,
    8.0,
    7.0
  };
  /* Result of computation: permuted matrix A decomposed in LU. */
  double	LU[N][N];
  /* Result of computation: unknowns. */
  double	X[N][LDB];
  /* Result of computation: array of permutation indexes. */
  lapack_int	ipiv[N][LDB];
  /* Result of computation: error code, zero if success. */
  lapack_int	info;
  /* Expected result of computation, row-major order, non-permuted. */
  const double	R[N][LDB] = {
    0.0,
    -29.0/3.0,
    28.0/3.0
  };

  /* Load  the  original coefficients  matrix  from  A  to LU.   The  LU
     decomposition result of  dgesv() will be stored  in LU, overwriting
     it. */
  memcpy(LU, A, sizeof(double) * N * N);
  /* Load  the right-hand  side from  B to  X.  The  unknowns result  of
     dgesv() will be stored in X, overwriting it. */
  memcpy(X, B, sizeof(double) * N * NRHS);

  /* Do it. */
  info	= LAPACKE_dgesv(LAPACK_ROW_MAJOR, N, NRHS, (double*)&LU[0][0], LDA, &ipiv[0][0], &X[0][0], LDB);

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Result logging. */
  printf("Row-major dgesv results:\n");
  print_row_major_matrix("A, original coefficient matrix", &A[0][0], N, N);
  print_row_major_matrix("B, original right-hand sides", &B[0][0], N, NRHS);
  print_row_major_matrix("X, resulting unknowns", &X[0][0], N, NRHS);
  print_row_major_matrix("LU = original A permuted then decomposed", &LU[0][0], N, N);

  row_major_compare_result_and_expected_result("computed unknowns",
					       &X[0][0], &R[0][0], N, NRHS);
}

/* end of file */
