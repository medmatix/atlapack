/* This test program is built from  examples from the Net.  See both the
 * manual page for the Fortran routine dgesv(3) and the prototype of the
 * C function in "lapacke.h".
 *
 * We want to solve the system of equations:
 *
 *    10 * x1 + 1 * x2 + 2 * x3 = 9
 *     3 * x1 + 4 * x2 + 5 * x3 = 8
 *     6 * x1 + 7 * x2 + 8 * x3 = 7
 *
 * in matrix notation:
 *
 *     -       -   -  -     - -
 *    | 0  1  2 | | x1 |   | 9 |
 *    | 3  4  5 | | x2 | = | 8 |
 *    | 6  7  8 | | x3 |   | 7 |
 *     -       -   -  -     - -
 *
 * abstracting:
 *
 *     -             -   -  -     -  -
 *    | a11  a12  a13 | | x1 |   | b1 |
 *    | a21  a22  a23 | | x2 | = | b2 |
 *    | a31  a32  a33 | | x3 |   | b3 |
 *     -             -   -  -     -  -
 *
 * and we will use the symbols: A X = B.
 */

#include <stdio.h>
#include <cblas.h>
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
  /* Result of  computation: array  of permutation  indexes representing
     the partial pivoting matrix. */
  lapack_int	ipiv[N];
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
  info	= LAPACKE_dgesv(LAPACK_ROW_MAJOR, N, NRHS, (double*)&LU[0][0], LDA, &ipiv[0], &X[0][0], LDB);

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Result logging. */
  printf("Row-major dgesv results:\n");
  print_double_row_major_matrix("A, original coefficient matrix", &A[0][0], N, N);
  print_double_row_major_matrix("B, original right-hand sides", &B[0][0], N, NRHS);
  print_double_row_major_matrix("X, resulting unknowns", &X[0][0], N, NRHS);
  compare_double_row_major_result_and_expected_result("computed unknowns",
						      &X[0][0], &R[0][0], N, NRHS);

  print_partial_pivoting_matrix("P, it permutes A before LU factorisation", &ipiv[0], N);
  print_double_row_major_matrix("LU representing L and U packed in single matrix",
				&LU[0][0], N, N);
  {
    double	L[N][N];
    double	U[N][N];
    double_row_major_split_LU(&LU[0][0], &L[0][0], &U[0][0], N);
    print_double_row_major_matrix("L, component of LU", &L[0][0], N, N);
    print_double_row_major_matrix("U, component of LU", &U[0][0], N, N);

    /* Multiply L and U to verify that  the result is indeed PA; we need
     * CBLAS for this.  We need to inspect the header file "cblas.h"; in
     * general DGEMM does:
     *
     *   \alpha A B + \beta C
     *
     * and here we want to do:
     *
     *   1.0 L U + 0 R
     *
     * where R  is a matrix  whose contents  at input are  not important
     * here, and whose contents at output are the result of the product.
     * The prototype of "cblas_dgemm()" is:
     *
     *    void cblas_dgemm(const enum CBLAS_ORDER Order,
     *                     const enum CBLAS_TRANSPOSE TransA,
     *                     const enum CBLAS_TRANSPOSE TransB,
     *                     const int M, const int N, const int K,
     *                     const double alpha,
     *                     const double *A, const int lda,
     *                     const double *B, const int ldb,
     *                     const double beta,
     *                     double *C, const int ldc);
     *
     */
    {
      double	alpha = 1.0;
      double	beta  = 0.0;
      double	R[N][N];
      cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
		  N, N, N,
		  alpha, &L[0][0], LDA, &U[0][0], LDA, beta, &R[0][0], LDA);
      print_double_row_major_matrix("R = LU, must be equal to PA", &R[0][0], N, N);
    }
  }
}

/* end of file */
