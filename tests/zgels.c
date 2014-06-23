/* This test program is built from  examples from the Net.  See both the
 * manual page for the Fortran routine zgels(3) and the prototype of the
 * C function "LAPACKE_zgels()" in the header file "lapacke.h"; see also
 * the manual  page dgemv(3),  which is  installed along  with ATLAPACK,
 * which documents the BLAS routine  DGEMV and the header file "cblas.h"
 * for the prototype of "cblas_dgemv()".
 */


/** --------------------------------------------------------------------
 ** Headers.
 ** ----------------------------------------------------------------- */

#include "atlapack-test-utils.h"

void doit_in_row_major (const char * description,
			const int M, const int N, const int NRHS,
			double complex A[M][N],
			double complex B[M][NRHS],
			double complex expected_X[N][NRHS]);

void doit_in_col_major (const char * description,
			const int M, const int N, const int NRHS,
			double complex A[N][M],
			double complex B[NRHS][M],
			double complex expected_X[NRHS][N]);


int
main (int argc, const char *const argv[])
{
  if (1) {
    double complex	A[3][3] = {
      { CMPLX(10.0,0.0), CMPLX(1.0,0.0), CMPLX(2.0,0.0) },
      {  CMPLX(3.0,0.0), CMPLX(4.0,0.0), CMPLX(5.0,0.0) },
      {  CMPLX(6.0,0.0), CMPLX(7.0,0.0), CMPLX(8.0,0.0) }
    };
    double complex	B[3][1] = {
      { CMPLX(9.0,0.0) },
      { CMPLX(8.0,0.0) },
      { CMPLX(7.0,0.0) }
    };
    double complex	expected_X[3][1] = {
      {   CMPLX(0.0,0.0)     },
      { CMPLX(-29.0/3.0,0.0) },
      { CMPLX(+28.0/3.0,0.0) }
    };
    doit_in_row_major ("small matrix, NRHS=1", 3, 3, 1, A, B, expected_X);
  }
  if (1) {
    double complex	A[3][3] = {
      { CMPLX(10.0,0.0), CMPLX(1.0,0.0), CMPLX(2.0,0.0) },
      {  CMPLX(3.0,0.0), CMPLX(4.0,0.0), CMPLX(5.0,0.0) },
      {  CMPLX(6.0,0.0), CMPLX(7.0,0.0), CMPLX(8.0,0.0) }
    };
    double complex	B[3][2] = {
      { CMPLX(9.0,0.0), CMPLX(9.0,0.0) },
      { CMPLX(8.0,0.0), CMPLX(8.0,0.0) },
      { CMPLX(7.0,0.0), CMPLX(7.0,0.0) }
    };
    double complex	expected_X[3][2] = {
      {   CMPLX(0.0,0.0),       CMPLX(0.0,0.0)     },
      { CMPLX(-29.0/3.0,0.0), CMPLX(-29.0/3.0,0.0) },
      { CMPLX(+28.0/3.0,0.0), CMPLX(+28.0/3.0,0.0) }
    };
    doit_in_row_major ("small matrix, NRHS=2", 3, 3, 2, A, B, expected_X);
  }

/* ------------------------------------------------------------------ */

  if (1) {
    double complex	A[3][3] = {
      { CMPLX(10.0,0.0), CMPLX(3.0,0.0), CMPLX(6.0,0.0) },
      {  CMPLX(1.0,0.0), CMPLX(4.0,0.0), CMPLX(7.0,0.0) },
      {  CMPLX(2.0,0.0), CMPLX(5.0,0.0), CMPLX(8.0,0.0) }
    };
    double complex	B[1][3] = {
      { CMPLX(9.0,0.0), CMPLX(8.0,0.0), CMPLX(7.0,0.0) }
    };
    double complex	expected_X[1][3] = {
      { CMPLX(0.0,0.0), CMPLX(-29.0/3.0,0.0), CMPLX(+28.0/3.0,0.0) }
    };
    doit_in_col_major ("small matrix, NRHS=1", 3, 3, 1, A, B, expected_X);
  }
  if (1) {
    double complex	A[3][3] = {
      { CMPLX(10.0,0.0), CMPLX(3.0,0.0), CMPLX(6.0,0.0) },
      {  CMPLX(1.0,0.0), CMPLX(4.0,0.0), CMPLX(7.0,0.0) },
      {  CMPLX(2.0,0.0), CMPLX(5.0,0.0), CMPLX(8.0,0.0) }
    };
    double complex	B[2][3] = {
      { CMPLX(9.0,0.0), CMPLX(8.0,0.0), CMPLX(7.0,0.0) },
      { CMPLX(9.0,0.0), CMPLX(8.0,0.0), CMPLX(7.0,0.0) }
    };
    double complex	expected_X[2][3] = {
      { CMPLX(0.0,0.0), CMPLX(-29.0/3.0,0.0), CMPLX(+28.0/3.0,0.0) },
      { CMPLX(0.0,0.0), CMPLX(-29.0/3.0,0.0), CMPLX(+28.0/3.0,0.0) }
    };
    doit_in_col_major ("small matrix, NRHS=2", 3, 3, 2, A, B, expected_X);
  }

  exit(exit_code);
}


void
doit_in_row_major (const char * description,
		   const int M, const int N, const int NRHS,
		   double complex A[M][N],
		   double complex B[M][NRHS],
		   double complex expected_X[N][NRHS])
{
  const char	trans	= 'N';

  const int	Anrows	= M;
  const int	Ancols	= N;
  const int	ldA	= Ancols;
  double complex	A1[Anrows][Ancols];

  const int	Bnrows	= M;
  const int	Bncols	= NRHS;
  const int	ldB	= Bncols;

  const int	Xnrows	= N;
  const int	Xncols	= NRHS;
  /* const int	ldX	= Xncols; */
  double complex	X[Xnrows][Xncols];

  double complex	B1[Bnrows][Bncols];
  double complex	recomputed_B[Bnrows][Bncols];

  lapack_int	info;

  memcpy(A1, A, sizeof(double complex) * Anrows * Ancols);
  memcpy(B1, B, sizeof(double complex) * Bnrows * Bncols);

  info	= LAPACKE_zgels(LAPACK_ROW_MAJOR, trans, M, N, NRHS, MREF(A1), ldA, MREF(B1), ldB);

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Extract the actual unknowns: from B1 to X. */
  for (int i=0; i<Xnrows; ++i) {
    for (int j=0; j<Xncols; ++j) {
      X[i][j] = B1[i][j];
    }
  }

  printf("Row-major results of ZGELS, %s\n", description);

  /* result checking */
  {
    compare_complex_row_major_result_and_expected_result("X, computed unknowns",
							 Xnrows, Xncols, X, expected_X);

    /* Recomputing columns of B. */
    for (int j=0; j<Xncols; ++j) {
      double complex	alpha = CMPLX(1.0,0.0);
      double complex	beta  = CMPLX(0.0,0.0);
      double complex	column_of_X[Xnrows][1];
      double complex	column_of_B[Bnrows][1];

      for (int i=0; i<Xnrows; ++i) {
	column_of_X[i][0] = X[i][j];
      }
      /* ZGEMV does: B = alpha A X + beta B */
      cblas_zgemv(CblasRowMajor, CblasNoTrans,
		  Anrows, Ancols,
		  &alpha, MREF(A), ldA, MREF(column_of_X), 1, &beta, MREF(column_of_B), 1);
      for (int i=0; i<Bnrows; ++i) {
	recomputed_B[i][j] = column_of_B[i][0];
      }
    }
    compare_complex_row_major_result_and_expected_result("recomputed B",
							 Bnrows, Bncols, recomputed_B, B);
  }

  /* result logging */
  if (1) {
    print_complex_row_major_matrix("A, original matrix", Anrows, Ancols, A);
    print_complex_row_major_matrix("B, right-hand side vectors", Bnrows, Bncols, B);
    print_complex_row_major_matrix("recomputed B", Bnrows, Bncols, recomputed_B);
    print_complex_row_major_matrix("X, computed unknowns", Xnrows, Xncols, X);
    if (0) {
      print_complex_row_major_matrix("X, expected unknowns", Xnrows, Xncols, expected_X);
    }
  }
}


void
doit_in_col_major (const char * description,
		   const int M, const int N, const int NRHS,
		   double complex A[N][M],
		   double complex B[NRHS][M],
		   double complex expected_X[NRHS][N])
{
  const char	trans	= 'N';

  const int	Anrows	= M;
  const int	Ancols	= N;
  const int	ldA	= Anrows;
  double complex	A1[Ancols][Anrows];

  const int	Bnrows	= M;
  const int	Bncols	= NRHS;
  const int	ldB	= Bnrows;

  const int	Xnrows	= N;
  const int	Xncols	= NRHS;
  /* const int	ldX	= Xnrows; */
  double complex	X[Xncols][Xnrows];

  double complex	B1[Bncols][Bnrows];
  double complex	recomputed_B[Bncols][Bnrows];

  lapack_int	info;

  memcpy(A1, A, sizeof(double complex) * Anrows * Ancols);
  memcpy(B1, B, sizeof(double complex) * Bnrows * Bncols);

  info	= LAPACKE_zgels(LAPACK_COL_MAJOR, trans, M, N, NRHS, MREF(A1), ldA, MREF(B1), ldB);

  /* If something went wrong in the function call INFO is non-zero: exit
     with failure. */
  if (0 != info) {
    printf("Error computing solution: INFO=%d.\n", info);
    exit(EXIT_FAILURE);
  }

  /* Extract the actual unknowns: from B1 to X. */
  for (int i=0; i<Xnrows; ++i) {
    for (int j=0; j<Xncols; ++j) {
      X[j][i] = B1[j][i];
    }
  }

  printf("Column-major results of ZGELS, %s\n", description);

  /* result checking */
  {
    compare_complex_col_major_result_and_expected_result("X, computed unknowns",
							 Xnrows, Xncols, X, expected_X);

    /* Recomputing columns of B. */
    for (int j=0; j<Xncols; ++j) {
      double complex	alpha = 1.0;
      double complex	beta  = 0.0;
      double complex	column_of_X[1][Xnrows];
      double complex	column_of_B[1][Bnrows];
      const int	incX = 1;
      const int	incB = 1;

      for (int i=0; i<Xnrows; ++i) {
	column_of_X[0][i] = X[j][i];
      }
      /* ZGEMV does: B = alpha A X + beta B */
      cblas_zgemv(CblasColMajor, CblasNoTrans,
		  Anrows, Ancols,
		  &alpha, MREF(A), ldA, MREF(column_of_X), incX, &beta, MREF(column_of_B), incB);
      for (int i=0; i<Bnrows; ++i) {
	recomputed_B[j][i] = column_of_B[0][i];
      }
    }
    compare_complex_col_major_result_and_expected_result("recomputed B",
							 Bnrows, Bncols, recomputed_B, B);
  }

  /* result logging */
  if (1) {
    print_complex_col_major_matrix("A, original matrix", Anrows, Ancols, A);
    print_complex_col_major_matrix("B, right-hand side vectors", Bnrows, Bncols, B);
    print_complex_col_major_matrix("recomputed B", Bnrows, Bncols, recomputed_B);
    print_complex_col_major_matrix("X, computed unknowns", Xnrows, Xncols, X);
    if (0) {
      print_complex_col_major_matrix("X, expected unknowns", Xnrows, Xncols, expected_X);
    }
  }
}

/* end of file */
