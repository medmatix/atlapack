/* This test program is built from  examples from the Net.  See both the
 * manual page for the Fortran routine zgesv(3) and the prototype of the
 * C function "LAPACKE_zgesv()" in the header file "lapacke.h"; see also
 * the manual  page zgemm(3),  which is  installed along  with ATLAPACK,
 * which documents the BLAS routine  ZGEMM and the header file "cblas.h"
 * for the prototype of "cblas_zgemm()".
 *
 * For a  discussion of  the operations  see the  test program  for real
 * values matrices, "dgesv.c".
 */


/** --------------------------------------------------------------------
 ** Headers.
 ** ----------------------------------------------------------------- */

#include <stdio.h>
#include <cblas.h>
#include <lapacke.h>
#include <math.h>
#include "atlapack-test-utils.h"

static void doit_in_row_major (const char * description,
			       const int N, const int NRHS,
			       double complex A[N][N],
			       double complex X[N][NRHS],
			       double complex B[N][NRHS],
			       double complex expected_X[N][NRHS]);
static void doit_in_col_major (const char * description,
			       const int N, const int NRHS,
			       double complex A[N][N],
			       double complex X[NRHS][N],
			       double complex B[NRHS][N],
			       double complex expected_X[NRHS][N]);


int
main (int argc, const char *const argv[])
{
  { /* row major, small matrix */
    double complex	A[3][3] = {
      { CMPLX(10.0,0.0), CMPLX(1.0,0.0), CMPLX(2.0,0.0) },
      {  CMPLX(3.0,0.0), CMPLX(4.0,0.0), CMPLX(5.0,0.0) },
      {  CMPLX(6.0,0.0), CMPLX(7.0,0.0), CMPLX(8.0,0.0) }
    };
    double complex	X[3][1];
    double complex	B[3][1] = {
      { CMPLX(9.0,0.0) },
      { CMPLX(8.0,0.0) },
      { CMPLX(7.0,0.0) }
    };
    double complex	expected_X[3][1] = {
      {       CMPLX(0.0,0.0) },
      { CMPLX(-29.0/3.0,0.0) },
      { CMPLX(+28.0/3.0,0.0) }
    };
    doit_in_row_major ("small matrix", 3, 1, A, X, B, expected_X);
  }

  { /* col major, small matrix */
    double complex	A[3][3] = {
      { CMPLX(10.0,0.0), CMPLX(3.0,0.0), CMPLX(6.0,0.0) },
      {  CMPLX(1.0,0.0), CMPLX(4.0,0.0), CMPLX(7.0,0.0) },
      {  CMPLX(2.0,0.0), CMPLX(5.0,0.0), CMPLX(8.0,0.0) }
    };
    double complex	X[1][3];
    double complex	B[1][3] = {
      { CMPLX(9.0,0.0), CMPLX(8.0,0.0), CMPLX(7.0,0.0) }
    };
    double complex	expected_X[1][3] = {
      { CMPLX(0.0,0.0), CMPLX(-29.0/3.0,0.0), CMPLX(+28.0/3.0,0.0) }
    };
    doit_in_col_major ("small matrix", 3, 1, A, X, B, expected_X);
  }

  { /* row major, big matrix */
    double complex	A[4][4] = {
      { CMPLX(+1.80,0.0), CMPLX(+2.88,0.0), CMPLX(+2.05,0.0), CMPLX(-0.89,0.0) },
      { CMPLX(+5.25,0.0), CMPLX(-2.95,0.0), CMPLX(-0.95,0.0), CMPLX(-3.80,0.0) },
      { CMPLX(+1.58,0.0), CMPLX(-2.69,0.0), CMPLX(-2.90,0.0), CMPLX(-1.04,0.0) },
      { CMPLX(-1.11,0.0), CMPLX(-0.66,0.0), CMPLX(-0.59,0.0), CMPLX(+0.80,0.0) }
    };
    double complex	X[4][1];
    double complex	B[4][1] = {
      {  CMPLX(+9.52,0.0) },
      { CMPLX(+24.35,0.0) },
      {  CMPLX(+0.77,0.0) },
      {  CMPLX(-6.22,0.0) }
    };
    double complex	expected_X[4][1] = {
      { CMPLX(+1.0,0.0) },
      { CMPLX(-1.0,0.0) },
      { CMPLX(+3.0,0.0) },
      { CMPLX(-5.0,0.0) }
    };
    doit_in_row_major ("big matrix", 4, 1, A, X, B, expected_X);
  }

  exit(exit_code);
}


void
doit_in_row_major (const char * description,
		   const int N, const int NRHS,
		   double complex A[N][N],
		   double complex X[N][NRHS],
		   double complex B[N][NRHS],
		   double complex expected_X[N][NRHS])
{
  lapack_int	Anrows	= N;
  lapack_int	Ancols	= N;
  lapack_int	ldA	= N;	/* leading dimension of A */
  lapack_int	ldB	= NRHS;	/* leading dimensino of B */

  /* Result of computation: permuted matrix A decomposed in LU. */
  double complex	packedLU[Anrows][Ancols];


  /* Result of computation: tuple  of partial pivot indexes representing
     the permutation matrix. */
  lapack_int	ipiv_dim = MIN(Anrows, Ancols);
  lapack_int	ipiv[ipiv_dim];

  /* Result of computation: error code, zero if success. */
  lapack_int	info;

  /* Data  needed  to  reconstruct   A  from  the  results:  permutation
     vector. */
  int		perms[Anrows];

  /* Data needed to reconstruct A  from the results: permutation matrix,
     such that A = PLU. */
  int		Pnrows = Anrows;
  int		Pncols = Anrows;
  int		P[Pnrows][Pncols];

  /* Lower-triangular factor L. */
  lapack_int		Lnrows		= Anrows;
  lapack_int		Lncols		= MIN(Anrows,Ancols);
  lapack_int		ldL		= Lncols;
  double complex	L[Lnrows][Lncols];

  /* Upper-triangular factor U. */
  lapack_int		Unrows		= MIN(Anrows,Ancols);
  lapack_int		Uncols		= Ancols;
  lapack_int		ldU		= Uncols;
  double complex	U[Unrows][Uncols];

  /* Data needed  to reconstruct A  from the  results: product A1  = LU,
     such that A = P A1. */
  double complex	A1[Anrows][Ancols];

  /* Data needed to reconstruct A from the results:
   *
   *     reconstructed_A_ipiv = P A1 = PLU
   *
   * reconstructed by applying IPIV to A1 backwards.
   */
  double complex	reconstructed_A_ipiv[Anrows][Ancols];

  /* Data needed to reconstruct A from the results:
   *
   *     reconstructed_A_P = P A1 = PLU
   *
   * reconstructed by left-multiplying A1 by the permutations matrix P.
   */
  double complex	reconstructed_A_P[Anrows][Ancols];

  /* Load the original  coefficients matrix from A to  packedLU.  The LU
     factorisation  result  of  zgesv()  will  be  stored  in  packedLU,
     overwriting it. */
  memcpy(packedLU, A, sizeof(double complex) * Anrows * Ancols);

  /* Load  the right-hand  side from  B to  X.  The  unknowns result  of
     zgesv() will be stored in X, overwriting it. */
  memcpy(X, B, sizeof(double complex) * N * NRHS);

  /* Do it. */
  info	= LAPACKE_zgesv(LAPACK_ROW_MAJOR, N, NRHS,
			MREF(packedLU), ldA, VREF(ipiv), MREF(X), ldB);

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Reconstructing A from the results. */
  {
    row_major_PLU_permutation_matrix_from_ipiv (Anrows, Ancols, ipiv, perms, P);
    complex_row_major_split_LU(Anrows, Ancols, MIN(Anrows, Ancols), packedLU, L, U);

    /* Multiply L and U to verify that  the result is indeed PA; we need
     * CBLAS for this.  In general ZGEMM does:
     *
     *   \alpha A B + \beta C
     *
     * where  A, B  and C  are matrices.   We need  to inspect  both the
     * header  file "cblas.h"  and  the source  file  "dgemm.f" for  the
     * documentation of the parameters; the prototype of "cblas_zgemm()"
     * is:
     *
     *    void cblas_zgemm(const enum CBLAS_ORDER Order,
     *                     const enum CBLAS_TRANSPOSE TransA,
     *                     const enum CBLAS_TRANSPOSE TransB,
     *                     const int M, const int N, const int K,
     *                     const void * alpha,
     *                     const void * A, const int lda,
     *                     const void * B, const int ldb,
     *                     const void * beta,
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
     *
     * Here we want to do:
     *
     *   A1 = 1.0 L U + 0 A1
     *
     * where A1 is  a matrix whose contents at input  are not important,
     * and whose contents at output are the result of the operation.
     */
    {
      double complex	alpha = CMPLX(1.0,0.0);
      double complex	beta  = CMPLX(0.0,0.0);
      cblas_zgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
		  Anrows, Ancols, Lncols,
		  &alpha, MREF(L), ldL, MREF(U), ldU, &beta, MREF(A1), ldA);
      complex_row_major_apply_ipiv (Anrows, Ancols, ipiv, BACKWARD_IPIV_APPLICATION,
				    reconstructed_A_ipiv, A1);
      complex_row_major_apply_permutation_matrix (Anrows, Ancols, reconstructed_A_P, P, A1);
    }
  }

  printf("Row-major zgesv results, %s:\n", description);

  /* Result verification. */
  {
    compare_complex_row_major_result_and_expected_result("computed unknowns",
							 N, NRHS, X, expected_X);
    compare_complex_row_major_result_and_expected_result("reconstructed A with IPIV application",
							 Anrows, Ancols, reconstructed_A_ipiv, A);
    compare_complex_row_major_result_and_expected_result("reconstructed A with P application",
							 Anrows, Ancols, reconstructed_A_P, A);
  }

  /* Results logging. */
  {
    print_complex_row_major_matrix("X, resulting unknowns", N, NRHS, X);
    print_complex_row_major_matrix("A, original coefficient matrix", Anrows, Ancols, A);
    print_row_major_PLU_partial_pivoting_vectors_and_matrix (Anrows, Ancols, ipiv, perms, P);
    print_complex_row_major_matrix("packedLU representing L and U packed in single matrix",
				   Anrows, Ancols, packedLU);
    print_complex_row_major_matrix("L, elements of packedLU", Lnrows, Lncols, L);
    print_complex_row_major_matrix("U, elements of packedLU", Unrows, Uncols, U);
    print_complex_row_major_matrix("A1 = LU, it must be such that A = PR", Anrows, Ancols, A1);
    print_complex_row_major_matrix("reconstructed_A_ipiv = PA1 = PLU, it must be such that A = reconstructed_A",
				   Anrows, Ancols, reconstructed_A_ipiv);
    print_complex_row_major_matrix("reconstructed_A_P = PA1 = PLU, it must be such that A = reconstructed_A",
				   Anrows, Ancols, reconstructed_A_P);
  }
}


void
doit_in_col_major (const char * description,
		   const int N, const int NRHS,
		   double complex A[N][N],
		   double complex X[NRHS][N],
		   double complex B[NRHS][N],
		   double complex expected_X[NRHS][N])
{
  lapack_int	Anrows	= N;
  lapack_int	Ancols	= N;
  lapack_int	ldA	= Anrows;	/* leading dimension of A */
  lapack_int	ldB	= N;		/* leading dimension of B */

  /* Result of computation: permuted matrix A decomposed in LU. */
  double complex	packedLU[Ancols][Anrows];


  /* Result of computation: tuple  of partial pivot indexes representing
     the permutation matrix. */
  lapack_int	ipiv_dim = MIN(Anrows, Ancols);
  lapack_int	ipiv[ipiv_dim];

  /* Result of computation: error code, zero if success. */
  lapack_int	info;

  /* Data  needed  to  reconstruct   A  from  the  results:  permutation
     vector. */
  int		perms[Anrows];

  /* Data needed to reconstruct A  from the results: permutation matrix,
     such that A = PLU. */
  int		Pnrows = Anrows;
  int		Pncols = Anrows;
  int		P[Pncols][Pnrows];

  /* Lower-triangular factor L. */
  lapack_int		Lnrows		= Anrows;
  lapack_int		Lncols		= MIN(Anrows,Ancols);
  lapack_int		ldL		= Lncols;
  double complex	L[Lncols][Lnrows];

  /* Upper-triangular factor U. */
  lapack_int		Unrows		= MIN(Anrows,Ancols);
  lapack_int		Uncols		= Ancols;
  lapack_int		ldU		= Uncols;
  double complex	U[Uncols][Unrows];

  /* Data needed  to reconstruct A  from the  results: product A1  = LU,
     such that A = P A1. */
  double complex	A1[Ancols][Anrows];

  /* Data needed to reconstruct A from the results:
   *
   *     reconstructed_A_ipiv = P A1 = PLU
   *
   * reconstructed by applying IPIV to A1 backwards.
   */
  double complex	reconstructed_A_ipiv[Ancols][Anrows];

  /* Data needed to reconstruct A from the results:
   *
   *     reconstructed_A_P = P A1 = PLU
   *
   * reconstructed by left-multiplying A1 by the permutations matrix P.
   */
  double complex	reconstructed_A_P[Ancols][Anrows];

  /* Load the original  coefficients matrix from A to  packedLU.  The LU
     factorisation  result  of  zgesv()  will  be  stored  in  packedLU,
     overwriting it. */
  memcpy(packedLU, A, sizeof(double complex) * Anrows * Ancols);

  /* Load  the right-hand  side from  B to  X.  The  unknowns result  of
     zgesv() will be stored in X, overwriting it. */
  memcpy(X, B, sizeof(double complex) * N * NRHS);

  /* Do it. */
  info	= LAPACKE_zgesv(LAPACK_COL_MAJOR, N, NRHS,
			MREF(packedLU), ldA, VREF(ipiv), MREF(X), ldB);

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Reconstructing A from the results. */
  {
    col_major_PLU_permutation_matrix_from_ipiv (Anrows, Ancols, ipiv, perms, P);
    complex_col_major_split_LU(Anrows, Ancols, MIN(Anrows, Ancols), packedLU, L, U);

    /* Multiply L and U to verify that  the result is indeed PA; we need
     * CBLAS for this.  In general DGEMM does:
     *
     *   \alpha A B + \beta C
     *
     * where  A, B  and C  are matrices.   We need  to inspect  both the
     * header  file "cblas.h"  and  the source  file  "dgemm.f" for  the
     * documentation of the parameters; the prototype of "cblas_dgemm()"
     * is:
     *
     *    void cblas_zgemm(const enum CBLAS_ORDER Order,
     *                     const enum CBLAS_TRANSPOSE TransA,
     *                     const enum CBLAS_TRANSPOSE TransB,
     *                     const int M, const int N, const int K,
     *                     const void * alpha,
     *                     const void * A, const int lda,
     *                     const void * B, const int ldb,
     *                     const void * beta,
     *                     void *C, const int ldc);
     *
     * In our  case all the matrices  are in col-major order  and we the
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
     *
     * Here we want to do:
     *
     *   A1 = 1.0 L U + 0 A1
     *
     * where A1 is  a matrix whose contents at input  are not important,
     * and whose contents at output are the result of the operation.
     */
    {
      double complex	alpha = CMPLX(1.0,0.0);
      double complex	beta  = CMPLX(0.0,0.0);
      cblas_zgemm(CblasColMajor, CblasNoTrans, CblasNoTrans,
		  Anrows, Ancols, Lncols,
		  &alpha, MREF(L), ldL, MREF(U), ldU, &beta, MREF(A1), ldA);
      complex_col_major_apply_ipiv (Anrows, Ancols, ipiv, BACKWARD_IPIV_APPLICATION,
				    reconstructed_A_ipiv, A1);
      complex_col_major_apply_permutation_matrix (Anrows, Ancols, reconstructed_A_P, P, A1);
    }
  }

  printf("Column-major zgesv results, %s:\n", description);

  /* Result verification. */
  {
    compare_complex_col_major_result_and_expected_result("computed unknowns",
							 N, NRHS, X, expected_X);
    compare_complex_col_major_result_and_expected_result("reconstructed A with IPIV application",
							 Anrows, Ancols, reconstructed_A_ipiv, A);
    compare_complex_col_major_result_and_expected_result("reconstructed A with P application",
							 Anrows, Ancols, reconstructed_A_P, A);
  }

  /* Results logging. */
  {
    print_complex_col_major_matrix("X, resulting unknowns", N, NRHS, X);
    print_complex_col_major_matrix("A, original coefficient matrix", Anrows, Ancols, A);
    print_col_major_PLU_partial_pivoting_vectors_and_matrix (Anrows, Ancols, ipiv, perms, P);
    print_complex_col_major_matrix("packedLU representing L and U packed in single matrix",
				   Anrows, Ancols, packedLU);
    print_complex_col_major_matrix("L, elements of packedLU", Lnrows, Lncols, L);
    print_complex_col_major_matrix("U, elements of packedLU", Unrows, Uncols, U);
    print_complex_col_major_matrix("A1 = LU, it must be such that A = PR", Anrows, Ancols, A1);
    print_complex_col_major_matrix("reconstructed_A_ipiv = PA1 = PLU, it must be such that A = reconstructed_A",
				   Anrows, Ancols, reconstructed_A_ipiv);
    print_complex_col_major_matrix("reconstructed_A_P = PA1 = PLU, it must be such that A = reconstructed_A",
				   Anrows, Ancols, reconstructed_A_P);
  }
}

/* end of file */
