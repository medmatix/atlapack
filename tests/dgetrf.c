/* This test program is built from  examples from the Net.  See both the
 * manual page  for the Fortran  routine dgetrf(3) and the  prototype of
 * the C function "LAPACKE_dgetrf()" in the header file "lapacke.h"; see
 * also  the  manual  page  dgemm(3),  which  is  installed  along  with
 * ATLAPACK, which documents the BLAS  routine DGEMM and the header file
 * "cblas.h" for the prototype of "cblas_dgemm()".
 *
 * Given the matrix:
 *
 *         -        -     -             -
 *        | 10  1  2 |   | a11  a12  a13 |
 *    A = |  3  4  5 | = | a21  a22  a23 |
 *        |  6  7  8 |   | a31  a32  a33 |
 *         -        -     -             -
 *
 * we want to compute its LU decomposition.
 *
 * How LAPACK's routine  DGETRF does it?  It factorises the  matrix A in
 * LU  form  with  partial  pivoting;  for an  introduction  to  the  LU
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
 * so that the matrix becomes:
 *
 *    A = P A' = P L U
 *
 * The resulting matrices L and U have elements:
 *
 *         -          -          -           -
 *        |  1   0   0 |        | u11 u12 u13 |
 *    L = | l21  1   0 |    U = |  0  u22 u23 |
 *        | l31 l32  1 |        |  0   0  u33 |
 *         -          -          -           -
 *
 * and DGETRF returns them in packed  form by mutating its argument A as
 * follows:
 *
 *         -           -
 *        | u11 u12 u13 |
 *    A = | l21 u22 u23 |
 *        | l31 l32 u33 |
 *         -           -
 *
 * The permutation matrix P is returned by DGETRF in its IPIV parameter.
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
			       const int Anrows, const int Ancols, double A[Anrows][Ancols],
			       double packedLU[Anrows][Ancols]);
static void doit_in_col_major (const char * description,
			       const int Anrows, const int Ancols, double A[Ancols][Anrows],
			       double packedLU[Ancols][Anrows]);


int
main (int argc, const char *const argv[])
{
  { /* square matrix */
    double	row_major_A[3][3] = {
      { 10.0, 1.0, 2.0 },
      {  3.0, 4.0, 5.0 },
      {  6.0, 7.0, 8.0 }
    };
    double	col_major_A[3][3];
    double	row_major_packedLU[3][3];
    double	col_major_packedLU[3][3];

    if (1) {
      doit_in_row_major("square matrix", 3, 3, row_major_A, row_major_packedLU);
    }

    if (1) {
      real_row_major_matrix_transpose (3, 3, col_major_A, row_major_A);
      doit_in_col_major("square matrix", 3, 3, col_major_A, col_major_packedLU);
    }

    if (1) {
      printf("Square matrices results:\n");
      print_real_row_major_matrix("row-major packedLU", 3, 3, row_major_packedLU);
      print_real_col_major_matrix("col-major packedLU", 3, 3, col_major_packedLU);
      real_col_major_matrix_transpose (3, 3, col_major_packedLU, col_major_packedLU);
      compare_real_row_major_result_and_expected_result("row-major and col-major packedLU transposed",
							3, 3, row_major_packedLU, col_major_packedLU);
    }
  }

  if (1) { /* more rows than columns */
    double	row_major_A[6][4] = {
      { +2.27, -1.54, +1.15, -1.94 },
      { +0.28, -1.67, +0.94, -0.78 },
      { -0.48, -3.09, +0.99, -0.21 },
      { +1.07, +1.22, +0.79, +0.63 },
      { -2.35, +2.93, -1.45, +2.30 },
      { +0.62, -7.39, +1.03, -2.57 }
    };
    double	col_major_A[4][6];
    double	row_major_packedLU[6][4];
    double	col_major_packedLU[4][6];
    double	col_major_packedLU_transposed[6][4];

    if (1) {
      doit_in_row_major("more rows than columns", 6, 4, row_major_A, row_major_packedLU);
    }

    if (1) { /* Column-major, square matrix. */
      real_row_major_matrix_transpose (6, 4, col_major_A, row_major_A);
      doit_in_col_major("more rows than columns", 6, 4, col_major_A, col_major_packedLU);
    }

    if (1) {
      printf("More rows than columns matrices results:\n");
      print_real_row_major_matrix("row-major packedLU", 6, 4, row_major_packedLU);
      print_real_col_major_matrix("col-major packedLU", 6, 4, col_major_packedLU);
      real_col_major_matrix_transpose (6, 4, col_major_packedLU_transposed, col_major_packedLU);
      print_real_row_major_matrix("col-major packedLU transposed", 6, 4, col_major_packedLU_transposed);
      compare_real_row_major_result_and_expected_result("row-major and col-major packedLU transposed",
							6, 4, row_major_packedLU,
							col_major_packedLU_transposed);
    }
  }

  if (1) { /* more columns than rows */
    double	row_major_A[4][6] = {
      { +1.1, +1.2, +1.3, +1.4, +1.5, +1.6 },
      { +2.1, +2.2, +2.3, +2.4, +2.5, +2.6 },
      { +3.1, +3.2, +3.3, +3.4, +3.5, +3.6 },
      { +4.1, +4.2, +4.3, +4.4, +4.5, +4.6 }
    };
    double	col_major_A[6][4];
    double	row_major_packedLU[4][6];
    double	col_major_packedLU[6][4];
    double	col_major_packedLU_transposed[4][6];

    if (1) {
      doit_in_row_major("more columns than rows", 4, 6, row_major_A, row_major_packedLU);
    }

    if (1) { /* Column-major, square matrix. */
      real_row_major_matrix_transpose (4, 6, col_major_A, row_major_A);
      doit_in_col_major("more columns than rows", 4, 6, col_major_A, col_major_packedLU);
    }

    if (1) {
      printf("More columns than rows matrices results:\n");
      print_real_row_major_matrix("row-major packedLU", 4, 6, row_major_packedLU);
      print_real_col_major_matrix("col-major packedLU", 4, 6, col_major_packedLU);
      real_col_major_matrix_transpose (4, 6, col_major_packedLU_transposed, col_major_packedLU);
      print_real_row_major_matrix("col-major packedLU transposed", 4, 6, col_major_packedLU_transposed);
      compare_real_row_major_result_and_expected_result("row-major and col-major packedLU transposed",
							4, 6, row_major_packedLU,
							col_major_packedLU_transposed);
    }
  }

  exit(exit_code);
}


void
doit_in_row_major (const char * description,
		   const int Anrows, const int Ancols, double A[Anrows][Ancols],
		   double packedLU[Anrows][Ancols])
{
  lapack_int	ldA		= Ancols;		/* leading dimension of A */

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

  /* Result of computation: tuple  of partial pivot indices representing
     the permutation matrix. */
  lapack_int	IPIV_DIM	= MIN(Anrows,Ancols);
  lapack_int	ipiv[IPIV_DIM];

  /* Result of computation: error code, zero if success. */
  lapack_int	info;

  /* Data  needed  to  reconstruct  A  from  the  results:  permutations
     vector. */
  int		perms[Anrows];

  /* Data needed to reconstruct A from the results: matrix A1 = LU. */
  lapack_int	ldA1		= ldA;
  double	A1[Anrows][Ancols];

  /* Data  needed  to  reconstruct   A  from  the  results:  permutation
     matrix. */
  int		P[Anrows][Anrows];

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
     factorisation  result  of  dgetrf()  will  be  stored  in  packedLU,
     overwriting it. */
  memcpy(packedLU, A, sizeof(double) * Anrows * Ancols);

  /* Do it. */
  info	= LAPACKE_dgetrf(LAPACK_ROW_MAJOR, Anrows, Ancols, MREF(packedLU), ldA, VREF(ipiv));

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Reconstruct A from the results. */
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
		  alpha, MREF(L), ldL, MREF(U), ldU, beta, MREF(A1), ldA1);
      real_row_major_apply_ipiv (Anrows, Ancols, ipiv, BACKWARD_IPIV_APPLICATION,
				 reconstructed_A_ipiv, A1);
      real_row_major_apply_permutation_matrix (Anrows, Ancols, reconstructed_A_P, P, A1);
    }
  }

  printf("Row-major dgetrf results, %s:\n", description);

  /* Result verification. */
  if (1) {
    compare_real_row_major_result_and_expected_result("reconstructed A with IPIV application",
						      Anrows, Ancols, reconstructed_A_ipiv, A);
    compare_real_row_major_result_and_expected_result("reconstructed A with P application",
						      Anrows, Ancols, reconstructed_A_P, A);
  }

  /* Results logging. */
  {
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
		   const int Anrows, const int Ancols, double A[Ancols][Anrows],
		   double packedLU[Ancols][Anrows])
{
  lapack_int	ldA		= Anrows;		/* leading dimension of A */

  /* Lower-triangular factor L. */
  lapack_int	Lnrows		= Anrows;
  lapack_int	Lncols		= MIN(Anrows,Ancols);
  lapack_int	ldL		= Lnrows;
  double	L[Lncols][Lnrows];

  /* Upper-triangular factor U. */
  lapack_int	Unrows		= MIN(Anrows,Ancols);
  lapack_int	Uncols		= Ancols;
  lapack_int	ldU		= Unrows;
  double	U[Uncols][Unrows];

  /* Result of computation: tuple  of partial pivot indices representing
     the permutation matrix. */
  lapack_int	IPIV_DIM	= MIN(Anrows,Ancols);
  lapack_int	ipiv[IPIV_DIM];

  /* Result of computation: error code, zero if success. */
  lapack_int	info;

  /* Data  needed  to  reconstruct  A  from  the  results:  permutations
     vector. */
  int		perms[Anrows];

  /* Data needed to reconstruct A from the results: matrix A1 = LU. */
  lapack_int	ldA1		= ldA;
  double	A1[Ancols][Anrows];

  /* Data  needed  to  reconstruct   A  from  the  results:  permutation
     matrix. */
  int		P[Anrows][Anrows];

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
     factorisation  result  of  dgetrf()  will  be  stored  in  packedLU,
     overwriting it. */
  memcpy(packedLU, A, sizeof(double) * Anrows * Ancols);

  /* Do it. */
  info	= LAPACKE_dgetrf(LAPACK_COL_MAJOR, Anrows, Ancols, MREF(packedLU), ldA, VREF(ipiv));

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Reconstruct A from the results. */
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
     * where R  is a matrix whose  contents at input are  not important,
     * and whose contents at output are the result of the operation.
     */
    if (1) {
      double	alpha = 1.0;
      double	beta  = 0.0;
      cblas_dgemm(CblasColMajor, CblasNoTrans, CblasNoTrans,
		  Anrows, Ancols, Lncols,
		  alpha, MREF(L), ldL, MREF(U), ldU, beta, MREF(A1), ldA1);
      real_col_major_apply_ipiv (Anrows, Ancols, ipiv, BACKWARD_IPIV_APPLICATION,
				 reconstructed_A_ipiv, A1);
      real_col_major_apply_permutation_matrix (Anrows, Ancols, reconstructed_A_P, P, A1);
    }
  }

  printf("Column-major dgetrf results, %s:\n", description);

  /* Result verification. */
  if (1) {
    compare_real_col_major_result_and_expected_result("reconstructed A with IPIV application",
						      Anrows, Ancols, reconstructed_A_ipiv, A);
    compare_real_col_major_result_and_expected_result("reconstructed A with P application",
						      Anrows, Ancols, reconstructed_A_P, A);
  }

  /* Results logging. */
  {
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
