/* This test program is built from  examples from the Net.  See both the
 * manual page for the Fortran routine dgesv(3) and the prototype of the
 * C function "LAPACKE_dgesv()" in the header file "lapacke.h"; see also
 * the manual  page dgemm(3),  which is  installed along  with ATLAPACK,
 * which documents the BLAS routine  DGEMM and the header file "cblas.h"
 * for the prototype of "cblas_dgemm()".
 *
 * We want to solve the system of equations:
 *
 *    10 * x1 + 1 * x2 + 2 * x3 = 9
 *     3 * x1 + 4 * x2 + 5 * x3 = 8
 *     6 * x1 + 7 * x2 + 8 * x3 = 7
 *
 * to determine the unknowns x1, x2 and x3; in matrix notation we write:
 *
 *     -        -   -  -     - -
 *    | 10  1  2 | | x1 |   | 9 |
 *    |  3  4  5 | | x2 | = | 8 |
 *    |  6  7  8 | | x3 |   | 7 |
 *     -        -   -  -     - -
 *
 * and abstracting:
 *
 *     -             -   -  -     -  -
 *    | a11  a12  a13 | | x1 |   | b1 |
 *    | a21  a22  a23 | | x2 | = | b2 |
 *    | a31  a32  a33 | | x3 |   | b3 |
 *     -             -   -  -     -  -
 *
 * and we  will use the symbols:  A X =  B, where A is  the coefficients
 * matrix, X is the vector of unknowns, B is the right-hand side vector.
 * The LAPACK routines are capable of handling X and B as matrices, but,
 * in  this test  program, we  limit  ourselves to  column vectors:  the
 * parameter NRHS is 1.
 *
 * How LAPACK's routine DGESV does it?  It factorises the matrix A in LU
 * form  with   partial  pivoting;  for   an  introduction  to   the  LU
 * factorisation see:
 *
 *    <http://en.wikipedia.org/wiki/Lu_decomposition>
 *
 * Whatever the actual implementation, we  can think of the algorithm as
 * follows:  first,   to  make  the  factorisation   possible  and  more
 * convenient, it permutes the rows of matrix A obtaining a matrix A'; A
 * can be rebuilt from A' by left-multiplying by a permutation matrix P:
 *
 *    A = P A'
 *
 * then it factorises  A' in the product of a  lower triangular matrix L
 * and an upper triangular matrix U:
 *
 *    A' = L U
 *
 * so that the system becomes:
 *
 *    A X = B  =>  P A' X = B  =>  P L U X = B
 *
 * and finally it determines X.
 *
 * The resulting matrices L and U have elements:
 *
 *         -          -          -           -
 *        |  1   0   0 |        | u11 u12 u13 |
 *    L = | l21  1   0 |    U = |  0  u22 u23 |
 *        | l31 l32  1 |        |  0   0  u33 |
 *         -          -          -           -
 *
 * and DGESV returns them in packed  form by mutating its parameter A as
 * follows:
 *
 *         -           -
 *        | u11 u12 u13 |
 *    A = | l21 u22 u23 |
 *        | l31 l32 u33 |
 *         -           -
 *
 * The permutation matrix P is returned by DGESV in its IPIV parameter.
 */


/** --------------------------------------------------------------------
 ** Headers.
 ** ----------------------------------------------------------------- */

#include <stdio.h>
#include <cblas.h>
#include <lapacke.h>
#include <math.h>
#include "atlapack-test-utils.h"

static void doit_in_row_major (void);
static void doit_in_col_major (void);

static void doit_with_other_values (void);


int
main (int argc, const char *const argv[])
{
  doit_in_row_major();
  doit_in_col_major();
  doit_with_other_values();
  exit(exit_code);
}


void
doit_in_row_major (void)
{
  /* These constants are all of type "lapack_int". */
#undef N
#undef NRHS
#undef LDA
#undef LDB
#define	N	3	/* number of equations */
#define	NRHS	1	/* number of right-hand sides = number of columns in B */
#define	LDA	N	/* leading dimension of A */
#define	LDB	NRHS	/* leading dimension of B */
  /* Operand of computation: coefficients matrix, row-major order. */
  double	A[N][N] = {
    { 10.0, 1.0, 2.0 },
    {  3.0, 4.0, 5.0 },
    {  6.0, 7.0, 8.0 }
  };
  /* Operand of computation: right-hand side matrix, row-major order. */
  double	B[N][LDB] = {
    { 9.0 },
    { 8.0 },
    { 7.0 }
  };
  /* Result of computation: permuted matrix A decomposed in LU. */
  double	packedLU[N][N];
  /* Result of computation: unknowns. */
  double	X[N][LDB];
  /* Result of computation: tuple  of partial pivot indexes representing
     the permutation matrix. */
  lapack_int	ipiv[N];
  /* Result of computation: error code, zero if success. */
  lapack_int	info;

  /* Expected result of computation, row-major order, non-permuted. */
  double	expected_X[N][LDB] = {
    { 0.0 },
    { -29.0/3.0 },
    { +28.0/3.0  }
  };

  /* Data needed to reconstruct A from the results. */
  int		perms[N];	/* permutations vector */
  int		P[N][N];	/* permutation matrix */
  double	L[N][N];	/* lower triangular matrix */
  double	U[N][N];	/* upper triangular matrix */
  double	R[N][N];	/* R = LU */
  double	reconstructed_A[N][N];	/* reconstructed_A = PR = PLU */

  /* Load the original  coefficients matrix from A to  packedLU.  The LU
     factorisation  result  of  dgesv()  will  be  stored  in  packedLU,
     overwriting it. */
  memcpy(packedLU, A, sizeof(double) * N * N);
  /* Load  the right-hand  side from  B to  X.  The  unknowns result  of
     dgesv() will be stored in X, overwriting it. */
  memcpy(X, B, sizeof(double) * N * NRHS);

  /* Do it. */
  info	= LAPACKE_dgesv(LAPACK_ROW_MAJOR, N, NRHS,
			&packedLU[0][0], LDA,
			VREF(ipiv),
			&X[0][0], LDB);

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Reconstructing A from the results. */
  {
    row_major_PLU_permutation_matrix_from_ipiv (N, N, ipiv, perms, P);
    real_row_major_split_LU(N, N, N, packedLU, L, U);
    /* Multiply L and U to verify that  the result is indeed PA; we need
     * CBLAS for this.  In general DGEMM does:
     *
     *   \alpha A B + \beta C
     *
     * where A, B and C are matrices; here we want to do:
     *
     *   1.0 L U + 0 R
     *
     * where R  is a matrix whose  contents at input are  not important,
     * and whose contents at output are the result of the operation.  We
     * need to  inspect both  the header file  "cblas.h" and  the source
     * file  "dgemm.f"  for the  documentation  of  the parameters;  the
     * prototype of "cblas_dgemm()" is:
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
     * In our  case all the matrices  are in row-major order  and we the
     * representations in the  arrays A and B are not  transposed, so: M
     * is the number of rows of A and C; N is the number of columns of B
     * and of columns of C; K is the  number of columns of A and rows of
     * B.  In other words:
     *
     *    A has dimensions M x K
     *    B has dimensions K x N
     *    C has dimensions M x N
     *
     * obviously the product AB has dimensions M x N.
     */
    {
      double	alpha = 1.0;
      double	beta  = 0.0;
      cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
		  N, N, N,
		  alpha, &L[0][0], LDA, &U[0][0], LDA, beta, &R[0][0], LDA);
    }
    real_row_major_apply_permutation_matrix(N, N, reconstructed_A, P, R);
  }

  printf("Row-major dgesv results:\n");

  /* Result verification. */
  {
    compare_real_row_major_result_and_expected_result("computed unknowns",
						      N, NRHS, X, expected_X);
    compare_real_row_major_result_and_expected_result("reconstructed A",
						      N, N, reconstructed_A, A);
  }

  /* Results logging. */
  {
    print_real_row_major_matrix("X, resulting unknowns", N, NRHS, X);
    print_real_row_major_matrix("A, original coefficient matrix", N, N, A);
    print_real_row_major_matrix("B, original right-hand sides", N, NRHS, B);
    print_row_major_PLU_partial_pivoting_vectors_and_matrix (N, N, ipiv, perms, P);
    print_real_row_major_matrix("packedLU representing L and U packed in single matrix",
				N, N, packedLU);
    print_real_row_major_matrix("L, elements of packedLU", N, N, L);
    print_real_row_major_matrix("U, elements of packedLU", N, N, U);
    print_real_row_major_matrix("R = LU, it must be such that A = PR", N, N, R);
    print_real_row_major_matrix("reconstructed_A = PR = PLU, it must be such that A = reconstructed_A",
				N, N, reconstructed_A);
  }
}


void
doit_in_col_major (void)
{
  /* These constants are all of type "lapack_int". */
#undef N
#undef NRHS
#undef LDA
#undef LDB
#define	N	3	/* number of equations */
#define	NRHS	1	/* number of right-hand sides */
#define	LDA	N	/* leading dimension of A */
#define	LDB	N	/* leading dimension of B */
  /* Operand of computation: coefficients matrix, col-major order. */
  double	A[N][N] = {
    { 10.0, 3.0, 6.0 },
    {  1.0, 4.0, 7.0 },
    {  2.0, 5.0, 8.0 }
  };
  /* Operand of computation: right-hand side matrix, col-major order. */
  double	B[NRHS][LDB] = {
    { 9.0, 8.0, 7.0 }
  };
  /* Result of computation: permuted matrix A decomposed in LU. */
  double	packedLU[N][N];
  /* Result of computation: unknowns. */
  double	X[NRHS][LDB];
  /* Result of computation: tuple  of partial pivot indexes representing
     the permutation matrix. */
  lapack_int	ipiv[N];
  /* Result of computation: error code, zero if success. */
  lapack_int	info;

  /* Expected result of computation, col-major order, non-permuted. */
  double	expected_X[NRHS][LDB] = {
    { 0.0, -29.0/3.0, +28.0/3.0 }
  };

  /* Data used to reconstruct A from the results. */
  int		perms[N];	/* permutations vector */
  int		P[N][N];	/* permutation matrix */
  double	L[N][N];	/* lower triangular matrix */
  double	U[N][N];	/* upper triangular matrix */
  double	R[N][N];	/* R = LU */
  double	reconstructed_A[N][N];	/* = PR = PLU */

  /* Load the original  coefficients matrix from A to  packedLU.  The LU
     factorisation  result  of  dgesv()  will  be  stored  in  packedLU,
     overwriting it. */
  memcpy(packedLU, A, sizeof(double) * N * N);
  /* Load  the right-hand  side from  B to  X.  The  unknowns result  of
     dgesv() will be stored in X, overwriting it. */
  memcpy(X, B, sizeof(double) * N * NRHS);

  /* Do it. */
  info	= LAPACKE_dgesv(LAPACK_COL_MAJOR, N, NRHS,
			&packedLU[0][0], LDA,
			&ipiv[0],
			&X[0][0], LDB);

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with col-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Result   verification:  compute   input  matrix   A  from   the  LU
     decomposition results. */
  {
    col_major_PLU_permutation_matrix_from_ipiv (N, N, ipiv, perms, P);
    real_col_major_split_LU(N, N, N, packedLU, L, U);
    /* Multiply L and U to verify that  the result is indeed PA; we need
     * CBLAS for this.  In general DGEMM does:
     *
     *   \alpha A B + \beta C
     *
     * where A, B and C are matrices; here we want to do:
     *
     *   1.0 L U + 0 R
     *
     * where R  is a matrix whose  contents at input are  not important,
     * and whose contents at output are the result of the operation.  We
     * need to  inspect both  the header file  "cblas.h" and  the source
     * file  "dgemm.f"  for the  documentation  of  the parameters;  the
     * prototype of "cblas_dgemm()" is:
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
     * In our  case all the matrices  are in row-major order  and we the
     * representations in the  arrays A and B are not  transposed, so: M
     * is the number of rows of A and C; N is the number of columns of B
     * and of columns of C; K is the  number of columns of A and rows of
     * B.  In other words:
     *
     *    A has dimensions M x K
     *    B has dimensions K x N
     *    C has dimensions M x N
     *
     * obviously the product AB has dimensions M x N.
     */
    {
      double	alpha = 1.0;
      double	beta  = 0.0;
      cblas_dgemm(CblasColMajor, CblasNoTrans, CblasNoTrans,
		  N, N, N,
		  alpha, &L[0][0], LDA, &U[0][0], LDA, beta, &R[0][0], LDA);
    }
    real_col_major_apply_permutation_matrix(N, N, reconstructed_A, P, R);
  }

  printf("Column-major dgesv results:\n");

  /* Result verification. */
  {
    compare_real_col_major_result_and_expected_result("computed unknowns",
						      NRHS, LDB, X, expected_X);
    compare_real_col_major_result_and_expected_result("reconstructed A",
						      N, N, reconstructed_A, A);
  }

  /* Results logging. */
  {
    print_real_col_major_matrix("X, resulting unknowns", NRHS, LDB, X);

    print_real_col_major_matrix("A, original coefficient matrix", N, N, A);
    print_real_col_major_matrix("B, original right-hand sides", NRHS, LDB, B);
    print_col_major_PLU_partial_pivoting_vectors_and_matrix (N, N, ipiv, perms, P);
    print_real_col_major_matrix("packedLU representing L and U packed in single matrix",
				N, N, packedLU);
    print_real_col_major_matrix("L, elements of packedLU", N, N, L);
    print_real_col_major_matrix("U, elements of packedLU", N, N, U);
    print_real_col_major_matrix("R = LU, it must be such that A = PR", N, N, R);
    print_real_col_major_matrix("reconstructed_A = PR = PLU, it must be such that A = reconstructed_A",
				N, N, reconstructed_A);
  }
}


void
doit_with_other_values (void)
{
  /* These constants are all of type "lapack_int". */
#undef N
#undef NRHS
#undef LDA
#undef LDB
#define	N	4	/* number of equations */
#define	NRHS	1	/* number of right-hand sides = number of columns in B */
#define	LDA	N	/* leading dimension of A */
#define	LDB	NRHS	/* leading dimension of B */
  /* Operand of computation: coefficients matrix, row-major order. */
  double	A[N][N] = {
    { +1.80, +2.88, +2.05, -0.89 },
    { +5.25, -2.95, -0.95, -3.80 },
    { +1.58, -2.69, -2.90, -1.04 },
    { -1.11, -0.66, -0.59, +0.80 }
  };
  /* Operand of computation: right-hand side matrix, row-major order. */
  double	B[N][LDB] = {
    {  +9.52 },
    { +24.35 },
    {  +0.77 },
    {  -6.22 }
  };
  /* Result of computation: permuted matrix A decomposed in LU. */
  double	packedLU[N][N];
  /* Result of computation: unknowns. */
  double	X[N][LDB];
  /* Result of computation: tuple  of partial pivot indexes representing
     the permutation matrix. */
  lapack_int	ipiv[N];
  /* Result of computation: error code, zero if success. */
  lapack_int	info;

  /* Expected result of computation, row-major order, non-permuted. */
  double	expected_X[N][LDB] = {
    { +1.0 },
    { -1.0 },
    { +3.0 },
    { -5.0 }
  };

  /* Data needed to reconstruct A from the results. */
  int		perms[N];	/* permutations vector */
  int		P[N][N];	/* permutation matrix */
  double	L[N][N];	/* lower triangular matrix */
  double	U[N][N];	/* upper triangular matrix */
  double	R[N][N];	/* R = LU */
  double	reconstructed_A[N][N];	/* reconstructed_A = PR = PLU */

  /* Load the original  coefficients matrix from A to  packedLU.  The LU
     factorisation  result  of  dgesv()  will  be  stored  in  packedLU,
     overwriting it. */
  memcpy(packedLU, A, sizeof(double) * N * N);
  /* Load  the right-hand  side from  B to  X.  The  unknowns result  of
     dgesv() will be stored in X, overwriting it. */
  memcpy(X, B, sizeof(double) * N * NRHS);

  /* Do it. */
  info	= LAPACKE_dgesv(LAPACK_ROW_MAJOR, N, NRHS,
			&packedLU[0][0], LDA,
			&ipiv[0],
			&X[0][0], LDB);

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Reconstruct A from the results. */
  {
    row_major_PLU_permutation_matrix_from_ipiv (N, N, ipiv, perms, P);
    real_row_major_split_LU(N, N, N, packedLU, L, U);
    /* Multiply L and U to verify that  the result is indeed PA; we need
     * CBLAS for this.  In general DGEMM does:
     *
     *   \alpha A B + \beta C
     *
     * where A, B and C are matrices; here we want to do:
     *
     *   1.0 L U + 0 R
     *
     * where R  is a matrix whose  contents at input are  not important,
     * and whose contents at output are the result of the operation.  We
     * need to  inspect both  the header file  "cblas.h" and  the source
     * file  "dgemm.f"  for the  documentation  of  the parameters;  the
     * prototype of "cblas_dgemm()" is:
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
     * In our  case all the matrices  are in row-major order  and we the
     * representations in the  arrays A and B are not  transposed, so: M
     * is the number of rows of A and C; N is the number of columns of B
     * and of columns of C; K is the  number of columns of A and rows of
     * B.  In other words:
     *
     *    A has dimensions M x K
     *    B has dimensions K x N
     *    C has dimensions M x N
     *
     * obviously the product AB has dimensions M x N.
     */
    {
      double	alpha = 1.0;
      double	beta  = 0.0;
      cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
		  N, N, N,
		  alpha, &L[0][0], LDA, &U[0][0], LDA, beta, &R[0][0], LDA);
    }
    real_row_major_apply_permutation_matrix(N, N, reconstructed_A, P, R);
  }

  printf("Other values row-major dgesv results:\n");

  /* Result verification. */
  {
    compare_real_row_major_result_and_expected_result("computed unknowns",
						      N, NRHS, X, expected_X);
    compare_real_row_major_result_and_expected_result("reconstructed A",
						      N, N, reconstructed_A, A);
  }

  /* Results logging. */
  {
    print_real_row_major_matrix("X, resulting unknowns", N, NRHS, X);
    print_real_row_major_matrix("A, original coefficient matrix", N, N, A);
    print_real_row_major_matrix("B, original right-hand sides", N, NRHS, B);
    print_row_major_PLU_partial_pivoting_vectors_and_matrix (N, N, ipiv, perms, P);
    print_real_row_major_matrix("packedLU representing L and U packed in single matrix",
				N, N, packedLU);
    print_real_row_major_matrix("L, elements of packedLU", N, N, L);
    print_real_row_major_matrix("U, elements of packedLU", N, N, U);
    print_real_row_major_matrix("R = LU, it must be such that A = PR", N, N, R);
    print_real_row_major_matrix("reconstructed_A = PR = PLU, it must be such that A = reconstructed_A",
				N, N, reconstructed_A);
  }
}

/* end of file */
