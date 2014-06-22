/* This test program is built from examples from the Net.  To understand
 * this  test  program see  the  manual  page  for the  Fortran  routine
 * zgesvd(3), the prototype of the  C function "LAPACKE_zgesvd()" in the
 * header  file  "lapacke.h"  and  (unfortunately) the  source  code  of
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

static void doit_in_row_major (const char * description,
			       const int M, const int N, const int minMN,
			       double complex A[M][N],
			       double         expected_S[N][1],
			       double complex expected_LSV[M][minMN],
			       double complex expected_VH[N][N]);
static void doit_in_col_major (const char * description,
			       const int M, const int N, const int minMN,
			       double complex A[N][M],
			       double         expected_S[1][N],
			       double complex expected_LSV[minMN][M],
			       double complex expected_VH[N][N]);


int
main (int argc, const char *const argv[])
{
  if (1) {
    /* The  input matrix  A.   Number  of rows  M=3,  number of  columns
       N=2. */
    double complex	A[3][2] = {
      { CMPLX(1.1,0.1), CMPLX(1.2,0.1) },
      { CMPLX(2.1,0.1), CMPLX(2.2,0.1) },
      { CMPLX(3.1,0.1), CMPLX(3.2,0.1) }
    };
    /* NOTE In truth: the following  values are not "expected", they are
       copied from the log of this  very program; so they are the result
       of a run of this program on my system.  (Marco Maggi; Tue Jun 17,
       2014) */
    /* Vector of expected singular values.  Dimension equal to N. */
    double	expected_S[2][1] = {
      { +5.639868 },
      { +0.043432 }
    };
#if 0
    /* Expected  square  matrix  U.    Dimensions:  Unrows  =  Uncols  =
       Anrows. */
    double complex	expected_U[3][3] = {
      { CMPLX(-0.288536, -0.025360), CMPLX(-0.865183, +0.029919), CMPLX(+0.408004,  0.014111) },
      { CMPLX(-0.539238, -0.025601), CMPLX(-0.204697, -0.000189), CMPLX(-0.816009, -0.028221) },
      { CMPLX(-0.789939, -0.025843), CMPLX(+0.455790, -0.030297), CMPLX(+0.408004, +0.014111) },
    };
#endif
    /* Expected matrix of  left singular vectors.  Number of  rows is M,
       number of columns is MIN(M,N). */
    double complex	expected_LSV[3][2] = {
      { CMPLX(-0.288536, -0.025360), CMPLX(-0.865183, +0.029919) },
      { CMPLX(-0.539238, -0.025601), CMPLX(-0.204697, -0.000189) },
      { CMPLX(-0.789939, -0.025843), CMPLX(+0.455790, -0.030297) },
    };
    /* Expected  square  matrix   V  conjugate-transposed.   Dimensions:
       Vnrows = Vncols = Ancols. */
    double complex	expected_VH[2][2] = {
      { CMPLX(-0.692619, +0.000000), CMPLX(-0.721302, +0.001362) },
      { CMPLX(+0.721304, +0.000000), CMPLX(-0.692618, +0.001308) }
    };
    doit_in_row_major("small matrix", 3, 2, MIN(3,2),
		      A, expected_S, expected_LSV, expected_VH);
  }

/* ------------------------------------------------------------------ */

  if (1) { /* col-major */
    /* The  input matrix  A.   Number  of rows  M=3,  number of  columns
       N=2. */
    double complex	A[2][3] = {
      { CMPLX(1.1,0.1), CMPLX(2.1,0.1), CMPLX(3.1,0.1) },
      { CMPLX(1.2,0.1), CMPLX(2.2,0.1), CMPLX(3.2,0.1) }
    };
    /* NOTE In truth: the following  values are not "expected", they are
       copied from the log of this  very program; so they are the result
       of a run of this program on my system.  (Marco Maggi; Tue Jun 17,
       2014) */
    /* Vector of expected singular values.  Dimension equal to N. */
    double	expected_S[1][2] = {
      { +5.639868, +0.043432 }
    };
    /* Expected matrix of  left singular vectors.  Number of  rows is M,
       number of columns is MIN(M,N). */
    double complex	expected_LSV[2][3] = {
      { CMPLX(-0.288536, -0.025360), CMPLX(-0.539238, -0.025601), CMPLX(-0.789939, -0.025843) },
      { CMPLX(-0.865183, +0.029919), CMPLX(-0.204697, -0.000189), CMPLX(+0.455790, -0.030297) }
    };
    /* Expected  square  matrix   V  conjugate-transposed.   Dimensions:
       Vnrows = Vncols = Ancols. */
    double complex	expected_VH[2][2] = {
      { CMPLX(-0.692619, +0.000000), CMPLX(+0.721304, +0.000000) },
      { CMPLX(-0.721302, +0.001362), CMPLX(-0.692618, +0.001308) }
    };
    doit_in_col_major("small matrix", 3, 2, MIN(3,2),
		      A, expected_S, expected_LSV, expected_VH);
  }

/* ------------------------------------------------------------------ */

  if (1) {
    /* The  input matrix  A.   Number  of rows  M=6,  number of  columns
       N=4. */
    double complex	A[6][4] = {
      { CMPLX( 0.96,-0.81), CMPLX(-0.03, 0.96), CMPLX(-0.91, 2.06), CMPLX(-0.05, 0.41) },
      { CMPLX(-0.98, 1.98), CMPLX(-1.20, 0.19), CMPLX(-0.66, 0.42), CMPLX(-0.81, 0.56) },
      { CMPLX( 0.62,-0.46), CMPLX( 1.01, 0.02), CMPLX( 0.63,-0.17), CMPLX(-1.11, 0.60) },
      { CMPLX(-0.37, 0.38), CMPLX( 0.19,-0.54), CMPLX(-0.98,-0.36), CMPLX( 0.22,-0.20) },
      { CMPLX( 0.83, 0.51), CMPLX( 0.20, 0.01), CMPLX(-0.17,-0.46), CMPLX( 1.47, 1.59) },
      { CMPLX( 1.08,-0.28), CMPLX( 0.20,-0.12), CMPLX(-0.07, 1.23), CMPLX( 0.26, 0.26) }
    };
    /* Vector of expected singular values.  Dimension equal to N. */
    double	expected_S[4][1] = {
      { 3.9994 },
      { 3.0003 },
      { 1.9944 },
      { 0.9995 }
    };
    /* Expected matrix of  left singular vectors.  Number of  rows is M,
       number of columns is MIN(M,N). */
    double complex	netlib_expected_LSV[6][4] = {
      { CMPLX(-0.5634,+0.0016), CMPLX(+0.2687,+0.2749), CMPLX(+0.2451,+0.4657), CMPLX(+0.3787,+0.2987) },
      { CMPLX(+0.1205,-0.6108), CMPLX(+0.2909,-0.1085), CMPLX(+0.4329,-0.1758), CMPLX(-0.0182,-0.0437) },
      { CMPLX(-0.0816,+0.1613), CMPLX(+0.1660,-0.3885), CMPLX(-0.4667,+0.3821), CMPLX(-0.0800,-0.2276) },
      { CMPLX(+0.1441,-0.1532), CMPLX(-0.1984,+0.1737), CMPLX(-0.0034,+0.1555), CMPLX(+0.2608,-0.5382) },
      { CMPLX(-0.2487,-0.0926), CMPLX(-0.6253,-0.3304), CMPLX(+0.2643,-0.0194), CMPLX(+0.1002,+0.0140) },
      { CMPLX(-0.3758,+0.0793), CMPLX(+0.0307,+0.0816), CMPLX(+0.1266,+0.1747), CMPLX(-0.4175,-0.4058) }
    };
    /* Expected  square  matrix   V  conjugate-transposed.   Dimensions:
       Vnrows = Vncols = Ancols. */
    double complex	netlib_expected_VH[4][4] = {
      { CMPLX(-0.6971,-0.0000), CMPLX(-0.0867,-0.3548), CMPLX(+0.0560,-0.5400), CMPLX(-0.1878,-0.2253) },
      { CMPLX(-0.2403,-0.0000), CMPLX(-0.0725,+0.2336), CMPLX(+0.2477,+0.5291), CMPLX(-0.7026,-0.2177) },
      { CMPLX(-0.5123,-0.0000), CMPLX(-0.3030,-0.1735), CMPLX(+0.0678,+0.5162), CMPLX(+0.4418,+0.3864) },
      { CMPLX(-0.4403,-0.0000), CMPLX(+0.5294,+0.6361), CMPLX(-0.3027,-0.0346), CMPLX(+0.1667,+0.0258) }
    };
    double complex	expected_LSV[6][4];
    double complex	expected_VH[4][4];

    /* NOTE For some reason that  escapes my comprehension: the expected
       data from the Netlib site has different signs from the ones I get
       here.  Reconstructing the  input matrix from the data  I get here
       works fine, so I trust my results rather than the data at Netlib.
       (Marco Maggi; Sat Jun 21, 2014) */
    for (int i=0; i<6; ++i) {
      for (int j=0; j<2; ++j) {
	expected_LSV[i][j] = netlib_expected_LSV[i][j];
      }
    }
    for (int i=0; i<6; ++i) {
      for (int j=2; j<4; ++j) {
	expected_LSV[i][j] = - netlib_expected_LSV[i][j];
      }
    }

    for (int i=0; i<2; ++i) {
      for (int j=0; j<4; ++j) {
	expected_VH[i][j] = netlib_expected_VH[i][j];
      }
    }
    for (int i=2; i<4; ++i) {
      for (int j=0; j<4; ++j) {
	expected_VH[i][j] = - netlib_expected_VH[i][j];
      }
    }

    doit_in_row_major("Netlib values", 6, 4, MIN(6,4),
		      A, expected_S, expected_LSV, expected_VH);
  }

  exit(exit_code);
}


void
doit_in_row_major (const char * description,
		   const int M, const int N, const int minMN,
		   double complex A[M][N],
		   double         expected_S[N][1],
		   double complex expected_LSV[M][minMN],
		   double complex expected_VH[N][N])
{
  /* Option: return all the M columns of U in the matrix U. */
  const char	jobU	= 'A';
  /* Option: return all the N rows of V^T in the matrix VH. */
  const char	jobVH	= 'A';

  const int	Anrows	= M;
  const int	Ancols	= N;
  const int	ldA	= Ancols;

  /* Operand: a  copy of A  used as actual  parameter to ZGESVD.   It is
     needed because the  parameter is destroyed and we  want to preserve
     the original matrix in A. */
  double complex	A1[Anrows][Ancols];

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
  double complex	U[Unrows][Uncols];

  /* Result:  orthogonal  square  matrix  V  transposed.   The  MIN(M,N)
     columns of V are the right singular vectors. */
  const int		VHnrows	= Ancols;
  const int		VHncols	= Ancols;
  const int		ldVH	= VHncols;
  double complex	VH[VHnrows][VHncols];

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
  double complex	SIGMA[SIGMAnrows][SIGMAncols];

  /* Reconstructed  data: left  singular  vector.  The  columns of  this
     matrix are the MIN(M,N) columns of U. */
  const int		LSVnrows = Anrows;
  const int		LSVncols = MIN(Anrows,Ancols);
  /* const int		ldLSV    = Uncols; */
  double complex	LSV[LSVnrows][LSVncols];

  /* Reconstructed data: matrix A recomputed using the results. */
  double complex	recomputed_A[Anrows][Ancols];

  lapack_int		info;

  /* Load the input matrix A into the working array A1. */
  memcpy(A1, A, sizeof(double complex) * Anrows * Ancols);

  info = LAPACKE_zgesvd(LAPACK_ROW_MAJOR, jobU, jobVH, Anrows, Ancols,
			MREF(A1), ldA, MREF(S), MREF(U), ldU,
			MREF(VH), ldVH, MREF(superB));

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with row-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Result validation by performing  the inverse operation.  We compute
     "recomputed_A" starting from U, S and VH. */
  {
    /* Put the singular values on the main diagonal of SIGMA. */
    for (int i=0; i<Anrows; ++i) {
      for (int j=0; j<Ancols; ++j) {
	SIGMA[i][j] = (i == j)? S[j][0] : CMPLX(+0.0,+0.0);
      }
    }

    /* Put the left singular vectors from U in LSV. */
    for (int i=0; i<LSVnrows; ++i) {
      for (int j=0; j<LSVncols; ++j) {
	LSV[i][j] = U[i][j];
      }
    }

    /* Multiply U  and SIGMA, then  right-multiply the result by  V^H to
     * verify that the result is indeed A; we need CBLAS for this.
     */
    /* In general ZGEMM does:
     *
     *   C = \alpha A B + \beta C
     *
     * where  A, B  and C  are matrices.   We need  to inspect  both the
     * header  file  "cblas.h"  and  the manual  page  "zgemm"  for  the
     * documentation of the parameters; the prototype of "cblas_gemm()"
     * is:
     *
     *    void cblas_dgemm(const enum CBLAS_ORDER Order,
     *                     const enum CBLAS_TRANSPOSE TransA,
     *                     const enum CBLAS_TRANSPOSE TransB,
     *                     const int M, const int N, const int K,
     *                     const void *alpha,
     *                     const void *A, const int lda,
     *                     const void *B, const int ldb,
     *                     const void *beta,
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
     *   R1[M][N] = 1.0 U[M][M] SIGMA[M][N] + 0.0 R1[M][N]
     *   R2[M][N] = 1.0 R1[M][N] VH[N][N]   + 0.0 R2[M][N]
     *
     * where R  is a matrix whose  contents at input are  not important,
     * and whose contents at output are the result of the operation.
     */
    {
      double complex	R1[Ancols][Anrows];
      double complex	R2[Ancols][Anrows];
      double complex	alpha = CMPLX(1.0,0.0);
      double complex	beta  = CMPLX(0.0,0.0);
      cblas_zgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
		  Anrows, Ancols, Uncols,
		  &alpha, MREF(U),  ldU, MREF(SIGMA), ldSIGMA, &beta, MREF(R1), ldA);
      cblas_zgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
      		  Anrows, Ancols, VHnrows,
      		  &alpha, MREF(R1), ldA, MREF(VH),    ldVH,    &beta, MREF(R2), ldA);
      memcpy(recomputed_A, R2, sizeof(double complex) * Anrows * Ancols);
    }
  }

  printf("Results of row-major ZGESVD: %s:\n", description);

  /* Comparison between computed results and expected results. */
  if (1) {
    compare_real_row_major_result_and_expected_result ("S, singular values",
						       Snrows, Sncols, S, expected_S);
    compare_complex_row_major_result_and_expected_result ("recomputed A",
							  Anrows, Ancols, A, recomputed_A);
    compare_complex_row_major_result_and_expected_result ("LSV, matrix of left singular vectors",
							  LSVnrows, LSVncols, LSV, expected_LSV);
    compare_complex_row_major_result_and_expected_result ("V^H, conjugate-transposed matrix of right singular vectors",
							  VHnrows, VHncols, VH, expected_VH);
  }

  /* Result logging */
  {
    print_complex_row_major_matrix ("A, input matrix", Anrows, Ancols, A);
    print_complex_row_major_matrix ("recomputed A (must be equal to the original A)",
				    Anrows, Ancols, recomputed_A);
    if (0) {
      print_complex_row_major_matrix ("A1, output matrix", Anrows, Ancols, A1);
    }
    print_real_row_major_matrix ("S, computed singular values", Snrows, Sncols, S);
    print_complex_row_major_matrix ("SIGMA, matrix having singular values on the main diagonal",
				    SIGMAnrows, SIGMAncols, SIGMA);
    print_complex_row_major_matrix ("U, the MIN(M,N) columns are the left singular vectors",
				    Unrows, Uncols, U);
    print_complex_row_major_matrix ("V conjugate-transposed, the MIN(M,N) rows are the right singular vectors",
				    VHnrows, VHncols, VH);
    print_real_row_major_matrix ("superB", superBnrows, superBncols, superB);
  }
}


void
doit_in_col_major (const char * description,
		   const int M, const int N, const int minMN,
		   double complex A[N][M],
		   double         expected_S[1][N],
		   double complex expected_LSV[minMN][M],
		   double complex expected_VH[N][N])
{
  /* Option: return all the M columns of U in the matrix U. */
  const char	jobU	= 'A';
  /* Option: return all the N rows of V^T in the matrix VH. */
  const char	jobVH	= 'A';

  const int	Anrows	= M;
  const int	Ancols	= N;
  const int	ldA	= Anrows;

  /* Operand: a  copy of A  used as actual  parameter to ZGESVD.   It is
     needed because the  parameter is destroyed and we  want to preserve
     the original matrix in A. */
  double complex	A1[Ancols][Anrows];

  /* Result: the singular values of A.  This vector is equal to the main
     diagonal of SIGMA. */
  const int		Snrows = Ancols;
  const int		Sncols = 1;
  double		S[Sncols][Snrows];

  /* Result: orthogonal square matrix U.   The MIN(M,N) columns of U are
     the left singular vectors. */
  const int		Unrows	= Anrows;
  const int		Uncols	= Anrows;
  const int		ldU	= Unrows;
  double complex	U[Uncols][Unrows];

  /* Result:  orthogonal  square  matrix  V  transposed.   The  MIN(M,N)
     columns of V are the right singular vectors. */
  const int		VHnrows	= Ancols;
  const int		VHncols	= Ancols;
  const int		ldVH	= VHnrows;
  double complex	VH[VHncols][VHnrows];

  /* Result: first  superdiagonal of  an internal  work matrix,  see the
     source code of "LAPACKE_dgesvd()". */
  const int		superBnrows = MIN(Anrows,Ancols) - 1;
  const int		superBncols = 1;
  double		superB[superBncols][superBnrows];

  /* Reconstructed data: matrix  having the singular values  on the main
     diagonal. */
  const int		SIGMAnrows = Anrows;
  const int		SIGMAncols = Ancols;
  const int		ldSIGMA    = SIGMAnrows;
  double complex	SIGMA[SIGMAncols][SIGMAnrows];

  /* Reconstructed  data: left  singular  vector.  The  columns of  this
     matrix are the MIN(M,N) columns of U. */
  const int		LSVnrows = Anrows;
  const int		LSVncols = MIN(Anrows,Ancols);
  /* const int		ldLSV    = Unrows; */
  double complex	LSV[LSVncols][LSVnrows];

  /* Reconstructed data: matrix A recomputed using the results. */
  double complex	recomputed_A[Ancols][Anrows];

  lapack_int		info;

  /* Load the input matrix A into the working array A1. */
  memcpy(A1, A, sizeof(double complex) * Anrows * Ancols);

  info = LAPACKE_zgesvd(LAPACK_COL_MAJOR, jobU, jobVH, Anrows, Ancols,
			MREF(A1), ldA, MREF(S), MREF(U), ldU,
			MREF(VH), ldVH, MREF(superB));

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution with col-major operands: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Result validation by performing  the inverse operation.  We compute
     "recomputed_A" starting from U, S and VH. */
  {
    /* Put the singular values on the main diagonal of SIGMA. */
    for (int i=0; i<Anrows; ++i) {
      for (int j=0; j<Ancols; ++j) {
	SIGMA[j][i] = (i == j)? S[0][j] : CMPLX(+0.0,+0.0);
      }
    }

    /* Put the left singular vectors from U in LSV. */
    for (int i=0; i<LSVnrows; ++i) {
      for (int j=0; j<LSVncols; ++j) {
	LSV[j][i] = U[j][i];
      }
    }

    /* Multiply U  and SIGMA, then  right-multiply the result by  V^H to
     * verify that the result is indeed A; we need CBLAS for this.
     */
    /* In general ZGEMM does:
     *
     *   C = \alpha A B + \beta C
     *
     * where  A, B  and C  are matrices.   We need  to inspect  both the
     * header  file  "cblas.h"  and  the manual  page  "zgemm"  for  the
     * documentation of the parameters; the prototype of "cblas_gemm()"
     * is:
     *
     *    void cblas_dgemm(const enum CBLAS_ORDER Order,
     *                     const enum CBLAS_TRANSPOSE TransA,
     *                     const enum CBLAS_TRANSPOSE TransB,
     *                     const int M, const int N, const int K,
     *                     const void *alpha,
     *                     const void *A, const int lda,
     *                     const void *B, const int ldb,
     *                     const void *beta,
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
     *   R1[N][M] = 1.0 U[M][M] SIGMA[N][M] + 0.0 R1[N][M]
     *   R2[N][M] = 1.0 R1[N][M] VH[N][N]   + 0.0 R2[N][M]
     *
     * where R  is a matrix whose  contents at input are  not important,
     * and whose contents at output are the result of the operation.
     */
    {
      double complex	R1[Ancols][Anrows];
      double complex	R2[Ancols][Anrows];
      double complex	alpha = CMPLX(1.0,0.0);
      double complex	beta  = CMPLX(0.0,0.0);
      cblas_zgemm(CblasColMajor, CblasNoTrans, CblasNoTrans,
		  Anrows, Ancols, Uncols,
		  &alpha, MREF(U),  ldU, MREF(SIGMA), ldSIGMA, &beta, MREF(R1), ldA);
      cblas_zgemm(CblasColMajor, CblasNoTrans, CblasNoTrans,
      		  Anrows, Ancols, VHnrows,
      		  &alpha, MREF(R1), ldA, MREF(VH),    ldVH,    &beta, MREF(R2), ldA);
      memcpy(recomputed_A, R2, sizeof(double complex) * Anrows * Ancols);
    }
  }

  printf("Results of col-major ZGESVD: %s:\n", description);

  /* Comparison between computed results and expected results. */
  if (1) {
    compare_real_col_major_result_and_expected_result ("S, singular values",
						       Snrows, Sncols, S, expected_S);
    compare_complex_col_major_result_and_expected_result ("recomputed A",
							  Anrows, Ancols, A, recomputed_A);
    compare_complex_col_major_result_and_expected_result ("LSV, matrix of left singular vectors",
							  LSVnrows, LSVncols, LSV, expected_LSV);
    compare_complex_col_major_result_and_expected_result ("V^H, conjugate-transposed matrix of right singular vectors",
							  VHnrows, VHncols, VH, expected_VH);
  }

  /* Result logging */
  {
    print_complex_col_major_matrix ("A, input matrix", Anrows, Ancols, A);
    print_complex_col_major_matrix ("recomputed A (must be equal to the original A)",
				    Anrows, Ancols, recomputed_A);
    if (0) {
      print_complex_col_major_matrix ("A1, output matrix", Anrows, Ancols, A1);
    }
    print_real_col_major_matrix ("S, computed singular values", Snrows, Sncols, S);
    print_complex_col_major_matrix ("SIGMA, matrix having singular values on the main diagonal",
				    SIGMAnrows, SIGMAncols, SIGMA);
    print_complex_col_major_matrix ("U, the MIN(M,N) columns are the left singular vectors",
				    Unrows, Uncols, U);
    print_complex_col_major_matrix ("V conjugate-transposed, the MIN(M,N) rows are the right singular vectors",
				    VHnrows, VHncols, VH);
    print_real_col_major_matrix ("superB", superBnrows, superBncols, superB);
  }
}

/* end of file */
