/* This test program is built from  examples from the Net.  See both the
 * manual page for the Fortran routine zgesv(3) and the prototype of the
 * C function "LAPACKE_zgesv()" in the header file "lapacke.h"; see also
 * the manual  page zgemm(3),  which is  installed along  with ATLAPACK,
 * which documents the BLAS routine  ZGEMM and the header file "cblas.h"
 * for the prototype of "cblas_zgemm()".
 *
 * We want to solve the system of equations:
 *
 *    10 * x1 + 1 * x2 + 2 * x3 = 9
 *     3 * x1 + 4 * x2 + 5 * x3 = 8
 *     6 * x1 + 7 * x2 + 8 * x3 = 7
 *
 * to determine the unknowns x1, x2 and x3; in matrix notation we write:
 *
 *     -       -   -  -     - -
 *    | 0  1  2 | | x1 |   | 9 |
 *    | 3  4  5 | | x2 | = | 8 |
 *    | 6  7  8 | | x3 |   | 7 |
 *     -       -   -  -     - -
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
 * in this test program, we limit ourselves to column vectors.
 *
 * How LAPACK's routine ZGESV does it?  It factorises the matrix A in LU
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
 * and ZGESV returns them in packed  form by mutating its parameter A as
 * follows:
 *
 *         -           -
 *        | u11 u12 u13 |
 *    A = | l21 u22 u23 |
 *        | l31 l32 u33 |
 *         -           -
 *
 * The permutation matrix P is returned by ZGESV in its IPIV parameter.
 */


/** --------------------------------------------------------------------
 ** Headers.
 ** ----------------------------------------------------------------- */

#include <stdio.h>
#include <cblas.h>
#include <lapacke.h>
#include <math.h>
#include "atlapack-test-utils.h"

void doit_in_row_major (void);
void doit_in_col_major (void);
void doit_with_other_numbers (void);


int
main (int argc, const char *const argv[])
{
  doit_in_row_major();
  doit_in_col_major();
  doit_with_other_numbers ();
  exit(EXIT_SUCCESS);
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
#define	NRHS	1	/* number of right-hand sides */
#define	LDA	N	/* leading dimension of A */
#define	LDB	NRHS	/* leading dimension of B */
  /* Operand of computation: coefficients matrix, row-major order. */
  lapack_complex_double	A[N][N] = {
    { lapack_make_complex_double(10.0, 0.0), lapack_make_complex_double(1.0, 0.0), lapack_make_complex_double(2.0, 0.0) },
    {  lapack_make_complex_double(3.0, 0.0), lapack_make_complex_double(4.0, 0.0), lapack_make_complex_double(5.0, 0.0) },
    {  lapack_make_complex_double(6.0, 0.0), lapack_make_complex_double(7.0, 0.0), lapack_make_complex_double(8.0, 0.0) }
  };
  /* Operand of computation: right-hand side matrix, row-major order. */
  lapack_complex_double	B[N][LDB] = {
    { lapack_make_complex_double(9.0, 0.0) },
    { lapack_make_complex_double(8.0, 0.0) },
    { lapack_make_complex_double(7.0, 0.0) }
  };
  /* Result of computation: permuted matrix A decomposed in LU. */
  lapack_complex_double	packedLU[N][N];
  /* Result of computation: unknowns. */
  lapack_complex_double	X[N][LDB];
  /* Result of computation: tuple  of partial pivot indexes representing
     the permutation matrix. */
  lapack_int	ipiv[N];
  /* Result of computation: error code, zero if success. */
  lapack_int	info;

  /* Expected result of computation, row-major order, non-permuted. */
  lapack_complex_double	expected_X[N][LDB] = {
    { lapack_make_complex_double(0.0, 0.0) },
    { lapack_make_complex_double(-29.0/3.0, 0.0) },
    { lapack_make_complex_double(+28.0/3.0, 0.0) }
  };

  /* Data needed to reconstruct A from the results. */
  int			perms[N];	/* permutations vector */
  int			P[N][N];	/* permutation matrix */
  lapack_complex_double	L[N][N];	/* lower triangular matrix */
  lapack_complex_double	U[N][N];	/* upper triangular matrix */
  lapack_complex_double	R[N][N];	/* R = LU */
  lapack_complex_double	reconstructed_A[N][N];	/* reconstructed_A = PR = PLU */

  /* Load the original  coefficients matrix from A to  packedLU.  The LU
     factorisation  result  of  zgesv()  will  be  stored  in  packedLU,
     overwriting it. */
  memcpy(packedLU, A, sizeof(lapack_complex_double) * N * N);
  /* Load  the right-hand  side from  B to  X.  The  unknowns result  of
     zgesv() will be stored in X, overwriting it. */
  memcpy(X, B, sizeof(lapack_complex_double) * N * NRHS);

  /* Do it. */
  info	= LAPACKE_zgesv(LAPACK_ROW_MAJOR, N, NRHS,
			&packedLU[0][0], LDA,
			&ipiv[0],
			&X[0][0], LDB);

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Reconstructing A from the results. */
  {
    row_major_permutation_matrix_from_ipiv (N, N, ipiv, perms, P);
    complex_row_major_split_LU(N, packedLU, L, U);

    /* Multiply L and U to verify that  the result is indeed PA; we need
     * CBLAS for this.  In general ZGEMM does:
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
     * file  "zgemm.f"  for the  documentation  of  the parameters;  the
     * prototype of "cblas_zgemm()" is:
     *
     *    void cblas_zgemm(const enum CBLAS_ORDER Order,
     *                     const enum CBLAS_TRANSPOSE TransA,
     *                     const enum CBLAS_TRANSPOSE TransB,
     *                     const int M, const int N, const int K,
     *                     const void *alpha,
     *                     const void *A, const int lda,
     *                     const void *B, const int ldb,
     *                     const void *beta,
     *                     void *C, const int ldc);
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
      lapack_complex_double	alpha = lapack_make_complex_double(1.0,0.0);
      lapack_complex_double	beta  = lapack_make_complex_double(0.0,0.0);
      cblas_zgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
		  N, N, N,
		  &alpha, &L[0][0], LDA, &U[0][0], LDA, &beta, &R[0][0], LDA);
    }
    complex_row_major_apply_permutation_matrix(N, N, P, R, reconstructed_A);
  }

  printf("Row-major zgesv results:\n");

  /* Result verification. */
  {
    compare_complex_row_major_result_and_expected_result("computed unknowns",
							 N, NRHS, X, expected_X);
    compare_complex_row_major_result_and_expected_result("reconstructed A",
							 N, N, reconstructed_A, A);
  }

  /* Results logging. */
  {
    print_complex_row_major_matrix("X, resulting unknowns", N, NRHS, X);
    print_complex_row_major_matrix("A, original coefficient matrix", N, N, A);
    print_complex_row_major_matrix("B, original right-hand sides", N, NRHS, B);
    print_partial_pivoting_vector_and_permutation_matrix_LU(N, N, ipiv);
    print_complex_row_major_matrix("packedLU representing L and U packed in single matrix",
				   N, N, packedLU);
    print_complex_row_major_matrix("L, elements of packedLU", N, N, L);
    print_complex_row_major_matrix("U, elements of packedLU", N, N, U);
    print_complex_row_major_matrix("R = LU, it must be such that A = PR", N, N, R);
    print_complex_row_major_matrix("reconstructed_A = PR = PLU, it must be such that A = reconstructed_A",
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
  lapack_complex_double	A[N][N] = {
    { lapack_make_complex_double(10.0,0.0), lapack_make_complex_double(3.0,0.0), lapack_make_complex_double(6.0,0.0) },
    {  lapack_make_complex_double(1.0,0.0), lapack_make_complex_double(4.0,0.0), lapack_make_complex_double(7.0,0.0) },
    {  lapack_make_complex_double(2.0,0.0), lapack_make_complex_double(5.0,0.0), lapack_make_complex_double(8.0,0.0) }
  };
  /* Operand of computation: right-hand side matrix, col-major order. */
  lapack_complex_double	B[NRHS][LDB] = {
    { lapack_make_complex_double(9.0,0.0), lapack_make_complex_double(8.0,0.0), lapack_make_complex_double(7.0,0.0) }
  };
  /* Result of computation: permuted matrix A decomposed in LU. */
  lapack_complex_double	packedLU[N][N];
  /* Result of computation: unknowns. */
  lapack_complex_double	X[NRHS][LDB];
  /* Result of computation: tuple  of partial pivot indexes representing
     the permutation matrix. */
  lapack_int	ipiv[N];
  /* Result of computation: error code, zero if success. */
  lapack_int	info;

  /* Expected result of computation, col-major order, non-permuted. */
  lapack_complex_double	expected_X[NRHS][LDB] = {
    { lapack_make_complex_double(0.0,0.0), lapack_make_complex_double(-29/3.0,0.0), lapack_make_complex_double(+28.0/3.0,0.0) }
  };

  /* Data needed to reconstruct A from the results. */
  int			perms[N];	/* permutations vector */
  int			P[N][N];	/* permutation matrix */
  lapack_complex_double	L[N][N];	/* lower triangular matrix */
  lapack_complex_double	U[N][N];	/* upper triangular matrix */
  lapack_complex_double	R[N][N];	/* R = LU */
  lapack_complex_double	reconstructed_A[N][N];	/* reconstructed_A = PR = PLU */

  /* Load the original  coefficients matrix from A to  packedLU.  The LU
     factorisation  result  of  zgesv()  will  be  stored  in  packedLU,
     overwriting it. */
  memcpy(packedLU, A, sizeof(lapack_complex_double) * N * N);
  /* Load  the right-hand  side from  B to  X.  The  unknowns result  of
     zgesv() will be stored in X, overwriting it. */
  memcpy(X, B, sizeof(lapack_complex_double) * N * NRHS);

  /* Do it. */
  info	= LAPACKE_zgesv(LAPACK_COL_MAJOR, N, NRHS,
			&packedLU[0][0], LDA,
			&ipiv[0],
			&X[0][0], LDB);

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with col-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Reconstructing A from the results. */
  {
    col_major_permutation_matrix_from_ipiv (N, N, ipiv, perms, P);
    complex_col_major_split_LU(N, packedLU, L, U);
    /* Multiply L and U to verify that  the result is indeed PA; we need
     * CBLAS for this.  In general ZGEMM does:
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
     * file  "zgemm.f"  for the  documentation  of  the parameters;  the
     * prototype of "cblas_zgemm()" is:
     *
     *    void cblas_zgemm(const enum CBLAS_ORDER Order,
     *                     const enum CBLAS_TRANSPOSE TransA,
     *                     const enum CBLAS_TRANSPOSE TransB,
     *                     const int M, const int N, const int K,
     *                     const void *alpha,
     *                     const void *A, const int lda,
     *                     const void *B, const int ldb,
     *                     const void *beta,
     *                     void *C, const int ldc);
     *
     * In our case all the matrices are in column-major order and we the
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
      lapack_complex_double	alpha = lapack_make_complex_double(1.0,0.0);
      lapack_complex_double	beta  = lapack_make_complex_double(0.0,0.0);
      cblas_zgemm(CblasColMajor, CblasNoTrans, CblasNoTrans,
		  N, N, N,
		  &alpha, &L[0][0], LDA, &U[0][0], LDA, &beta, &R[0][0], LDA);
    }
    complex_col_major_apply_permutation_matrix(N, N, P, R, reconstructed_A);
  }

  printf("Column-major zgesv results:\n");

  /* Result verification. */
  {
    compare_complex_col_major_result_and_expected_result("computed unknowns",
							 NRHS, LDB, X, expected_X);
    compare_complex_col_major_result_and_expected_result("reconstructed A",
							 N, N, reconstructed_A, A);
  }

  /* Results logging. */
  {
    print_complex_col_major_matrix("X, resulting unknowns", NRHS, LDB, X);
    print_complex_col_major_matrix("A, original coefficient matrix", N, N, A);
    print_complex_col_major_matrix("B, original right-hand sides", NRHS, LDB, B);
    print_partial_pivoting_vector_and_permutation_matrix_LU(N, N, ipiv);
    print_complex_col_major_matrix("packedLU representing L and U packed in single matrix",
				   N, N, packedLU);
    print_complex_col_major_matrix("L, elements of packedLU", N, N, L);
    print_complex_col_major_matrix("U, elements of packedLU", N, N, U);
    print_complex_col_major_matrix("R = LU, it must be such that A = PR", N, N, R);
    print_complex_col_major_matrix("reconstructed_A = PR = PLU, it must be such that A = reconstructed_A",
				   N, N, reconstructed_A);
  }
}


void
doit_with_other_numbers (void)
{
#undef N
#undef NRHS
#undef LDA
#undef LDB
#define	N	4	/* number of equations */
#define	NRHS	1	/* number of right-hand sides */
#define	LDA	N	/* leading dimension of A */
#define	LDB	NRHS	/* leading dimension of B */
  /* Operand of computation: coefficients matrix, row-major order. */
  double complex	A[N][N] = {
    { CMPLX(-1.34,+2.55), CMPLX(+0.28,+3.17), CMPLX(-6.39,-2.20), CMPLX(+0.72,-0.92) },
    { CMPLX(-0.17,-1.41), CMPLX(+3.31,-0.15), CMPLX(-0.15,+1.34), CMPLX(+1.29,+1.38) },
    { CMPLX(-3.29,-2.39), CMPLX(-1.91,+4.42), CMPLX(-0.14,-1.35), CMPLX(+1.72,+1.35) },
    { CMPLX(+2.41,+0.39), CMPLX(-0.56,+1.47), CMPLX(-0.83,-0.69), CMPLX(-1.96,+0.67) }
  };
  /* Operand of computation: right-hand side matrix, row-major order. */
  double complex	B[N][LDB] = {
    { CMPLX(+26.26,+51.78) },
    { CMPLX( +6.43, -8.68) },
    { CMPLX( -5.75,+25.31) },
    { CMPLX( +1.16, +2.57) }
  };
  /* Result of computation: permuted matrix A decomposed in LU. */
  double complex	packedLU[N][N];
  /* Result of computation: unknowns. */
  double complex	X[N][LDB];
  /* Result of computation: tuple  of partial pivot indexes representing
     the permutation matrix. */
  lapack_int	ipiv[N];
  /* Result of computation: error code, zero if success. */
  lapack_int	info;

  /* Expected result of computation, row-major order, non-permuted. */
  double complex	expected_X[N][LDB] = {
    { CMPLX(+1.0000,+1.0000) },
    { CMPLX(+2.0000,-3.0000) },
    { CMPLX(-4.0000,-5.0000) },
    { CMPLX(-0.0000,+6.0000) }
  };

  /* Data needed to reconstruct A from the results. */
  int			perms[N];	/* permutations vector */
  int			P[N][N];	/* permutation matrix */
  double complex	L[N][N];	/* lower triangular matrix */
  double complex	U[N][N];	/* upper triangular matrix */
  double complex	R[N][N];	/* R = LU */
  double complex	reconstructed_A[N][N];	/* reconstructed_A = PR = PLU */

  /* Load the original  coefficients matrix from A to  packedLU.  The LU
     factorisation  result  of  zgesv()  will  be  stored  in  packedLU,
     overwriting it. */
  memcpy(packedLU, A, sizeof(double complex) * N * N);
  /* Load  the right-hand  side from  B to  X.  The  unknowns result  of
     zgesv() will be stored in X, overwriting it. */
  memcpy(X, B, sizeof(double complex) * N * NRHS);

  /* Do it. */
  info	= LAPACKE_zgesv(LAPACK_ROW_MAJOR, N, NRHS,
			&packedLU[0][0], LDA,
			&ipiv[0],
			&X[0][0], LDB);

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Reconstructing A from the results. */
  {
    row_major_permutation_matrix_from_ipiv (N, N, ipiv, perms, P);
    complex_row_major_split_LU(N, packedLU, L, U);

    /* Multiply L and U to verify that  the result is indeed PA; we need
     * CBLAS for this.  In general ZGEMM does:
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
     * file  "zgemm.f"  for the  documentation  of  the parameters;  the
     * prototype of "cblas_zgemm()" is:
     *
     *    void cblas_zgemm(const enum CBLAS_ORDER Order,
     *                     const enum CBLAS_TRANSPOSE TransA,
     *                     const enum CBLAS_TRANSPOSE TransB,
     *                     const int M, const int N, const int K,
     *                     const void *alpha,
     *                     const void *A, const int lda,
     *                     const void *B, const int ldb,
     *                     const void *beta,
     *                     void *C, const int ldc);
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
      double complex	alpha = CMPLX(1.0,0.0);
      double complex	beta  = CMPLX(0.0,0.0);
      cblas_zgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
		  N, N, N,
		  &alpha, &L[0][0], LDA, &U[0][0], LDA, &beta, &R[0][0], LDA);
    }
    complex_row_major_apply_permutation_matrix(N, N, P, R, reconstructed_A);
  }

  printf("Other numbers, row-major zgesv results:\n");

  /* Result verification. */
  {
    compare_complex_row_major_result_and_expected_result("computed unknowns",
							 N, NRHS, X, expected_X);
    compare_complex_row_major_result_and_expected_result("reconstructed A",
							 N, N, reconstructed_A, A);
  }

  /* Results logging. */
  {
    print_complex_row_major_matrix("X, resulting unknowns", N, NRHS, X);
    print_complex_row_major_matrix("A, original coefficient matrix", N, N, A);
    print_complex_row_major_matrix("B, original right-hand sides", N, NRHS, B);
    print_partial_pivoting_vector_and_permutation_matrix_LU(N, N, ipiv);
    print_complex_row_major_matrix("packedLU representing L and U packed in single matrix",
				   N, N, packedLU);
    print_complex_row_major_matrix("L, elements of packedLU", N, N, L);
    print_complex_row_major_matrix("U, elements of packedLU", N, N, U);
    print_complex_row_major_matrix("R = LU, it must be such that A = PR", N, N, R);
    print_complex_row_major_matrix("reconstructed_A = PR = PLU, it must be such that A = reconstructed_A",
				   N, N, reconstructed_A);
  }
}

/* end of file */
