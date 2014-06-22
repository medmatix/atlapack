/* This test program is built from  examples from the Net.  See both the
 * manual page  for the Fortran  routine zgetrf(3) and the  prototype of
 * the C function "LAPACKE_zgetrf()" in the header file "lapacke.h"; see
 * also  the  manual  page  zgemm(3),  which  is  installed  along  with
 * ATLAPACK, which documents the BLAS  routine ZGEMM and the header file
 * "cblas.h" for the prototype of "cblas_zgemm()".
 *
 * For an overview of the operations see the test program "dgetrf.c".
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
			       const int Anrows, const int Ancols,
			       double complex A[Anrows][Ancols],
			       double complex packedLU[Anrows][Ancols]);
static void doit_in_col_major (const char * description,
			       const int Anrows, const int Ancols,
			       double complex A[Ancols][Anrows],
			       double complex packedLU[Ancols][Anrows]);


int
main (int argc, const char *const argv[])
{
  { /* square matrix */
    double complex	row_major_A[3][3] = {
      { CMPLX(10.0,0.1), CMPLX(1.0,0.1), CMPLX(2.0,0.1) },
      {  CMPLX(3.0,0.1), CMPLX(4.0,0.1), CMPLX(5.0,0.1) },
      {  CMPLX(6.0,0.1), CMPLX(7.0,0.1), CMPLX(8.0,0.1) }
    };
    double complex	col_major_A[3][3];
    double complex	row_major_packedLU[3][3];
    double complex	col_major_packedLU[3][3];

    if (1) {
      doit_in_row_major("square matrix", 3, 3, row_major_A, row_major_packedLU);
    }

    if (1) {
      complex_row_major_matrix_transpose (3, 3, col_major_A, row_major_A);
      doit_in_col_major("square matrix", 3, 3, col_major_A, col_major_packedLU);
    }

    if (1) {
      printf("Square matrices results:\n");
      print_complex_row_major_matrix("row-major packedLU", 3, 3, row_major_packedLU);
      print_complex_col_major_matrix("col-major packedLU", 3, 3, col_major_packedLU);
      complex_col_major_matrix_transpose (3, 3, col_major_packedLU, col_major_packedLU);
      compare_complex_row_major_result_and_expected_result("row-major and col-major packedLU transposed",
							   3, 3, row_major_packedLU, col_major_packedLU);
    }
  }

  if (1) { /* more rows than columns */
    double complex	row_major_A[6][4] = {
      { CMPLX(+2.27,0.1), CMPLX(-1.54,0.1), CMPLX(+1.15,0.1), CMPLX(-1.94,0.1) },
      { CMPLX(+0.28,0.1), CMPLX(-1.67,0.1), CMPLX(+0.94,0.1), CMPLX(-0.78,0.1) },
      { CMPLX(-0.48,0.1), CMPLX(-3.09,0.1), CMPLX(+0.99,0.1), CMPLX(-0.21,0.1) },
      { CMPLX(+1.07,0.1), CMPLX(+1.22,0.1), CMPLX(+0.79,0.1), CMPLX(+0.63,0.1) },
      { CMPLX(-2.35,0.1), CMPLX(+2.93,0.1), CMPLX(-1.45,0.1), CMPLX(+2.30,0.1) },
      { CMPLX(+0.62,0.1), CMPLX(-7.39,0.1), CMPLX(+1.03,0.1), CMPLX(-2.57,0.1) }
    };
    double complex	col_major_A[4][6];
    double complex	row_major_packedLU[6][4];
    double complex	col_major_packedLU[4][6];
    double complex	col_major_packedLU_transposed[6][4];

    if (1) {
      doit_in_row_major("more rows than columns", 6, 4, row_major_A, row_major_packedLU);
    }

    if (1) { /* Column-major, square matrix. */
      complex_row_major_matrix_transpose (6, 4, col_major_A, row_major_A);
      doit_in_col_major("more rows than columns", 6, 4, col_major_A, col_major_packedLU);
    }

    if (1) {
      printf("More rows than columns matrices results:\n");
      print_complex_row_major_matrix("row-major packedLU", 6, 4, row_major_packedLU);
      print_complex_col_major_matrix("col-major packedLU", 6, 4, col_major_packedLU);
      complex_col_major_matrix_transpose (6, 4, col_major_packedLU_transposed, col_major_packedLU);
      print_complex_row_major_matrix("col-major packedLU transposed", 6, 4, col_major_packedLU_transposed);
      compare_complex_row_major_result_and_expected_result("row-major and col-major packedLU transposed",
							   6, 4, row_major_packedLU,
							   col_major_packedLU_transposed);
    }
  }

  if (1) { /* more columns than rows */
    double complex	row_major_A[4][6] = {
      { CMPLX(+1.1,0.1), CMPLX(+1.2,0.1), CMPLX(+1.3,0.1), CMPLX(+1.4,0.1), CMPLX(+1.5,0.1), CMPLX(+1.6,0.1) },
      { CMPLX(+2.1,0.1), CMPLX(+2.2,0.1), CMPLX(+2.3,0.1), CMPLX(+2.4,0.1), CMPLX(+2.5,0.1), CMPLX(+2.6,0.1) },
      { CMPLX(+3.1,0.1), CMPLX(+3.2,0.1), CMPLX(+3.3,0.1), CMPLX(+3.4,0.1), CMPLX(+3.5,0.1), CMPLX(+3.6,0.1) },
      { CMPLX(+4.1,0.1), CMPLX(+4.2,0.1), CMPLX(+4.3,0.1), CMPLX(+4.4,0.1), CMPLX(+4.5,0.1), CMPLX(+4.6,0.1) }
    };
    double complex	col_major_A[6][4];
    double complex	row_major_packedLU[4][6];
    double complex	col_major_packedLU[6][4];
    double complex	col_major_packedLU_transposed[4][6];

    if (1) {
      doit_in_row_major("more columns than rows", 4, 6, row_major_A, row_major_packedLU);
    }

    if (1) { /* Column-major, square matrix. */
      complex_row_major_matrix_transpose (4, 6, col_major_A, row_major_A);
      doit_in_col_major("more columns than rows", 4, 6, col_major_A, col_major_packedLU);
    }

    if (1) {
      printf("More columns than rows matrices results:\n");
      print_complex_row_major_matrix("row-major packedLU", 4, 6, row_major_packedLU);
      print_complex_col_major_matrix("col-major packedLU", 4, 6, col_major_packedLU);
      complex_col_major_matrix_transpose (4, 6, col_major_packedLU_transposed, col_major_packedLU);
      print_complex_row_major_matrix("col-major packedLU transposed", 4, 6, col_major_packedLU_transposed);
      compare_complex_row_major_result_and_expected_result("row-major and col-major packedLU transposed",
							   4, 6, row_major_packedLU,
							   col_major_packedLU_transposed);
    }
  }

  exit(exit_code);
}


void
doit_in_row_major (const char * description,
		   const int Anrows, const int Ancols,
		   double complex A[Anrows][Ancols],
		   double complex packedLU[Anrows][Ancols])
{
  lapack_int	ldA		= Ancols;		/* leading dimension of A */

  /* Lower-triangular factor L. */
  lapack_int	Lnrows		= Anrows;
  lapack_int	Lncols		= MIN(Anrows,Ancols);
  lapack_int	ldL		= Lncols;
  double complex	L[Lnrows][Lncols];

  /* Upper-triangular factor U. */
  lapack_int	Unrows		= MIN(Anrows,Ancols);
  lapack_int	Uncols		= Ancols;
  lapack_int	ldU		= Uncols;
  double complex	U[Unrows][Uncols];

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
  double complex	A1[Anrows][Ancols];

  /* Data  needed  to  reconstruct   A  from  the  results:  permutation
     matrix. */
  int		P[Anrows][Anrows];

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
     factorisation  result  of  zgetrf()  will  be  stored  in  packedLU,
     overwriting it. */
  memcpy(packedLU, A, sizeof(double complex) * Anrows * Ancols);

  /* Do it. */
  info	= LAPACKE_zgetrf(LAPACK_ROW_MAJOR, Anrows, Ancols, MREF(packedLU), ldA, VREF(ipiv));

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Reconstruct A from the results. */
  {
    row_major_PLU_permutation_matrix_from_ipiv (Anrows, Ancols, ipiv, perms, P);
    complex_row_major_split_LU(Anrows, Ancols, MIN(Anrows, Ancols), packedLU, L, U);
    /* Multiply L and U to verify that  the result is indeed PA; we need
     * CBLAS for this.  In general ZGEMM does:
     *
     *   \alpha A B + \beta C
     *
     * where  A, B  and C  are matrices.   We need  to inspect  both the
     * header  file "cblas.h"  and  the source  file  "zgemm.f" for  the
     * documentation of the parameters; the prototype of "cblas_zgemm()"
     * is:
     *
     *    void cblas_zgemm(const enum CBLAS_ORDER Order,
     *                     const enum CBLAS_TRANSPOSE TransA,
     *                     const enum CBLAS_TRANSPOSE TransB,
     *                     const int M, const int N, const int K,
     *                     const void *alpha,
     *                     const void *A, const int lda,
     *                     const void *B, const int ldb,
     *                     const void *beta,
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
      double complex	alpha = CMPLX(1.0,0.0);
      double complex	beta  = CMPLX(0.0,0.0);
      cblas_zgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
		  Anrows, Ancols, Lncols,
		  &alpha, MREF(L), ldL, MREF(U), ldU, &beta, MREF(A1), ldA1);
      complex_row_major_apply_ipiv (Anrows, Ancols, ipiv, BACKWARD_IPIV_APPLICATION,
				    reconstructed_A_ipiv, A1);
      complex_row_major_apply_permutation_matrix (Anrows, Ancols, reconstructed_A_P, P, A1);
    }
  }

  printf("Row-major ZGETRF results, %s:\n", description);

  /* Result verification. */
  if (1) {
    compare_complex_row_major_result_and_expected_result("reconstructed A with IPIV application",
							 Anrows, Ancols, reconstructed_A_ipiv, A);
    compare_complex_row_major_result_and_expected_result("reconstructed A with P application",
							 Anrows, Ancols, reconstructed_A_P, A);
  }

  /* Results logging. */
  {
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
		   const int Anrows, const int Ancols,
		   double complex A[Ancols][Anrows],
		   double complex packedLU[Ancols][Anrows])
{
  lapack_int	ldA		= Anrows;		/* leading dimension of A */

  /* Lower-triangular factor L. */
  lapack_int	Lnrows		= Anrows;
  lapack_int	Lncols		= MIN(Anrows,Ancols);
  lapack_int	ldL		= Lnrows;
  double complex	L[Lncols][Lnrows];

  /* Upper-triangular factor U. */
  lapack_int	Unrows		= MIN(Anrows,Ancols);
  lapack_int	Uncols		= Ancols;
  lapack_int	ldU		= Unrows;
  double complex	U[Uncols][Unrows];

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
  double complex	A1[Ancols][Anrows];

  /* Data  needed  to  reconstruct   A  from  the  results:  permutation
     matrix. */
  int		P[Anrows][Anrows];

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
     factorisation  result  of  zgetrf()  will  be  stored  in  packedLU,
     overwriting it. */
  memcpy(packedLU, A, sizeof(double complex) * Anrows * Ancols);

  /* Do it. */
  info	= LAPACKE_zgetrf(LAPACK_COL_MAJOR, Anrows, Ancols, MREF(packedLU), ldA, VREF(ipiv));

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with col-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Reconstruct A from the results. */
  {
    col_major_PLU_permutation_matrix_from_ipiv (Anrows, Ancols, ipiv, perms, P);
    complex_col_major_split_LU(Anrows, Ancols, MIN(Anrows, Ancols), packedLU, L, U);

    /* Multiply L and U to verify that  the result is indeed PA; we need
     * CBLAS for this.  In general ZGEMM does:
     *
     *   \alpha A B + \beta C
     *
     * where  A, B  and C  are matrices.   We need  to inspect  both the
     * header  file "cblas.h"  and  the source  file  "zgemm.f" for  the
     * documentation of the parameters; the prototype of "cblas_zgemm()"
     * is:
     *
     *    void cblas_zgemm(const enum CBLAS_ORDER Order,
     *                     const enum CBLAS_TRANSPOSE TransA,
     *                     const enum CBLAS_TRANSPOSE TransB,
     *                     const int M, const int N, const int K,
     *                     const void *alpha,
     *                     const void *A, const int lda,
     *                     const void *B, const int ldb,
     *                     const void *beta,
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
      double complex	alpha = CMPLX(1.0,0.0);
      double complex	beta  = CMPLX(0.0,0.0);
      cblas_zgemm(CblasColMajor, CblasNoTrans, CblasNoTrans,
		  Anrows, Ancols, Lncols,
		  &alpha, MREF(L), ldL, MREF(U), ldU, &beta, MREF(A1), ldA1);
      complex_col_major_apply_ipiv (Anrows, Ancols, ipiv, BACKWARD_IPIV_APPLICATION,
				    reconstructed_A_ipiv, A1);
      complex_col_major_apply_permutation_matrix (Anrows, Ancols, reconstructed_A_P, P, A1);
    }
  }

  printf("Column-major ZGETRF results, %s:\n", description);

  /* Result verification. */
  if (1) {
    compare_complex_col_major_result_and_expected_result("reconstructed A with IPIV application",
							 Anrows, Ancols, reconstructed_A_ipiv, A);
    compare_complex_col_major_result_and_expected_result("reconstructed A with P application",
							 Anrows, Ancols, reconstructed_A_P, A);
  }

  /* Results logging. */
  {
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
