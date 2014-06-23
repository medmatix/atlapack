/* This test program is derived from the documentation of LAPACKE. */


/** --------------------------------------------------------------------
 ** Headers.
 ** ----------------------------------------------------------------- */

#include "atlapack-test-utils.h"

void doit_in_row_major (const char * description,
			const int M, const int N, const int NRHS,
			double A[M][N],
			double B[M][NRHS],
			double expected_X[N][NRHS]);

void doit_in_col_major (const char * description,
			const int M, const int N, const int NRHS,
			double A[N][M],
			double B[NRHS][M],
			double expected_X[NRHS][N]);


int
main (int argc, const char *const argv[])
{
  if (1) {
    double	A[3][3] = {
      { 10.0, 1.0, 2.0 },
      {  3.0, 4.0, 5.0 },
      {  6.0, 7.0, 8.0 }
    };
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
    doit_in_row_major ("small matrix, NRHS=1", 3, 3, 1, A, B, expected_X);
  }
  if (1) {
    double	A[3][3] = {
      { 10.0, 1.0, 2.0 },
      {  3.0, 4.0, 5.0 },
      {  6.0, 7.0, 8.0 }
    };
    double	B[3][2] = {
      { 9.0, 9.0 },
      { 8.0, 8.0 },
      { 7.0, 7.0 }
    };
    double	expected_X[3][2] = {
      {   0.0,       0.0     },
      { -29.0/3.0, -29.0/3.0 },
      { +28.0/3.0, +28.0/3.0 }
    };
    doit_in_row_major ("small matrix, NRHS=2", 3, 3, 2, A, B, expected_X);
  }

/* ------------------------------------------------------------------ */

  if (1) {
    double	A[3][3] = {
      { 10.0, 3.0, 6.0 },
      {  1.0, 4.0, 7.0 },
      {  2.0, 5.0, 8.0 }
    };
    double	B[1][3] = {
      { 9.0, 8.0, 7.0 }
    };
    double	expected_X[1][3] = {
      { 0.0, -29.0/3.0, +28.0/3.0 }
    };
    doit_in_col_major ("small matrix, NRHS=1", 3, 3, 1, A, B, expected_X);
  }
  if (1) {
    double	A[3][3] = {
      { 10.0, 3.0, 6.0 },
      {  1.0, 4.0, 7.0 },
      {  2.0, 5.0, 8.0 }
    };
    double	B[2][3] = {
      { 9.0, 8.0, 7.0 },
      { 9.0, 8.0, 7.0 }
    };
    double	expected_X[2][3] = {
      { 0.0, -29.0/3.0, +28.0/3.0 },
      { 0.0, -29.0/3.0, +28.0/3.0 }
    };
    doit_in_col_major ("small matrix, NRHS=2", 3, 3, 2, A, B, expected_X);
  }

/* ------------------------------------------------------------------ */

  if (1) {
    double	A[6][4] = {
      { -0.57,  -1.28,  -0.39,   0.25 },
      { -1.93,   1.08,  -0.31,  -2.14 },
      {  2.30,   0.24,   0.40,  -0.35 },
      { -1.93,   0.64,  -0.66,   0.08 },
      {  0.15,   0.30,   0.15,  -2.13 },
      { -0.02,   1.03,  -1.43,   0.50 }
    };
    double	B[6][1] = {
      { -2.67 },
      { -0.55 },
      {  3.34 },
      { -0.77 },
      {  0.48 },
      {  4.10 }
    };
    double	expected_X[4][1] = {
      {  1.5339 },
      {  1.8707 },
      { -1.5241 },
      {  0.0392 }
    };

    EPSILON = 0.1;
    doit_in_row_major ("data from Netlib, more rows than columns", 6, 4, 1, A, B, expected_X);
  }

  if (0) {
    double	A[5][3] = {
      { 1.0, 1.0, 1.0 },
      { 2.0, 3.0, 4.0 },
      { 3.0, 5.0, 2.0 },
      { 4.0, 2.0, 5.0 },
      { 5.0, 4.0, 3.0 }
    };
    double	B[5][1] = {
      { -10.0 },
      {  12.0 },
      {  14.0 },
      {  16.0 },
      {  18.0 }
    };
    double	expected_X[3][1] = {
      { 2.0 },
      { 1.0 },
      { 1.0 }
    };

    EPSILON = 0.1;
    doit_in_row_major ("data from LAPACKE user's guide, NRHS=1", 5, 3, 1, A, B, expected_X);
  }

  if (0) {
    double	A[5][3] = {
      { 1.0, 1.0, 1.0 },
      { 2.0, 3.0, 4.0 },
      { 3.0, 5.0, 2.0 },
      { 4.0, 2.0, 5.0 },
      { 5.0, 4.0, 3.0 }
    };
    double	B[5][2] = {
      { -10.0, -3.0 },
      {  12.0, 14.0 },
      {  14.0, 12.0 },
      {  16.0, 16.0 },
      {  18.0, 16.0 }
    };
    double	expected_X[3][2] = {
      { 2.0, 1.0 },
      { 1.0, 1.0 },
      { 1.0, 2.0 }
    };

    EPSILON = 0.1;
    doit_in_row_major ("data from LAPACKE user's guide, NRHS=2", 5, 3, 2, A, B, expected_X);
  }

  exit(exit_code);
}


void
doit_in_row_major (const char * description,
		   const int M, const int N, const int NRHS,
		   double A[M][N],
		   double B[M][NRHS],
		   double expected_X[N][NRHS])
{
  const char	trans	= 'N';

  const int	Anrows	= M;
  const int	Ancols	= N;
  const int	ldA	= Ancols;
  double	A1[Anrows][Ancols];

  const int	Bnrows	= M;
  const int	Bncols	= NRHS;
  const int	ldB	= Bncols;

  const int	Xnrows	= N;
  const int	Xncols	= NRHS;
  /* const int	ldX	= Xncols; */
  double	X[Xnrows][Xncols];

  double	B1[Bnrows][Bncols];
  double	recomputed_B[Bnrows][Bncols];

  lapack_int	info;

  memcpy(A1, A, sizeof(double) * Anrows * Ancols);
  memcpy(B1, B, sizeof(double) * Bnrows * Bncols);

  info	= LAPACKE_dgels(LAPACK_ROW_MAJOR, trans, M, N, NRHS, MREF(A1), ldA, MREF(B1), ldB);

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

  printf("Row-major results of DGELS, %s\n", description);

  /* result checking */
  {
    compare_real_row_major_result_and_expected_result("X, computed unknowns",
						      Xnrows, Xncols, X, expected_X);

    /* Recomputing columns of B. */
    for (int j=0; j<Xncols; ++j) {
      double	alpha = 1.0;
      double	beta  = 0.0;
      double	column_of_X[Xnrows][1];
      double	column_of_B[Bnrows][1];

      for (int i=0; i<Xnrows; ++i) {
	column_of_X[i][0] = X[i][j];
      }
      /* DGEMV does: B = alpha A X + beta B */
      cblas_dgemv(CblasRowMajor, CblasNoTrans,
		  Anrows, Ancols,
		  alpha, MREF(A), ldA, MREF(column_of_X), 1, beta, MREF(column_of_B), 1);
      for (int i=0; i<Bnrows; ++i) {
	recomputed_B[i][j] = column_of_B[i][0];
      }
    }
    compare_real_row_major_result_and_expected_result("recomputed B",
						      Bnrows, Bncols, recomputed_B, B);
  }

  /* result logging */
  if (1) {
    print_real_row_major_matrix("A, original matrix", Anrows, Ancols, A);
    print_real_row_major_matrix("B, right-hand side vectors", Bnrows, Bncols, B);
    print_real_row_major_matrix("recomputed B", Bnrows, Bncols, recomputed_B);
    print_real_row_major_matrix("X, computed unknowns", Xnrows, Xncols, X);
    if (0) {
      print_real_row_major_matrix("X, expected unknowns", Xnrows, Xncols, expected_X);
    }
  }
}


void
doit_in_col_major (const char * description,
		   const int M, const int N, const int NRHS,
		   double A[N][M],
		   double B[NRHS][M],
		   double expected_X[NRHS][N])
{
  const char	trans	= 'N';

  const int	Anrows	= M;
  const int	Ancols	= N;
  const int	ldA	= Anrows;
  double	A1[Ancols][Anrows];

  const int	Bnrows	= M;
  const int	Bncols	= NRHS;
  const int	ldB	= Bnrows;

  const int	Xnrows	= N;
  const int	Xncols	= NRHS;
  /* const int	ldX	= Xnrows; */
  double	X[Xncols][Xnrows];

  double	B1[Bncols][Bnrows];
  double	recomputed_B[Bncols][Bnrows];

  lapack_int	info;

  memcpy(A1, A, sizeof(double) * Anrows * Ancols);
  memcpy(B1, B, sizeof(double) * Bnrows * Bncols);

  info	= LAPACKE_dgels(LAPACK_COL_MAJOR, trans, M, N, NRHS, MREF(A1), ldA, MREF(B1), ldB);

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

  printf("Column-major results of DGELS, %s\n", description);

  /* result checking */
  {
    compare_real_col_major_result_and_expected_result("X, computed unknowns",
						      Xnrows, Xncols, X, expected_X);

    /* Recomputing columns of B. */
    for (int j=0; j<Xncols; ++j) {
      double	alpha = 1.0;
      double	beta  = 0.0;
      double	column_of_X[1][Xnrows];
      double	column_of_B[1][Bnrows];
      const int	incX = 1;
      const int	incB = 1;

      for (int i=0; i<Xnrows; ++i) {
	column_of_X[0][i] = X[j][i];
      }
      /* DGEMV does: B = alpha A X + beta B */
      cblas_dgemv(CblasColMajor, CblasNoTrans,
		  Anrows, Ancols,
		  alpha, MREF(A), ldA, MREF(column_of_X), incX, beta, MREF(column_of_B), incB);
      for (int i=0; i<Bnrows; ++i) {
	recomputed_B[j][i] = column_of_B[0][i];
      }
    }
    compare_real_col_major_result_and_expected_result("recomputed B",
						      Bnrows, Bncols, recomputed_B, B);
  }

  /* result logging */
  if (1) {
    print_real_col_major_matrix("A, original matrix", Anrows, Ancols, A);
    print_real_col_major_matrix("B, right-hand side vectors", Bnrows, Bncols, B);
    print_real_col_major_matrix("recomputed B", Bnrows, Bncols, recomputed_B);
    print_real_col_major_matrix("X, computed unknowns", Xnrows, Xncols, X);
    if (0) {
      print_real_col_major_matrix("X, expected unknowns", Xnrows, Xncols, expected_X);
    }
  }
}

/* end of file */
