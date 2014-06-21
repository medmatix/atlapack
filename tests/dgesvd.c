/* This test program is built from examples from the Net.  To understand
 * this  test  program see  the  manual  page  for the  Fortran  routine
 * dgesvd(3), the prototype of the  C function "LAPACKE_dgesvd()" in the
 * header  file  "lapacke.h"  and  (unfortunately) the  source  code  of
 * "LAPACKE_dgesvd()".
 *
 * For an introduction to singular value decomposition see:
 *
 *     <http://en.wikipedia.org/wiki/Singular_value_decomposition>
 *
 * What do  we want to  do here?  Let's explain  it with a  small matrix
 * example; given the input matrix, of dimensions 3x2:
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
 * of the matrix A; the square matrix U is orthogonal; the square matrix
 * V is orthogonal.
 *
 * The first  MIN(3,2) columns of U  are the left singular  vectors; the
 * first MIN(3,2) columns  of V are the right  singular vectors.  Notice
 * that when looking  at V^T, transposed of V: the  *rows* are the right
 * singular vectors.
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
 * available an additional result: the  vector superB.  The size of such
 * vector is  MIN(3, 2) and  it contains  the first superdiagonal  of an
 * internal  working matrix.   See the  source  code of  the C  function
 * "LAPACKE_dgesvd()".
 *
 * We can easily validate the results by reconstructing the matrix SIGMA
 * from the vector S:
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
 *
 * notice that: while  the left singular vectors are  the first MIN(3,2)
 * columns of U,  and the right singular vectors are  the first MIN(3,2)
 * columns of V,  we need the *full*  U and the *full*  V to reconstruct
 * the input matrix A from the results.
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
			       const int M, const int N, const int minMN,
			       double A[M][N],
			       double expected_S[N][1],
			       double expected_LSV[M][minMN],
			       double expected_VT[N][N]);


int
main (int argc, const char *const argv[])
{
  if (1) {
    /* The  input matrix  A.   Number  of rows  M=3,  number of  columns
       N=2. */
    double	A[3][2] = {
      { 1.1, 1.2 },
      { 2.1, 2.2 },
      { 3.1, 3.2 }
    };
    /* NOTE In truth: the following  values are not "expected", they are
       copied from the log of this  very program; so they are the result
       of a run of this program on my system.  (Marco Maggi; Tue Jun 17,
       2014) */
    /* Vector of expected singular values.  Dimension equal to N. */
    double	expected_S[2][1] = {
      { +5.634546 },
      { +0.043473 }
    };
#if 0
    /* Expected  square  matrix  U.    Dimensions:  Unrows  =  Uncols  =
       Anrows. */
    double	expected_U[3][3] = {
      { -0.288834, +0.865973, +0.408248 },
      { -0.539772, +0.204890, -0.816497 },
      { -0.790710, -0.456193, +0.408248 }
    };
#endif
    /* Expected matrix of  left singular vectors.  Number of  rows is M,
       number of columns is MIN(M,N). */
    double	expected_LSV[3][2] = {
      { -0.288834, +0.865973 },
      { -0.539772, +0.204890 },
      { -0.790710, -0.456193 }
    };
    /* Expected square matrix V transposed.  Dimensions: Vnrows = Vncols
       = Ancols. */
    double	expected_VT[2][2] = {
      { -0.692591, -0.721330 },
      { -0.721330, +0.692591 }
    };
    doit_in_row_major("small matrix", 3, 2, MIN(3,2),
		      A, expected_S, expected_LSV, expected_VT);
  }

  if (1) {
    double	A[6][4] = {
      { +2.27, -1.54, +1.15, -1.94 },
      { +0.28, -1.67, +0.94, -0.78 },
      { -0.48, -3.09, +0.99, -0.21 },
      { +1.07, +1.22, +0.79, +0.63 },
      { -2.35, +2.93, -1.45, +2.30 },
      { +0.62, -7.39, +1.03, -2.57 }
    };
    double	expected_S[4][1] = {
      { 9.9966 },
      { 3.6831 },
      { 1.3569 },
      { 0.5000 }
    };
    double	netlib_expected_LSV[6][4] = {
      {  0.2774,  0.6003,  0.1277, -0.1323 },
      {  0.2020,  0.0301, -0.2805, -0.7034 },
      {  0.2918, -0.3348, -0.6453, -0.1906 },
      { -0.0938,  0.3699, -0.6781,  0.5399 },
      { -0.4213, -0.5266, -0.0413,  0.0575 },
      {  0.7816, -0.3353,  0.1645,  0.3957 }
    };
    double	netlib_expected_VT[4][4] = {
      {  0.1921, -0.8794,  0.2140, -0.3795 },
      {  0.8030,  0.3926,  0.2980, -0.3351 },
      { -0.0041,  0.0752, -0.7827, -0.6178 },
      {  0.5642, -0.2587, -0.5027,  0.6017 }
    };
    double	expected_LSV[6][4];
    double	expected_VT[4][4];

    /* NOTE For some reason that  escapes my comprehension: the expected
       data from the Netlib site is the  opposite of the one I get here.
       Reconstructing the  input matrix from  the data I get  here works
       fine,  so I  trust my  results rather  than the  data at  Netlib.
       (Marco Maggi; Sat Jun 21, 2014) */
    for (int i=0; i<6; ++i) {
      for (int j=0; j<4; ++j) {
	expected_LSV[i][j] = - netlib_expected_LSV[i][j];
      }
    }
    for (int i=0; i<4; ++i) {
      for (int j=0; j<4; ++j) {
	expected_VT[i][j] = - netlib_expected_VT[i][j];
      }
    }

    doit_in_row_major("Netlib test data", 6, 4, MIN(6,4),
		      A, expected_S, expected_LSV, expected_VT);
  }

  exit(exit_code);
}


void
doit_in_row_major (const char * description,
		   const int M, const int N, const int minMN,
		   double A[M][N],
		   double expected_S[N][1],
		   double expected_LSV[M][minMN],
		   double expected_VT[N][N])
{
  /* Option: return all the M columns of U in the matrix U. */
  const char	jobU	= 'A';
  /* Option: return all the N rows of V^T in the matrix VT. */
  const char	jobVT	= 'A';

  const int	Anrows	= M;
  const int	Ancols	= N;
  const int	ldA	= Ancols;

  /* Operand: a  copy of A  used as actual  parameter to DGESVD.   It is
     needed because the  parameter is destroyed and we  want to preserve
     the original matrix in A. */
  double		A1[Anrows][Ancols];

  /* Result: the singular values of A.  This vector is equal to the main
     diagonal of SIGMA. */
  const int		Snrows = Ancols;
  const int		Sncols = 1;
  double		S[Snrows][Sncols];

  /* Result: orthogonal square matrix U.   The MIN(M,N) columns of U are
     the left singular vectors. */
  const int		Unrows	= Anrows;
  const int		Uncols	= Anrows;
  const int		ldU	= Uncols;
  double		U[Unrows][Uncols];

  /* Result:  orthogonal  square  matrix  V  transposed.   The  MIN(M,N)
     columns of V are the right singular vectors. */
  const int		VTnrows	= Ancols;
  const int		VTncols	= Ancols;
  const int		ldVT	= VTncols;
  double		VT[VTnrows][VTncols];

  /* Result: first  superdiagonal of  an internal  work matrix,  see the
     source code of "LAPACKE_dgesvd()". */
  const int		superBnrows = MIN(Anrows,Ancols) - 1;
  const int		superBncols = 1;
  double		superB[superBnrows][superBncols];

  /* Reconstructed data: matrix  having the singular values  on the main
     diagonal. */
  const int		SIGMAnrows = Anrows;
  const int		SIGMAncols = Ancols;
  const int		ldSIGMA    = SIGMAncols;
  double		SIGMA[SIGMAnrows][SIGMAncols];

  /* Reconstructed  data: left  singular  vector.  The  columns of  this
     matrix are the MIN(M,N) columns of U. */
  const int		LSVnrows = Anrows;
  const int		LSVncols = MIN(Anrows,Ancols);
  /* const int		ldLSV    = Uncols; */
  double		LSV[LSVnrows][LSVncols];

  /* Reconstructed data: matrix A recomputed using the results. */
  double		recomputed_A[Anrows][Ancols];

  lapack_int		info;

  /* Load the input matrix A into the working array A1. */
  memcpy(A1, A, sizeof(double) * Anrows * Ancols);

  info = LAPACKE_dgesvd(LAPACK_ROW_MAJOR, jobU, jobVT, Anrows, Ancols,
			MREF(A1), ldA, MREF(S), MREF(U), ldU,
			MREF(VT), ldVT, MREF(superB));

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Result validation by performing  the inverse operation.  We compute
     "recomputed_A" starting from U, S and VT. */
  {
    /* Put the singular values on the main diagonal of SIGMA. */
    for (int i=0; i<Anrows; ++i) {
      for (int j=0; j<Ancols; ++j) {
	SIGMA[i][j] = (i == j)? S[j][0] : +0.0;
      }
    }

    /* Put the left singular vectors from U in LSV. */
    for (int i=0; i<LSVnrows; ++i) {
      for (int j=0; j<LSVncols; ++j) {
	LSV[i][j] = U[i][j];
      }
    }

    /* Multiply U  and SIGMA, then  right-multiply the result by  V^T to
     * verify that the result is indeed A; we need CBLAS for this.
     */
    /* In general DGEMM does:
     *
     *   C = \alpha A B + \beta C
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
     * and C; K is  the number of columns of A and rows  of B.  In other
     * words:
     *
     *    A has dimensions M x K
     *    B has dimensions K x N
     *    C has dimensions M x N
     *
     * obviously the product AB has dimensions M x N.
     */
    /* Here we want to do (explicitating the dimensions):
     *
     *   R[M][N] = 1.0 U[M][M] SIGMA[M][N] + 0.0 R[M][N]
     *   R[M][N] = 1.0 R1[M][N] VT[N][N]   + 0.0 R[M][N]
     *
     * where R  is a matrix whose  contents at input are  not important,
     * and whose contents at output are the result of the operation.
     */
    {
      double	R1[Ancols][Anrows];
      double	R2[Ancols][Anrows];
      double	alpha = 1.0;
      double	beta  = 0.0;
      cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
		  Anrows, Ancols, Uncols,
		  alpha, MREF(U),  ldU, MREF(SIGMA), ldSIGMA, beta, MREF(R1), ldA);
      cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
      		  Anrows, Ancols, VTnrows,
      		  alpha, MREF(R1), ldA, MREF(VT),    ldVT,    beta, MREF(R2), ldA);
      memcpy(recomputed_A, R2, sizeof(double) * Anrows * Ancols);
    }
  }

  printf("Results of DGESVD: %s:\n", description);

  /* Comparison between computed results and expected results. */
  if (1) {
    compare_real_row_major_result_and_expected_result ("S, singular values",
						       Snrows, Sncols, S, expected_S);
    compare_real_row_major_result_and_expected_result ("recomputed A",
						       Anrows, Ancols, A, recomputed_A);
    compare_real_row_major_result_and_expected_result ("LSV, matrix of left singular vectors",
						       LSVnrows, LSVncols, LSV, expected_LSV);
    compare_real_row_major_result_and_expected_result ("V^T, transposed matrix of right singular vectors",
						       VTnrows, VTncols, VT, expected_VT);
  }

  /* Result logging */
  {
    print_real_row_major_matrix ("A, input matrix", Anrows, Ancols, A);
    print_real_row_major_matrix ("recomputed A (must be equal to the original A)",
				 Anrows, Ancols, recomputed_A);
    if (0) {
      print_real_row_major_matrix ("A1, output matrix", Anrows, Ancols, A1);
    }
    print_real_row_major_matrix ("S, computed singular values", Snrows, Sncols, S);
    print_real_row_major_matrix ("SIGMA, matrix having singular values on the main diagonal",
				 SIGMAnrows, SIGMAncols, SIGMA);
    print_real_row_major_matrix ("U, the MIN(M,N) columns are the left singular vectors",
				 Unrows, Uncols, U);
    print_real_row_major_matrix ("V transposed, the MIN(M,N) rows are the right singular vectors",
				 VTnrows, VTncols, VT);
    print_real_row_major_matrix ("superB", superBnrows, superBncols, superB);
  }
}

/* end of file */
