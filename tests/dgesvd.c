/* This  test program  is  built  from examples  from  the Net.   Always
 * remember  that at  Netlib's site  there  are test  data, results  and
 * programs for all the routines in LAPACK:
 *
 *          <http://www.nag.co.uk/lapack-ex/lapack-ex.html>
 *
 * To understand this  test program see the manual page  for the Fortran
 * routine dgesvd(3), the prototype of the C function "LAPACKE_dgesvd()"
 * in the header file "lapacke.h" and (unfortunately) the source code of
 * the original routine "dgesvd.f".
 *
 * What do  we want to  do here?  Let's explain  it with a  small matrix
 * example; given the input matrix:
 *
 *         -       -     -        -
 *        | a11 a12 |   | 1.1 1.2 |
 *    A = | a21 a22 | = | 2.1 2.2 |
 *        | a31 a32 |   | 3.1 3.2 |
 *         -       -     -       -
 *
 * we want to compute a matrix  SIGMA, of elements sij, and the matrices
 * U and V such that:
 *
 *    A = U SIGMA V^T
 *
 * where V^T is the transposed of V; in table format:
 *
 *     -       -     -           -   -       -   -        -
 *    | a11 a12 |   | u11 u12 u13 | | s11  0  | | v11 v21 |
 *    | a21 a22 | = | u21 u22 u23 | |  0  s22 | | v12 v22 |
 *    | a31 a32 |   | u31 u32 u33 | |  0   0  |  -        -
 *     -       -     -           -   -       -
 *
 * in these equations: the elements s11  and s22 are the singular values
 * of the matrix A; the matrix U  is orthogonal and has, as columns, the
 * left  singular  vectors; the  matrix  V  is  orthogonal and  has,  as
 * columns, the right singular vectors.
 *
 * Notice that when looking at V^T,  transposed of V: the *rows* are the
 * right singular vectors.
 *
 * The routine DGESVD gives us the singular values in vector format as:
 *
 *         -   -     -         -
 *        | s11 |   | +5.634546 |
 *    S = | s22 | = | +0.043473 |
 *         -   -     -         -
 *
 * the matrix U:
 *
 *         -                             -
 *        | -0.288834 +0.865973 +0.408248 |
 *    U = | -0.539772 +0.204890 -0.816497 |
 *        | -0.790710 -0.456193 +0.408248 |
 *         -                             -
 *
 * and the matrix V^T as:
 *
 *          -                   -
 *         | -0.692591 -0.721330 |
 *    VT = | -0.721330 +0.692591 |
 *          -                   -
 *
 * In  addition  to such  results,  LAPACKE's  version of  DGESVD  makes
 * available an additional result: the vector superB.
 *
 * We  can easily  validate  the results  by  reconstructing the  matrix
 * SIGMA:
 *
 *             -                   -
 *            | +5.634546 +0.000000 |
 *    SIGMA = | +0.000000 +0.043473 |
 *            | +0.000000 +0.000000 |
 *             -                   -
 *
 * and then performing the 2 matrix  by matrix products to recompute the
 * original A:
 *
 *    U SIGMA V^T = A
 */


/** --------------------------------------------------------------------
 ** Headers.
 ** ----------------------------------------------------------------- */

#include <stdio.h>
#include <cblas.h>
#include <lapacke.h>
#include <math.h>
#include "atlapack-test-utils.h"

static void doit_with_small_matrix (void);
static void doit_with_netlib_test_data (void);


int
main (int argc, const char *const argv[])
{
  if (1)
    doit_with_small_matrix();
  if (1)
    doit_with_netlib_test_data();
  exit(EXIT_SUCCESS);
}


void
doit_with_small_matrix (void)
{
#undef matrix_order
#undef jobU
#undef jobVT
#undef M
#undef N
#undef ldA
#undef ldU
#undef ldVT
#define matrix_order	LAPACK_ROW_MAJOR
#define jobU		'A'	/* option: return all the M columns of U in the matrix U */
#define jobVT		'A'	/* option: return all the N rows of V^T in the matrix VT */
#define M		3	/* number of rows in the input matrix A */
#define N		2	/* number of cols in the input matrix A */
#define ldA		N	/* leading dimension of matrix A */
#define ldU		M	/* leading dimension of matrix U */
#define ldVT		N	/* leading dimension of matrix V transposed */

  double		A[M][N] = {	/* the input matrix A*/
    { 1.1, 1.2 },
    { 2.1, 2.2 },
    { 3.1, 3.2 }
  };
  double		A1[M][N];	/* operand: a copy of A used as actual parameter to DGESVD */
  double		S[N][1];	/* result: the singular values of A = the main diagonal of SIGMA */
  double		U[M][M];	/* result: the columns of U are the left singular vectors*/
  double		VT[N][N];	/* result: matrix V transposed, the columns of V are the right singular vectors */
  double		superb[IMIN(M,N)-1][1];	/* super diagonal of an internal work matrix, see the source of DGESVD */

  /* expected results */
  double		expected_S[N][1] = {
    { +5.634546 },
    { +0.043473 }
  };
  double		expected_U[M][M] = {
    { -0.288834, +0.865973, +0.408248 },
    { -0.539772, +0.204890, -0.816497 },
    { -0.790710, -0.456193, +0.408248 }
  };
  double		expected_VT[N][N] = {
    { -0.692591, -0.721330 },
    { -0.721330, +0.692591 }
  };
  double		SIGMA[M][N];		/* matrix having singular values on the main diagonal */
  double		recomputed_A[M][N];	/* matrix A recomputed using the reults */

  lapack_int		info;

  printf("\n\n *** DGESVD: SMALL MATRIX EXAMPLE ***\n\n");

  memcpy(A1, A, sizeof(double) * M * N);

  info = LAPACKE_dgesvd(matrix_order, jobU, jobVT, M, N,
			MREF(A1), ldA, MREF(S), MREF(U), ldU,
			MREF(VT), ldVT, MREF(superb));

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Result validation by performing  the inverse operation.  We compute
     "recomputed_A" starting from U, S and VT. */
  {
    double	R1[M][N];
    double	R2[M][N];
    lapack_int	ldSIGMA = N;
    lapack_int	ldR1 = N;
    lapack_int	ldR2 = N;

    /* Put the singular values on the main diagonal of SIGMA. */
    for (int i=0; i<M; ++i) {
      for (int j=0; j<N; ++j) {
	SIGMA[i][j] = (i == j)? S[j][0] : +0.0;
      }
    }

    /* Multiply U  and SIGMA, then  right-multiply the result by  V^T to
     * verify that the result is indeed A; we need CBLAS for this.
     */
    /* In general DGEMM does:
     *
     *   E1 = \alpha A B + \beta C
     *
     * where  A, B  and C  are matrices.   We need  to inspect  both the
     * header  file  "cblas.h"  and  the manual  page  "dgemm"  for  the
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
     * In  our case  all the  matrices are  in row-major  order and  the
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
    /* Here we want to do (explicitating the dimensions):
     *
     *   R1[M][N] = 1.0 U[M][M] SIGMA[M][N] + 0.0 R1[M][N]
     *   R2[M][N] = 1.0 R1[M][N] VT[N][N]   + 0.0 R2[M][N]
     *
     * where R1  and R2  are matrices  whose contents  at input  are not
     * important, and  whose contents  at output are  the result  of the
     * operation.
     */
    {
      double	alpha = 1.0;
      double	beta  = 0.0;
      cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
		  M, N, M,
		  alpha, MREF(U), ldU, MREF(SIGMA), ldSIGMA, beta, MREF(R1), ldR1);
      cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
      		  M, N, N,
      		  alpha, MREF(R1), ldR1, MREF(VT), ldVT, beta, MREF(R2), ldR2);
    }
    memcpy(recomputed_A, R2, sizeof(double) * M * N);
  }

  /* Result logging */
  {
    print_double_row_major_matrix ("A, input matrix", M, N, A);
    print_double_row_major_matrix ("recomputed A (must be equal to the original A)",
				   M, N, recomputed_A);
    if (0) {
      print_double_row_major_matrix ("A1, output matrix", M, N, A1);
    }
    print_double_row_major_matrix ("S, computed singular values", N, 1, S);
    print_double_row_major_matrix ("SIGMA, matrix having singular values on the main diagonal",
				   M, N, SIGMA);
    print_double_row_major_matrix ("U, the columns are the left singular vectors", M, M, U);
    print_double_row_major_matrix ("V transposed, the rows are the right singular vectors", N, N, VT);
    print_double_row_major_matrix ("superb", IMIN(M,N)-1, 1, superb);
  }

  /* Comparison between computed results and expected results. */
  if (1) {
    compare_double_row_major_result_and_expected_result ("S, singular values",
							 N, 1, S, expected_S);
    compare_double_row_major_result_and_expected_result ("recomputed A",
							 M, N, A, recomputed_A);
    compare_double_row_major_result_and_expected_result ("U, matrix of left singular vectors",
							 M, M, U, expected_U);
    compare_double_row_major_result_and_expected_result ("V^T, transposed matrix of right singular vectors",
							 N, N, VT, expected_VT);
  }
}


void
doit_with_netlib_test_data (void)
{
#undef matrix_order
#undef jobU
#undef jobVT
#undef M
#undef N
#undef ldA
#undef ldU
#undef ldVT
#define matrix_order	LAPACK_ROW_MAJOR
#define jobU		'A'	/* option: return all the M columns of U in the matrix U */
#define jobVT		'A'	/* option: return all the N rows of V^T in the matrix VT */
#define M		6	/* number of rows in the input matrix A */
#define N		4	/* number of cols in the input matrix A */
#define ldA		N	/* leading dimension of matrix A */
#define ldU		M	/* leading dimension of matrix U */
#define ldVT		N	/* leading dimension of matrix V transposed */

  double		A[M][N] = {	/* the input matrix A*/
    { +2.27, -1.54, +1.15, -1.94 },
    { +0.28, -1.67, +0.94, -0.78 },
    { -0.48, -3.09, +0.99, -0.21 },
    { +1.07, +1.22, +0.79, +0.63 },
    { -2.35, +2.93, -1.45, +2.30 },
    { +0.62, -7.39, +1.03, -2.57 }
  };
  double		A1[M][N];	/* operand: a copy of A used as actual parameter to DGESVD */
  double		S[N][1];	/* result: the singular values of A = the main diagonal of SIGMA */
  double		U[M][M];	/* result: the columns of U are the left singular vectors*/
  double		VT[N][N];	/* result: matrix V transposed, the columns of V are the right singular vectors */
  double		superb[IMIN(M,N)-1][1];	/* super diagonal of an internal work matrix, see the source of DGESVD */

  /* expected results */
  double		netlib_expected_S[N][1] = {
    { 9.9966 },
    { 3.6831 },
    { 1.3569 },
    { 0.5000 }
  };
  double		netlib_expected_U[M][M] = {
    {  0.2774,  0.6003,  0.1277, -0.1323 },
    {  0.2020,  0.0301, -0.2805, -0.7034 },
    {  0.2918, -0.3348, -0.6453, -0.1906 },
    { -0.0938,  0.3699, -0.6781,  0.5399 },
    { -0.4213, -0.5266, -0.0413,  0.0575 },
    {  0.7816, -0.3353,  0.1645,  0.3957 }
  };
  double		netlib_expected_VT[N][N] = {
    {  0.1921, -0.8794,  0.2140, -0.3795 },
    {  0.8030,  0.3926,  0.2980, -0.3351 },
    { -0.0041,  0.0752, -0.7827, -0.6178 },
    {  0.5642, -0.2587, -0.5027,  0.6017 }
  };

  double		SIGMA[M][N];		/* matrix having singular values on the main diagonal */
  double		recomputed_A[M][N];	/* matrix A recomputed using the reults */

  lapack_int		info;

  printf("\n\n *** DGESVD: LAPACK SITE MATRIX EXAMPLE ***\n\n");

  memcpy(A1, A, sizeof(double) * M * N);

  info = LAPACKE_dgesvd(matrix_order, jobU, jobVT, M, N,
			MREF(A1), ldA, MREF(S), MREF(U), ldU,
			MREF(VT), ldVT, MREF(superb));

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Result validation by performing  the inverse operation.  We compute
     "recomputed_A" starting from U, S and VT. */
  {
    double	R1[M][N];
    double	R2[M][N];
    lapack_int	ldSIGMA = N;
    lapack_int	ldR1 = N;
    lapack_int	ldR2 = N;

    /* Put the singular values on the main diagonal of SIGMA. */
    for (int i=0; i<M; ++i) {
      for (int j=0; j<N; ++j) {
	SIGMA[i][j] = (i == j)? S[j][0] : +0.0;
      }
    }

    /* Multiply U  and SIGMA, then  right-multiply the result by  V^T to
     * verify that the result is indeed A; we need CBLAS for this.
     */
    /* In general DGEMM does:
     *
     *   E1 = \alpha A B + \beta C
     *
     * where  A, B  and C  are matrices.   We need  to inspect  both the
     * header  file  "cblas.h"  and  the manual  page  "dgemm"  for  the
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
     * In  our case  all the  matrices are  in row-major  order and  the
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
    /* Here we want to do (explicitating the dimensions):
     *
     *   R1[M][N] = 1.0 U[M][M] SIGMA[M][N] + 0.0 R1[M][N]
     *   R2[M][N] = 1.0 R1[M][N] VT[N][N]   + 0.0 R2[M][N]
     *
     * where R1  and R2  are matrices  whose contents  at input  are not
     * important, and  whose contents  at output are  the result  of the
     * operation.
     */
    {
      double	alpha = 1.0;
      double	beta  = 0.0;
      cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
		  M, N, M,
		  alpha, MREF(U), ldU, MREF(SIGMA), ldSIGMA, beta, MREF(R1), ldR1);
      cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
      		  M, N, N,
      		  alpha, MREF(R1), ldR1, MREF(VT), ldVT, beta, MREF(R2), ldR2);
    }
    memcpy(recomputed_A, R2, sizeof(double) * M * N);
  }

  /* Result logging */
  {
    print_double_row_major_matrix ("A, input matrix", M, N, A);
    print_double_row_major_matrix ("recomputed A (must be equal to the original A)",
				   M, N, recomputed_A);
    if (0) {
      print_double_row_major_matrix ("A1, output matrix", M, N, A1);
    }
    print_double_row_major_matrix ("S, computed singular values", N, 1, S);
    print_double_row_major_matrix ("SIGMA, matrix having singular values on the main diagonal",
				   M, N, SIGMA);
    print_double_row_major_matrix ("U, the columns are the left singular vectors", M, M, U);
    print_double_row_major_matrix ("V transposed, the rows are the right singular vectors", N, N, VT);
    print_double_row_major_matrix ("superb", IMIN(M,N)-1, 1, superb);
  }

  /* Comparison between computed results and expected results. */
  if (1) {
    compare_double_row_major_result_and_expected_result ("S, singular values",
							 N, 1, S, netlib_expected_S);
    compare_double_row_major_result_and_expected_result ("recomputed A",
							 M, N, A, recomputed_A);
    /* FIXME These  comparisons fail.   Even though the  singular values
       are fine and the recomputed matrix A equals the original one: the
       computed U and  VT are different from the expected  ones from the
       Netlib's test data.  (Marco Maggi; Tue Jun 17, 2014) */
    if (1) {
      compare_double_row_major_result_and_expected_result ("U, matrix of left singular vectors",
							   M, M, U, netlib_expected_U);
      compare_double_row_major_result_and_expected_result ("V^T, transposed matrix of right singular vectors",
							   N, N, VT, netlib_expected_VT);
    }
  }

}

/* end of file */
