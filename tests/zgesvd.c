/* This test program is built from examples from the Net.
 *
 * To understand this  test program see the manual page  for the Fortran
 * routine zgesvd(3), the prototype of the C function "LAPACKE_zgesvd()"
 * in the header file "lapacke.h" and (unfortunately) the source code of
 * ""LAPACKE_zgesvd()".
 *
 * For detail on the behaviour of this function read the comments in the
 * test program "dgesvd.c".  The only differences are:
 *
 * 1.  The  matrix V  is handled  as transposed by  DGESVD, while  it is
 * handled as conjugate-transposed by ZGESVD.
 *
 * 2. The vector of computed singular values is still a vector of reals,
 * even when the operands are complex.
 *
 * 3.  The vector  superB is  still  a vector  of reals,  even when  the
 * operands are complex.
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
  if (1) doit_with_small_matrix();
  if (1) doit_with_netlib_test_data();
  exit(exit_code);
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

  double complex	A[M][N] = {	/* the input matrix A*/
    { CMPLX(1.1,0.1), CMPLX(1.2,0.1) },
    { CMPLX(2.1,0.1), CMPLX(2.2,0.1) },
    { CMPLX(3.1,0.1), CMPLX(3.2,0.1) }
  };
  double complex	A1[M][N];	/* operand: a copy of A used as actual parameter to DGESVD */
  double		S[N][1];	/* result: the singular values of A = the main diagonal of SIGMA */
  double complex	U[M][M];	/* result: the columns of U are the left singular vectors*/
  double complex	VT[N][N];	/* result: matrix V transposed, the columns of V are the right singular vectors */
  double		superb[IMIN(M,N)-1][1];	/* super diagonal of an internal work matrix, see the source of DGESVD */

  /* Expected results.

     NOTE In  truth: these  values are not  "expected", they  are copied
     from the log of this very function; so they are the result of a run
     of this program on my system.  (Marco Maggi; Tue Jun 17, 2014) */
  double		expected_S[N][1] = {
    { +5.639868 },
    { +0.043432 }
  };
  double complex	expected_U[M][M] = {
    { CMPLX(-0.288536, -0.025360), CMPLX(-0.865183, +0.029919), CMPLX(+0.408004,  0.014111) },
    { CMPLX(-0.539238, -0.025601), CMPLX(-0.204697, -0.000189), CMPLX(-0.816009, -0.028221) },
    { CMPLX(-0.789939, -0.025843), CMPLX(+0.455790, -0.030297), CMPLX(+0.408004, +0.014111) },
  };
  double complex	expected_VT[N][N] = {
    { CMPLX(-0.692619, +0.000000), CMPLX(-0.721302, +0.001362) },
    { CMPLX(+0.721304, +0.000000), CMPLX(-0.692618, +0.001308) }
  };
  double complex	SIGMA[M][N];		/* matrix having singular values on the main diagonal */
  double complex	recomputed_A[M][N];	/* matrix A recomputed using the reults */

  lapack_int		info;

  printf("\n\n *** DGESVD: SMALL MATRIX EXAMPLE ***\n\n");

  memcpy(A1, A, sizeof(double complex) * M * N);

  info = LAPACKE_zgesvd(matrix_order, jobU, jobVT, M, N,
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
    double complex	R1[M][N];
    double complex	R2[M][N];
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
    /* In general ZGEMM does:
     *
     *   E1 = \alpha A B + \beta C
     *
     * where  A, B  and C  are matrices.   We need  to inspect  both the
     * header  file  "cblas.h"  and  the manual  page  "zgemm"  for  the
     * documentation of the parameters; the prototype of "cblas_zgemm()"
     * is:
     *
     *    void cblas_zgemm(const enum CBLAS_ORDER Order,
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
      double complex	alpha = 1.0;
      double complex	beta  = 0.0;
      cblas_zgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
		  M, N, M,
		  &alpha, MREF(U), ldU, MREF(SIGMA), ldSIGMA, &beta, MREF(R1), ldR1);
      cblas_zgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
      		  M, N, N,
      		  &alpha, MREF(R1), ldR1, MREF(VT), ldVT, &beta, MREF(R2), ldR2);
    }
    memcpy(recomputed_A, R2, sizeof(double complex) * M * N);
  }

  /* Result logging */
  {
    print_complex_row_major_matrix ("A, input matrix", M, N, A);
    print_complex_row_major_matrix ("recomputed A (must be equal to the original A)",
				    M, N, recomputed_A);
    if (0) {
      print_complex_row_major_matrix ("A1, output matrix", M, N, A1);
    }
    print_real_row_major_matrix ("S, computed singular values", N, 1, S);
    print_complex_row_major_matrix ("SIGMA, matrix having singular values on the main diagonal",
				    M, N, SIGMA);
    print_complex_row_major_matrix ("U, the columns are the left singular vectors", M, M, U);
    print_complex_row_major_matrix ("V transposed, the rows are the right singular vectors", N, N, VT);
    print_real_row_major_matrix ("superb", IMIN(M,N)-1, 1, superb);
  }

  /* Comparison between computed results and expected results. */
  if (1) {
    compare_real_row_major_result_and_expected_result ("S, singular values",
							 N, 1, S, expected_S);
    compare_complex_row_major_result_and_expected_result ("recomputed A",
							  M, N, A, recomputed_A);
    compare_complex_row_major_result_and_expected_result ("U, matrix of left singular vectors",
							  M, M, U, expected_U);
    compare_complex_row_major_result_and_expected_result ("V^T, transposed matrix of right singular vectors",
							  N, N, VT, expected_VT);
  }
}


void
doit_with_netlib_test_data (void)
{
#undef matrix_order
#undef jobU
#undef jobVH
#undef M
#undef N
#undef ldA
#undef ldU
#undef ldVH
#define matrix_order	LAPACK_ROW_MAJOR
  /* The left singular vectors are the first N columns of U, but we need
     the full U to reconstruct the input matrix A from the results. */
#define jobU		'A'	/* option: return all the columns of U */
#define jobVH		'A'	/* option: return all the N rows of V^H in the matrix VH */
#define M		6	/* number of rows in the input matrix A */
#define N		4	/* number of cols in the input matrix A */
#define ldA		N	/* leading dimension of matrix A */
#define ldU		M	/* leading dimension of matrix U */
#define ldVH		N	/* leading dimension of matrix V conjugate-transposed */

  double complex	A[M][N] = {	/* the input matrix A*/
    { CMPLX( 0.96,-0.81), CMPLX(-0.03, 0.96), CMPLX(-0.91, 2.06), CMPLX(-0.05, 0.41) },
    { CMPLX(-0.98, 1.98), CMPLX(-1.20, 0.19), CMPLX(-0.66, 0.42), CMPLX(-0.81, 0.56) },
    { CMPLX( 0.62,-0.46), CMPLX( 1.01, 0.02), CMPLX( 0.63,-0.17), CMPLX(-1.11, 0.60) },
    { CMPLX(-0.37, 0.38), CMPLX( 0.19,-0.54), CMPLX(-0.98,-0.36), CMPLX( 0.22,-0.20) },
    { CMPLX( 0.83, 0.51), CMPLX( 0.20, 0.01), CMPLX(-0.17,-0.46), CMPLX( 1.47, 1.59) },
    { CMPLX( 1.08,-0.28), CMPLX( 0.20,-0.12), CMPLX(-0.07, 1.23), CMPLX( 0.26, 0.26) }
  };
  double complex	A1[M][N];	/* operand: a copy of A used as actual parameter to DGESVD */
  double		S[N][1];	/* result: the singular values of A = the main diagonal of SIGMA */
  double complex	U[M][M];	/* result: the first N columns of U are the left singular vectors */
  double complex	VH[N][N];	/* result: matrix V conjugate-transposed, the columns of V are the right singular vectors */
  double		superb[IMIN(M,N)-1][1];	/* super diagonal of an internal work matrix, see the source of DGESVD */

  double complex	left_singular_vectors[M][N]; /* result: the first N columns of U are the left singular vectors */

  /* These expected values are from the Netlib site.

     NOTE Netlib does  not give us the full expected  U matrix, only the
     expected left singular  vectors: the first N columns  of U.  (Marco
     Maggi; Wed Jun 18, 2014) */
  double		netlib_expected_S[N][1] = {
    { 3.9994 },
    { 3.0003 },
    { 1.9944 },
    { 0.9995 }
  };
  double complex	netlib_expected_left_singular_vectors[M][N] = {
    { CMPLX(-0.5634,+0.0016), CMPLX(+0.2687,+0.2749), CMPLX(+0.2451,+0.4657), CMPLX(+0.3787,+0.2987) },
    { CMPLX(+0.1205,-0.6108), CMPLX(+0.2909,-0.1085), CMPLX(+0.4329,-0.1758), CMPLX(-0.0182,-0.0437) },
    { CMPLX(-0.0816,+0.1613), CMPLX(+0.1660,-0.3885), CMPLX(-0.4667,+0.3821), CMPLX(-0.0800,-0.2276) },
    { CMPLX(+0.1441,-0.1532), CMPLX(-0.1984,+0.1737), CMPLX(-0.0034,+0.1555), CMPLX(+0.2608,-0.5382) },
    { CMPLX(-0.2487,-0.0926), CMPLX(-0.6253,-0.3304), CMPLX(+0.2643,-0.0194), CMPLX(+0.1002,+0.0140) },
    { CMPLX(-0.3758,+0.0793), CMPLX(+0.0307,+0.0816), CMPLX(+0.1266,+0.1747), CMPLX(-0.4175,-0.4058) }
  };
  double complex	netlib_expected_VH[N][N] = {
    { CMPLX(-0.6971,-0.0000), CMPLX(-0.0867,-0.3548), CMPLX(+0.0560,-0.5400), CMPLX(-0.1878,-0.2253) },
    { CMPLX(-0.2403,-0.0000), CMPLX(-0.0725,+0.2336), CMPLX(+0.2477,+0.5291), CMPLX(-0.7026,-0.2177) },
    { CMPLX(-0.5123,-0.0000), CMPLX(-0.3030,-0.1735), CMPLX(+0.0678,+0.5162), CMPLX(+0.4418,+0.3864) },
    { CMPLX(-0.4403,-0.0000), CMPLX(+0.5294,+0.6361), CMPLX(-0.3027,-0.0346), CMPLX(+0.1667,+0.0258) }
  };
  double complex	SIGMA[M][N];		/* matrix having singular values on the main diagonal */
  double complex	recomputed_A[M][N];	/* matrix A recomputed using the reults */

  lapack_int		info;

  printf("\n\n *** DGESVD: NETLIB MATRIX EXAMPLE ***\n\n");

  memcpy(A1, A, sizeof(double complex) * M * N);

  info = LAPACKE_zgesvd(matrix_order, jobU, jobVH, M, N,
			MREF(A1), ldA, MREF(S), MREF(U), ldU,
			MREF(VH), ldVH, MREF(superb));

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Result validation by performing  the inverse operation.  We compute
     "recomputed_A" starting from U, S and VH. */
  {
    double complex	R1[M][N];
    double complex	R2[M][N];
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
    /* In general ZGEMM does:
     *
     *   E1 = \alpha A B + \beta C
     *
     * where  A, B  and C  are matrices.   We need  to inspect  both the
     * header  file  "cblas.h"  and  the manual  page  "zgemm"  for  the
     * documentation of the parameters; the prototype of "cblas_zgemm()"
     * is:
     *
     *    void cblas_zgemm(const enum CBLAS_ORDER Order,
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
     *   R2[M][N] = 1.0 R1[M][N] VH[N][N]   + 0.0 R2[M][N]
     *
     * where R1  and R2  are matrices  whose contents  at input  are not
     * important, and  whose contents  at output are  the result  of the
     * operation.
     */
    {
      double complex	alpha = 1.0;
      double complex	beta  = 0.0;
      cblas_zgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
		  M, N, M,
		  &alpha, MREF(U), ldU, MREF(SIGMA), ldSIGMA, &beta, MREF(R1), ldR1);
      cblas_zgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
      		  M, N, N,
      		  &alpha, MREF(R1), ldR1, MREF(VH), ldVH, &beta, MREF(R2), ldR2);
    }
    memcpy(recomputed_A, R2, sizeof(double complex) * M * N);
  }

  /* Extract the left singular vectors from the full U matrix. */
  for (int i=0; i<M; ++i) {
    for (int j=0; j<N; ++j) {
      left_singular_vectors[i][j] = U[i][j];
    }
  }

  /* Result logging */
  {
    print_complex_row_major_matrix ("A, input matrix", M, N, A);
    print_complex_row_major_matrix ("recomputed A (must be equal to the original A)",
				    M, N, recomputed_A);
    if (0) {
      print_complex_row_major_matrix ("A1, output matrix", M, N, A1);
    }
    print_real_row_major_matrix ("S, computed singular values", N, 1, S);
    print_complex_row_major_matrix ("SIGMA, matrix having singular values on the main diagonal",
				    M, N, SIGMA);
    print_complex_row_major_matrix ("U, the first N columns are the left singular vectors", M, M, U);
    print_complex_row_major_matrix ("V conjugate-transposed, the rows are the right singular vectors", N, N, VH);
    print_real_row_major_matrix ("superb", IMIN(M,N)-1, 1, superb);
  }

  /* Comparison between computed results and netlib_expected results. */
  if (1) {
    compare_real_row_major_result_and_expected_result ("S, singular values",
							 N, 1, S, netlib_expected_S);
    compare_complex_row_major_result_and_expected_result ("recomputed A",
							  M, N, A, recomputed_A);
    /* FIXME These  comparisons fail.   Even though the  singular values
       are fine and the recomputed matrix A equals the original one: the
       computed U and  VH are different from the expected  ones from the
       Netlib's test data.  (Marco Maggi; Wed Jun 18, 2014) */
    if (1) {
      compare_complex_row_major_result_and_expected_result ("matrix of left singular vectors",
							    M, N,
							    left_singular_vectors,
							    netlib_expected_left_singular_vectors);
      compare_complex_row_major_result_and_expected_result ("V^H, conjugate-transposed matrix of right singular vectors",
							    N, N, VH, netlib_expected_VH);
    }
  }
}

/* end of file */
