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
 * then it factorises  A' in the product of a  lower-triangular matrix L
 * and an upper-triangular matrix U:
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

static void doit_in_row_major (const char * description,
			       const int N, const int NRHS,
			       double A[N][N], double X[N][NRHS], double B[N][NRHS],
			       double expected_X[N][NRHS]);
static void doit_in_col_major (const char * description,
			       const int N, const int NRHS,
			       double A[N][N], double X[NRHS][N], double B[NRHS][N],
			       double expected_X[NRHS][N]);


int
main (int argc, const char *const argv[])
{
  { /* row major, small matrix */
    double	A[3][3] = {
      { 10.0, 1.0, 2.0 },
      {  3.0, 4.0, 5.0 },
      {  6.0, 7.0, 8.0 }
    };
    double	X[3][1];
    double	B[3][1] = {
      { 9.0 },
      { 8.0 },
      { 7.0 }
    };
    double	expected_X[3][1] = {
      {   0.0     },
      { -29.0/3.0 },
      { +28.0/3.0 }
    };
    doit_in_row_major ("small matrix", 3, 1, A, X, B, expected_X);
  }

  { /* col major, small matrix */
    double	A[3][3] = {
      { 10.0, 3.0, 6.0 },
      {  1.0, 4.0, 7.0 },
      {  2.0, 5.0, 8.0 }
    };
    double	X[1][3];
    double	B[1][3] = {
      { 9.0, 8.0, 7.0 }
    };
    double	expected_X[1][3] = {
      { 0.0, -29.0/3.0, +28.0/3.0 }
    };
    doit_in_col_major ("small matrix", 3, 1, A, X, B, expected_X);
  }

  { /* row major, big matrix */
    double	A[4][4] = {
      { +1.80, +2.88, +2.05, -0.89 },
      { +5.25, -2.95, -0.95, -3.80 },
      { +1.58, -2.69, -2.90, -1.04 },
      { -1.11, -0.66, -0.59, +0.80 }
    };
    double	X[4][1];
    double	B[4][1] = {
      {  +9.52 },
      { +24.35 },
      {  +0.77 },
      {  -6.22 }
    };
    double	expected_X[4][1] = {
      { +1.0 },
      { -1.0 },
      { +3.0 },
      { -5.0 }
    };
    doit_in_row_major ("big matrix", 4, 1, A, X, B, expected_X);
  }

  exit(exit_code);
}


void
doit_in_row_major (const char * description,
		   const int N, const int NRHS,
		   double A[N][N], double X[N][NRHS], double B[N][NRHS],
		   double expected_X[N][NRHS])
{
  lapack_int	Anrows	= N;
  lapack_int	Ancols	= N;
  lapack_int	ldA	= N;	/* leading dimension of A */
  lapack_int	ldB	= NRHS;	/* leading dimensino of B */

  /* Result of computation: permuted matrix A decomposed in LU. */
  double	packedLU[Anrows][Ancols];


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
  lapack_int	Lnrows		= Anrows;
  lapack_int	Lncols		= MIN(Anrows,Ancols);
  lapack_int	ldL		= Lncols;
  double	L[Lnrows][Lncols];

  /* Upper-triangular factor U. */
  lapack_int	Unrows		= MIN(Anrows,Ancols);
  lapack_int	Uncols		= Ancols;
  lapack_int	ldU		= Uncols;
  double	U[Unrows][Uncols];

  /* Data needed  to reconstruct A  from the  results: product A1  = LU,
     such that A = P A1. */
  double	A1[Anrows][Ancols];

  /* Data needed to reconstruct A from the results:
   *
   *     reconstructed_A_ipiv = P A1 = PLU
   *
   * reconstructed by applying IPIV to A1 backwards.
   */
  double	reconstructed_A_ipiv[Anrows][Ancols];

  /* Data needed to reconstruct A from the results:
   *
   *     reconstructed_A_P = P A1 = PLU
   *
   * reconstructed by left-multiplying A1 by the permutations matrix P.
   */
  double	reconstructed_A_P[Anrows][Ancols];

  /* Load the original  coefficients matrix from A to  packedLU.  The LU
     factorisation  result  of  dgesv()  will  be  stored  in  packedLU,
     overwriting it. */
  memcpy(packedLU, A, sizeof(double) * Anrows * Ancols);

  /* Load  the right-hand  side from  B to  X.  The  unknowns result  of
     dgesv() will be stored in X, overwriting it. */
  memcpy(X, B, sizeof(double) * N * NRHS);

  /* Do it. */
  info	= LAPACKE_dgesv(LAPACK_ROW_MAJOR, N, NRHS,
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
    real_row_major_split_LU(Anrows, Ancols, MIN(Anrows, Ancols), packedLU, L, U);

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
     *
     * Here we want to do:
     *
     *   A1 = 1.0 L U + 0 A1
     *
     * where A1 is  a matrix whose contents at input  are not important,
     * and whose contents at output are the result of the operation.
     */
    {
      double	alpha = 1.0;
      double	beta  = 0.0;
      cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
		  Anrows, Ancols, Lncols,
		  alpha, MREF(L), ldL, MREF(U), ldU, beta, MREF(A1), ldA);
      real_row_major_apply_ipiv (Anrows, Ancols, ipiv, BACKWARD_IPIV_APPLICATION,
				 reconstructed_A_ipiv, A1);
      real_row_major_apply_permutation_matrix (Anrows, Ancols, reconstructed_A_P, P, A1);
    }
  }

  printf("Row-major dgesv results, %s:\n", description);

  /* Result verification. */
  {
    compare_real_row_major_result_and_expected_result("computed unknowns",
						      N, NRHS, X, expected_X);
    compare_real_row_major_result_and_expected_result("reconstructed A with IPIV application",
						      Anrows, Ancols, reconstructed_A_ipiv, A);
    compare_real_row_major_result_and_expected_result("reconstructed A with P application",
						      Anrows, Ancols, reconstructed_A_P, A);
  }

  /* Results logging. */
  {
    print_real_row_major_matrix("X, resulting unknowns", N, NRHS, X);
    print_real_row_major_matrix("A, original coefficient matrix", Anrows, Ancols, A);
    print_row_major_PLU_partial_pivoting_vectors_and_matrix (Anrows, Ancols, ipiv, perms, P);
    print_real_row_major_matrix("packedLU representing L and U packed in single matrix",
				Anrows, Ancols, packedLU);
    print_real_row_major_matrix("L, elements of packedLU", Lnrows, Lncols, L);
    print_real_row_major_matrix("U, elements of packedLU", Unrows, Uncols, U);
    print_real_row_major_matrix("A1 = LU, it must be such that A = PR", Anrows, Ancols, A1);
    print_real_row_major_matrix("reconstructed_A_ipiv = PA1 = PLU, it must be such that A = reconstructed_A",
				Anrows, Ancols, reconstructed_A_ipiv);
    print_real_row_major_matrix("reconstructed_A_P = PA1 = PLU, it must be such that A = reconstructed_A",
				Anrows, Ancols, reconstructed_A_P);
  }
}


void
doit_in_col_major (const char * description,
		   const int N, const int NRHS,
		   double A[N][N], double X[NRHS][N], double B[NRHS][N],
		   double expected_X[NRHS][N])
{
  lapack_int	Anrows	= N;
  lapack_int	Ancols	= N;
  lapack_int	ldA	= Anrows;	/* leading dimension of A */
  lapack_int	ldB	= N;		/* leading dimension of B */

  /* Result of computation: permuted matrix A decomposed in LU. */
  double	packedLU[Ancols][Anrows];


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
  lapack_int	Lnrows		= Anrows;
  lapack_int	Lncols		= MIN(Anrows,Ancols);
  lapack_int	ldL		= Lncols;
  double	L[Lncols][Lnrows];

  /* Upper-triangular factor U. */
  lapack_int	Unrows		= MIN(Anrows,Ancols);
  lapack_int	Uncols		= Ancols;
  lapack_int	ldU		= Uncols;
  double	U[Uncols][Unrows];

  /* Data needed  to reconstruct A  from the  results: product A1  = LU,
     such that A = P A1. */
  double	A1[Ancols][Anrows];

  /* Data needed to reconstruct A from the results:
   *
   *     reconstructed_A_ipiv = P A1 = PLU
   *
   * reconstructed by applying IPIV to A1 backwards.
   */
  double	reconstructed_A_ipiv[Ancols][Anrows];

  /* Data needed to reconstruct A from the results:
   *
   *     reconstructed_A_P = P A1 = PLU
   *
   * reconstructed by left-multiplying A1 by the permutations matrix P.
   */
  double	reconstructed_A_P[Ancols][Anrows];

  /* Load the original  coefficients matrix from A to  packedLU.  The LU
     factorisation  result  of  dgesv()  will  be  stored  in  packedLU,
     overwriting it. */
  memcpy(packedLU, A, sizeof(double) * Anrows * Ancols);

  /* Load  the right-hand  side from  B to  X.  The  unknowns result  of
     dgesv() will be stored in X, overwriting it. */
  memcpy(X, B, sizeof(double) * N * NRHS);

  /* Do it. */
  info	= LAPACKE_dgesv(LAPACK_COL_MAJOR, N, NRHS,
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
    real_col_major_split_LU(Anrows, Ancols, MIN(Anrows, Ancols), packedLU, L, U);

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
      double	alpha = 1.0;
      double	beta  = 0.0;
      cblas_dgemm(CblasColMajor, CblasNoTrans, CblasNoTrans,
		  Anrows, Ancols, Lncols,
		  alpha, MREF(L), ldL, MREF(U), ldU, beta, MREF(A1), ldA);
      real_col_major_apply_ipiv (Anrows, Ancols, ipiv, BACKWARD_IPIV_APPLICATION,
				 reconstructed_A_ipiv, A1);
      real_col_major_apply_permutation_matrix (Anrows, Ancols, reconstructed_A_P, P, A1);
    }
  }

  printf("Column-major dgesv results, %s:\n", description);

  /* Result verification. */
  {
    compare_real_col_major_result_and_expected_result("computed unknowns",
						      N, NRHS, X, expected_X);
    compare_real_col_major_result_and_expected_result("reconstructed A with IPIV application",
						      Anrows, Ancols, reconstructed_A_ipiv, A);
    compare_real_col_major_result_and_expected_result("reconstructed A with P application",
						      Anrows, Ancols, reconstructed_A_P, A);
  }

  /* Results logging. */
  {
    print_real_col_major_matrix("X, resulting unknowns", N, NRHS, X);
    print_real_col_major_matrix("A, original coefficient matrix", Anrows, Ancols, A);
    print_col_major_PLU_partial_pivoting_vectors_and_matrix (Anrows, Ancols, ipiv, perms, P);
    print_real_col_major_matrix("packedLU representing L and U packed in single matrix",
				Anrows, Ancols, packedLU);
    print_real_col_major_matrix("L, elements of packedLU", Lnrows, Lncols, L);
    print_real_col_major_matrix("U, elements of packedLU", Unrows, Uncols, U);
    print_real_col_major_matrix("A1 = LU, it must be such that A = PR", Anrows, Ancols, A1);
    print_real_col_major_matrix("reconstructed_A_ipiv = PA1 = PLU, it must be such that A = reconstructed_A",
				Anrows, Ancols, reconstructed_A_ipiv);
    print_real_col_major_matrix("reconstructed_A_P = PA1 = PLU, it must be such that A = reconstructed_A",
				Anrows, Ancols, reconstructed_A_P);
  }
}

/* end of file */
