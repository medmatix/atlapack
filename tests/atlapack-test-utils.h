/*
  Part of: LAPACK under GNU Autotools
  Contents: test utilities
  Date: Sat May 31, 2014

  Abstract



  Copyright (C) 2014 Marco Maggi <marco.maggi-ipsu@poste.it>

  This program is  free software: you can redistribute  it and/or modify
  it under the  terms of the GNU General Public  License as published by
  the Free Software Foundation, either version  3 of the License, or (at
  your option) any later version.

  This program  is distributed in the  hope that it will  be useful, but
  WITHOUT   ANY  WARRANTY;   without  even   the  implied   warranty  of
  MERCHANTABILITY  or FITNESS  FOR A  PARTICULAR PURPOSE.   See the  GNU
  General Public License for more details.

  You should  have received  a copy  of the  GNU General  Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef ATLAPACK_TEST_UTILS_H
#define ATLAPACK_TEST_UTILS_H 1


/** --------------------------------------------------------------------
 ** Headers.
 ** ----------------------------------------------------------------- */

#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <math.h>
#include <cblas.h>
#include <lapacke.h>


/** --------------------------------------------------------------------
 ** Preprocessor macros.
 ** ----------------------------------------------------------------- */

#define IMIN(I,J)	(((I)<=(J))? (I) : (J))
#define MAX(X,Y)	(((X) > (Y))? (X) : (Y))
#define MIN(X,Y)	(((X) < (Y))? (X) : (Y))

#define INT_SWAP(A,B)			\
  do {					\
    int	tmp = A;			\
    A = B;				\
    B = tmp;				\
  } while (0);

#define REAL_SWAP(A,B)			\
  do {					\
    double	tmp = A;		\
    A = B;				\
    B = tmp;				\
  } while (0);

#define COMPLEX_SWAP(A,B)		\
  do {					\
    double complex	tmp = A;	\
    A = B;				\
    B = tmp;				\
  } while (0);

#define COMPLEX_SWAP_CONJ(A,B)		\
  do {					\
    double complex	tmp = A;	\
    A = conj(B);			\
    B = conj(tmp);			\
  } while (0);

/* This is defined by C11. */
#ifndef CMPLX
#  define CMPLX(REAL,IMAG)	((REAL) + (IMAG) * _Complex_I)
#endif

#define MREF(A)		(&(A)[0][0])
#define VREF(V)		(&(V)[0])


/** --------------------------------------------------------------------
 ** Type definitions.
 ** ----------------------------------------------------------------- */

typedef enum {
  FORWARD_IPIV_APPLICATION	= 0,
  FORWARDS_IPIV_APPLICATION	= 0,
  BACKWARD_IPIV_APPLICATION	= 1,
  BACKWARDS_IPIV_APPLICATION	= 1
} ipiv_direction_t;


/** --------------------------------------------------------------------
 ** Function prototypes.
 ** ----------------------------------------------------------------- */

void print_real_row_major_matrix (const char * matrix_name,
				    const int number_of_rows,
				    const int number_of_cols,
				    double X[number_of_rows][number_of_cols]);
void print_real_col_major_matrix (const char * matrix_name,
				    const int number_of_rows,
				    const int number_of_cols,
				    double X[number_of_cols][number_of_rows]);

void print_complex_row_major_matrix (const char * matrix_name,
				     const int number_of_rows,
				     const int number_of_cols,
				     lapack_complex_double X[number_of_rows][number_of_cols]);
void print_complex_col_major_matrix (const char * matrix_name,
				     const int number_of_rows,
				     const int number_of_cols,
				     lapack_complex_double X[number_of_cols][number_of_rows]);

void print_int_row_major_matrix (const char * matrix_name,
				 const int number_of_rows,
				 const int number_of_cols,
				 int X[number_of_rows][number_of_cols]);
void print_int_col_major_matrix (const char * matrix_name,
				 const int number_of_rows,
				 const int number_of_cols,
				 int X[number_of_cols][number_of_rows]);



/** --------------------------------------------------------------------
 ** Global variables.
 ** ----------------------------------------------------------------- */

static double	EPSILON		= 1e-3;
static int	exit_code	= EXIT_SUCCESS;


/** --------------------------------------------------------------------
 ** Utilities for arrays of integers.
 ** ----------------------------------------------------------------- */

void
integer_matrix_product (const int M, const int N, const int K,
			int R [M][N], int O1[M][K], int O2[K][N])
/* Perform  the row-by-column  matrix multiplication  among matrices  of
 * integers:
 *
 *    R_mn = \sum_{k=1}^K O1_mk O2_kn
 *
 * This function is useful when building permutation matrices.
 */
{
  for (int m=0; m<M; ++m) {
    for (int n=0; n<N; ++n) {
      R[m][n] = 0;
      for (int k=0; k<K; ++k) {
	R[m][n] += O1[m][k] * O2[k][n];
      }
    }
  }
}


/** --------------------------------------------------------------------
 ** Utilities for arrays of doubles.
 ** ----------------------------------------------------------------- */

void
real_row_major_matrix_transpose (int nrows, int ncols,
				 double R[ncols][nrows],
				 double O[nrows][ncols])
/* To call this function we are meant to do:
 *
 *    #define Onrows	2
 *    #define Oncols	3
 *    #define Rnrows	Oncols
 *    #define Rncols	Onrows
 *    double	O[Onrows][Oncols];
 *    double	R[Rnrows][Rncols];
 *    real_matrix_transpose (Onrows, Oncols, &R[0][0], &O[0][0]);
 */
{
  if ((R == O) && (nrows == ncols)) {
    for (unsigned i=0; i<nrows; ++i) {
      for (unsigned j=i+1; j<ncols; ++j) {
	REAL_SWAP(R[j][i], O[i][j]);
      }
    }
  } else {
    for (unsigned i=0; i<nrows; ++i) {
      for (unsigned j=0; j<ncols; ++j) {
	R[j][i] = O[i][j];
      }
    }
  }
}
void
real_col_major_matrix_transpose (int nrows, int ncols,
				 double R[nrows][ncols],
				 double O[ncols][nrows])
/* To call this function we are meant to do:
 *
 *    #define Onrows	2
 *    #define Oncols	3
 *    #define Rnrows	Oncols
 *    #define Rncols	Onrows
 *    double	O[Oncols][Onrows];
 *    double	R[Rncols][Rnrows];
 *    real_matrix_transpose (Onrows, Oncols, &R[0][0], &O[0][0]);
 */
{
  if ((R == O) && (nrows == ncols)) {
    for (unsigned i=0; i<nrows; ++i) {
      for (unsigned j=i+1; j<ncols; ++j) {
	REAL_SWAP(R[i][j], O[j][i]);
      }
    }
  } else {
    for (unsigned i=0; i<nrows; ++i) {
      for (unsigned j=0; j<ncols; ++j) {
	R[i][j] = O[j][i];
      }
    }
  }
}


/** --------------------------------------------------------------------
 ** Comparing arrays.
 ** ----------------------------------------------------------------- */

void
compare_real_row_major_result_and_expected_result (const char * description,
						   const int number_of_rows,
						   const int number_of_cols,
						   double X[number_of_rows][number_of_cols],
						   double R[number_of_rows][number_of_cols])
/* Given two  arrays representing  matrices in row-major  order: compare
   them as result of computation  (X) and expected result of computation
   (R); print log messages to stdout. */
{
  int		error = 0;
  for (int i=0; i<number_of_rows; ++i) {
    for (int j=0; j<number_of_cols; ++j) {
      if (fabs(X[i][j] - R[i][j]) > EPSILON) {
	if (0 == error) {
	  printf("Comparison errors for %dx%d matrix: %s\n(Showing 1-based row and column indices).\n",
		 number_of_rows, number_of_cols, description);
	}
	printf("\tError at (row=%d, col=%d): result = %+10lf, expected = %+10lf\n",
	       1+i, 1+j, X[i][j], R[i][j]);
	error = 1;
      }
    }
  }
  if (error) {
    printf("\tWrong result \"%s\" in row-major computation.\n\n", description);
    exit_code = EXIT_FAILURE;
  } else {
    printf("\tThe result \"%s\" equals the expected one, up to epsilon = %lg.\n\n",
	   description, EPSILON);
  }
}
void
compare_real_col_major_result_and_expected_result (const char * description,
						   const int number_of_rows,
						   const int number_of_cols,
						   double X[number_of_cols][number_of_rows],
						   double R[number_of_cols][number_of_rows])
/* Given two  arrays representing  matrices in row-major  order: compare
   them as result of computation  (X) and expected result of computation
   (R); print log messages to stdout. */
{
  int		error = 0;
  for (int i=0; i<number_of_rows; ++i) {
    for (int j=0; j<number_of_cols; ++j) {
      if (fabs(X[j][i] - R[j][i]) > EPSILON) {
	if (0 == error) {
	  printf("Comparison errors for %dx%d matrix: %s\n(Showing 1-based row and column indices).\n",
		 number_of_rows, number_of_cols, description);
	}
	printf("\tError at (row=%d, col=%d): result = %+10lf, expected = %+10lf\n",
	       1+i, 1+j, X[j][i], R[j][i]);
	error = 1;
      }
    }
  }
  if (error) {
    printf("\tWrong result \"%s\" in row-major computation.\n\n", description);
    exit_code = EXIT_FAILURE;
  } else {
    printf("\tThe result \"%s\" equals the expected one, up to epsilon = %lg.\n\n",
	   description, EPSILON);
  }
}

/* ------------------------------------------------------------------ */

void
compare_complex_row_major_result_and_expected_result (const char * description,
						      const int number_of_rows,
						      const int number_of_cols,
						      lapack_complex_double X[number_of_rows][number_of_cols],
						      lapack_complex_double R[number_of_rows][number_of_cols])
/* Given two  arrays representing  matrices in row-major  order: compare
   them as result of computation  (X) and expected result of computation
   (R); print log messages to stdout. */
{
  int		error = 0;
  for (int i=0; i<number_of_rows; ++i) {
    for (int j=0; j<number_of_cols; ++j) {
      if (cabs(X[i][j] - R[i][j]) > EPSILON) {
	if (0 == error) {
	  printf("Comparison errors for %dx%d matrix: %s\n(Showing 1-based row and column indices).\n",
		 number_of_rows, number_of_cols, description);
	}
	printf("\tError at (row=%d, col=%d): result = %+10lf%-+lfi, expected = %+10lf%-+lfi\n",
	       1+i, 1+j,
	       lapack_complex_double_real(X[i][j]), lapack_complex_double_imag(X[i][j]),
	       lapack_complex_double_real(R[i][j]), lapack_complex_double_imag(R[i][j]));
	error = 1;
      }
    }
  }
  if (error) {
    printf("\tWrong result \"%s\" in row-major computation.\n\n", description);
    exit_code = EXIT_FAILURE;
  } else {
    printf("\tThe result \"%s\" equals the expected one, up to epsilon = %lg.\n\n",
	   description, EPSILON);
  }
}
void
compare_complex_col_major_result_and_expected_result (const char * description,
						      const int number_of_rows,
						      const int number_of_cols,
						      lapack_complex_double X[number_of_cols][number_of_rows],
						      lapack_complex_double R[number_of_cols][number_of_rows])
/* Given two  arrays representing  matrices in row-major  order: compare
   them as result of computation  (X) and expected result of computation
   (R); print log messages to stdout. */
{
  int		error = 0;
  for (int i=0; i<number_of_rows; ++i) {
    for (int j=0; j<number_of_cols; ++j) {
      if (cabs(X[j][i] - R[j][i]) > EPSILON) {
	if (0 == error) {
	  printf("Comparison errors for %dx%d matrix: %s\n(Showing 1-based row and column indices).\n",
		 number_of_rows, number_of_cols, description);
	}
	printf("\tError at (row=%d, col=%d): result = %+10lf%-+lfi, expected = %+10lf%-+lfi\n",
	       1+i, 1+j,
	       lapack_complex_double_real(X[j][i]), lapack_complex_double_imag(X[j][i]),
	       lapack_complex_double_real(R[j][i]), lapack_complex_double_imag(R[j][i]));
	error = 1;
      }
    }
  }
  if (error) {
    printf("\tWrong result \"%s\" in row-major computation.\n\n", description);
    exit_code = EXIT_FAILURE;
  } else {
    printf("\tThe result \"%s\" equals the expected one, up to epsilon = %lg.\n\n",
	   description, EPSILON);
  }
}


/** --------------------------------------------------------------------
 ** Swapping rows.
 ** ----------------------------------------------------------------- */

void
real_row_major_swap_rows (const int nrows, const int ncols,
			  const int row1, const int row2,
			  double A[nrows][ncols])
{
  for (int j=0; j<ncols; ++j) {
    REAL_SWAP(A[row1][j], A[row2][j]);
  }
}
void
real_col_major_swap_rows (const int nrows, const int ncols,
			  const int row1, const int row2,
			  double A[ncols][nrows])
{
  for (int j=0; j<ncols; ++j) {
    REAL_SWAP(A[j][row1], A[j][row2]);
  }
}

/* ------------------------------------------------------------------ */

void
complex_row_major_swap_rows (const int nrows, const int ncols,
			     const int row1, const int row2,
			     complex double A[nrows][ncols])
{
  for (int j=0; j<ncols; ++j) {
    COMPLEX_SWAP(A[row1][j], A[row2][j]);
  }
}
void
complex_col_major_swap_rows (const int nrows, const int ncols,
			     const int row1, const int row2,
			     complex double A[ncols][nrows])
{
  for (int j=0; j<ncols; ++j) {
    REAL_SWAP(A[j][row1], A[j][row2]);
  }
}


/** --------------------------------------------------------------------
 ** Swapping columns.
 ** ----------------------------------------------------------------- */

void
real_row_major_swap_columns (const int nrows, const int ncols,
			     const int col1, const int col2,
			     double A[nrows][ncols])
{
  for (int i=0; i<nrows; ++i) {
    REAL_SWAP(A[i][col1], A[i][col2]);
  }
}
void
real_col_maior_swap_columns (const int nrows, const int ncols,
			     const int col1, const int col2,
			     double A[nrows][ncols])
{
  for (int i=0; i<nrows; ++i) {
    REAL_SWAP(A[col1][i], A[col2][i]);
  }
}

/* ------------------------------------------------------------------ */

void
complex_row_maior_swap_columns (const int nrows, const int ncols,
				const int col1, const int col2,
				complex double A[nrows][ncols])
{
  for (int i=0; i<nrows; ++i) {
    REAL_SWAP(A[i][col1], A[i][col2]);
  }
}
void
complex_col_maior_swap_columns (const int nrows, const int ncols,
				const int col1, const int col2,
				complex double A[nrows][ncols])
{
  for (int i=0; i<nrows; ++i) {
    COMPLEX_SWAP(A[col1][i], A[col2][i]);
  }
}


/** --------------------------------------------------------------------
 ** LU factorisation utilities.
 ** ----------------------------------------------------------------- */

/* Given  an array  representing a  matrix decomposed  in LU  form: fill
 * other arrays with the L elemets  and the U elements.  When "packedLU"
 * is square: the matrices are meant to have the format:
 *
 *               | u11 u12 u13 |
 *    packedLU = | l21 u22 u23 |
 *               | l31 l32 u33 |
 *
 *               |  1   0   0 |
 *           L = | l21  1   0 |
 *               | l31 l32  1 |
 *
 *               | u11 u12 u13 |
 *           U = |  0  u22 u23 |
 *               |  0   0  u33 |
 *
 * When  "packedLU" is  rectangular  with more  rows  than columns:  the
 * matrices are meant to have the format:
 *
 *               | u11 u12 u13 |
 *               | l21 u22 u23 |
 *    packedLU = | l31 l32 u33 |
 *               | l41 l42 l43 |
 *               | l51 l52 l53 |
 *
 *               |  1   0   0  |
 *               | l21  1   0  |
 *           L = | l31 l32  1  |
 *               | l41 l42 l43 |
 *               | l51 l52 l53 |
 *
 *               | u11 u12 u13 |
 *               |  0  u22 u23 |
 *           U = |  0   0  u33 |
 *               |  0   0   0  |
 *               |  0   0   0  |
 *
 * When  "packedLU" is  rectangular  with more  columns  than rows:  the
 * matrices are meant to have the format:
 *
 *               | u11 u12 u13 u14 u15 |
 *    packedLU = | l21 u22 u23 u24 u25 |
 *               | l31 l32 u33 u34 u35 |
 *
 *               |  1   0   0   0   0  |
 *           L = | l21  1   0   0   0  |
 *               | l31 l32  1   0   0  |
 *
 *               | u11 u12 u13 u14 u15 |
 *           U = |  0  u22 u23 u24 u25 |
 *               |  0   0  u33 u34 u35 |
 */

void
real_row_major_split_LU (const int M, const int N, const int K,
			 double packedLU[M][N], double L[M][K], double U[K][N])
{
  for (int i=0; i<M; ++i) {
    for (int j=0; j<K; ++j) {
      if (i < j) {
	L[i][j] = 0.0;
      } else if (i == j) {
	L[i][j] = 1.0;
      } else {
	L[i][j] = packedLU[i][j];
      }
    }
  }
  for (int i=0; i<K; ++i) {
    for (int j=0; j<N; ++j) {
      if (i <= j) {
	U[i][j] = packedLU[i][j];
      } else {
	U[i][j] = 0.0;
      }
    }
  }
}
void
real_col_major_split_LU (const int M, const int N, const int K,
			 double packedLU[N][M], double L[K][M], double U[N][K])
{
  for (int i=0; i<M; ++i) {
    for (int j=0; j<K; ++j) {
      if (i < j) {
	L[j][i] = 0.0;
      } else if (i == j) {
	L[j][i] = 1.0;
      } else {
	L[j][i] = packedLU[j][i];
      }
    }
  }
  for (int i=0; i<K; ++i) {
    for (int j=0; j<N; ++j) {
      if (i <= j) {
	U[j][i] = packedLU[j][i];
      } else {
	U[j][i] = 0.0;
      }
    }
  }
}

/* ------------------------------------------------------------------ */

void
complex_row_major_split_LU (const int M, const int N, const int K,
			    double complex packedLU[M][N],
			    double complex L[M][K],
			    double complex U[K][N])
{
  for (int i=0; i<M; ++i) {
    for (int j=0; j<K; ++j) {
      if (i < j) {
	L[i][j] = 0.0;
      } else if (i == j) {
	L[i][j] = 1.0;
      } else {
	L[i][j] = packedLU[i][j];
      }
    }
  }
  for (int i=0; i<K; ++i) {
    for (int j=0; j<N; ++j) {
      if (i <= j) {
	U[i][j] = packedLU[i][j];
      } else {
	U[i][j] = 0.0;
      }
    }
  }
}
void
complex_col_major_split_LU (const int M, const int N, const int K,
			    double complex packedLU[N][M],
			    double complex L[K][M],
			    double complex U[N][K])
{
  for (int i=0; i<M; ++i) {
    for (int j=0; j<K; ++j) {
      if (i < j) {
	L[j][i] = 0.0;
      } else if (i == j) {
	L[j][i] = 1.0;
      } else {
	L[j][i] = packedLU[j][i];
      }
    }
  }
  for (int i=0; i<K; ++i) {
    for (int j=0; j<N; ++j) {
      if (i <= j) {
	U[j][i] = packedLU[j][i];
      } else {
	U[j][i] = 0.0;
      }
    }
  }
}


/** --------------------------------------------------------------------
 ** IPIV tuples: permutation vector and permutation matrix.
 ** ----------------------------------------------------------------- */

/* Given  the  array IPIV  representing  the  LAPACK's partial  pivoting
 * permutation  indices for  a matrix  factorisation  A =  PLU: build  a
 * permutation vector PERMS and a permutation matrix P.
 *
 * The  rectangular matrix  A  and  LU, to  which  the permutations  are
 * applied, have  dimensions NROWS x  NCOLS.  PERMS has one  element for
 * each row  in LU, so  its dimension is NROWS.   The matrix P  must not
 * change the  dimension of  LU, so  its dimensions  are NROWS  x NROWS.
 * IPIV has dimension MIN(NROWS, NCOLS).
 *
 * The array IPIV has dimension:
 *
 *    IPIV_DIM = MIN(NROWS, NCOLS)
 *
 * such dimension is  guaranteed to be enough to  represent the required
 * permutations to  perform a  factorisation A =  PLU as  implemented by
 * LAPACK; the  dimension of IPIV is  not enough to represent  a general
 * permutation matrix  of dimension NROWS  x NROWS,  but we do  not care
 * here.
 *
 * According to  LAPACK's API:  IPIV contains a  tuple of  1-based pivot
 * indices representing the  sequence of row permutations  to be applied
 * to a matrix A or LU:
 *
 * - If we want  to apply the permutations  to A: we have  to apply them
 *   forwards, from IPIV[0] to IPIV[IPIV_DIM-1].
 *
 * - If we want to  apply the permutations to LU: we  have to apply them
 *   backwards, from IPIV[IPIV_DIM-1] to IPIV[0].
 *
 * We have  to understand  that: in  LAPACK's API  rows and  columns are
 * indexed  starting  from 1,  following  the  Fortran convention;  even
 * though  the  C array  IPIV  is  indexed  from  0 to  IPIV_DIM-1,  the
 * contained indices  are 1-based.  Notice  that it is possible  for the
 * same index to be present multiple times in IPIV.
 *
 * For example, let's say we have LU-factored a matrix A with 6 rows and
 * 4 columns; the  array IPIV has dimension MIN(6,4) =  4; let's say the
 * permutations are represented by the following tuple of pivot indices:
 *
 *    IPIV = {5 6 3 4}
 *
 * in this  array the pivot  index 5 is associated  to row 1,  the pivot
 * index 6 is  associated to row 2,  the pivot index 3  is associated to
 * row 3,  the pivot index 4  is associated to row  4; explicitating the
 * 1-based row indices:
 *
 *    IPIV[1] = 5
 *    IPIV[2] = 6
 *    IPIV[3] = 3
 *    IPIV[4] = 4
 *
 * The meaning of the tuple is that the following sequence of operations
 * must be applied to the matrix A to obtain LU (forwards):
 *
 * 1. First swap row 1 with row 5.
 *
 * 2. Then swap row 2 with row 6.
 *
 * 3. Then swap row 3 with row 3, that is: leave it untouched.
 *
 * 4. Finally swap row 4 with row 4, that is: leave it untouched.
 *
 * and  the following  sequence of  operations  must be  applied to  the
 * matrix LU to obtain A (backwards):
 *
 * 1. First swap row 4 with row 4, that is: leave it untouched.
 *
 * 2. Then swap row 3 with row 3, that is: leave it untouched.
 *
 * 3. Then swap row 2 with row 6.
 *
 * 1. Finally swap row 1 with row 5.
 *
 * So in the IPIV tuple: every  operation that swaps rows is represented
 * once; there is no redundancy.
 *
 * Let's say instead that the matrix A is square with dimension 4 and we
 * got the following array of pivot indices:
 *
 *    IPIV = {4 4 3 4}
 *
 * notice  that  4 appears  multiple  times;  its  meaning is  that  the
 * following sequence of  operations must be applied to the  matrix A to
 * obtain LU (forwards):
 *
 * 1. First swap row 1 with row 4.
 *
 * 2. Then swap row 2 with row 4.
 *
 * 3. Then swap row 3 with row 3, that is: leave it untouched.
 *
 * 4. Finally swap row 4 with row 4, that is: leave it untouched.
 *
 * This function builds a permutation  vector and stores its elements in
 * the array referenced  by PERMS; PERMS has an element  for each row of
 * LU,  so its  dimension is  NROWS.  The  indices stored  in PERMS  are
 * 1-based, like  the ones stored  in IPIV.  The informations  stored in
 * PERMS are  redundant if at  least one permutation is  a non-identity:
 * for every actual swap there are  two elements in PERMS that represent
 * it.  For a 6x4 matrix having IPIV:
 *
 *    IPIV = {5 6 3 4}
 *
 * the permutation vector is:
 *
 *    PERMS = [5 6 3 4 1 2]
 *
 * which means:
 *
 *    | 5 |	swap row 1 with row 5
 *    | 6 |	swap row 2 with row 6
 *    | 3 |	swap row 3 with row 3, leave it untouched
 *    | 4 |	swap row 4 with row 4, leave it untouched
 *    | 1 |	swap row 5 with row 1
 *    | 2 |	swap row 6 with row 2
 *
 * We notice  that the first  MIN(nrows, ncols) elements of  PERMS equal
 * the  corresponding elements  in IPIV,  but in  general this  is *not*
 * true.
 *
 * This  function  also  builds  a permutation  matrix  and  stores  its
 * elements in the array referenced by P.  The rectangular matrix LU has
 * dimensions  NROWS x  NCOLS;  the  permutation matrix  P  is meant  to
 * left-multiply the matrix LU, permuting the rows of LU:
 *
 *    A = P LU
 *
 * and the matrix A has dimensions equal  to LU; so P must be square and
 * have dimensions NROWS x NROWS.
 */

void
row_major_PLU_permutation_matrix_from_ipiv (const int nrows, const int ncols,
					    int * IPIV, int perms[nrows], int P[nrows][nrows])
{
  int	ipiv_dim = MIN(nrows, ncols);
  /* Build  a  permutation  vector  in  which  element  i  declares  the
     permutation performed on row i. */
  {
    /* First initialise PERMS with  the 1-based indexes representing the
       identity permutation. */
    for (int i=0; i<nrows; ++i) {
      perms[i] = 1+i; /* Fortran  has  1-based  indexes, C  has  0-based
			 indexes. */
    }
    /* Then perform the sequence of permutations on PERMS, forwards. */
    for (int idx1=0; idx1<ipiv_dim; ++idx1) {
      int	idx2 = IPIV[idx1] - 1; /* Fortran has 1-based indexes, C
					  has 0-based indexes. */
      INT_SWAP(perms[idx1], perms[idx2]);
    }
  }
  /* Build the square permutation matrix. */
  {
    int		P_dim = nrows;
    /* First build an identity matrix. */
    memset(P, 0, sizeof(int) * P_dim * P_dim);
    for (int i=0; i<P_dim; ++i) {
      P[i][i] = 1;
    }
    /* Then apply IPIV to the rows of the identity matrix, backwards. */
    for (int row1=ipiv_dim-1; row1>=0; --row1) {
      int	row2 = IPIV[row1]-1; /* Fortran  has 1-based  indexes, C
					has 0-based indexes. */
      if (row1 != row2) {
	for (int col=0; col<P_dim; ++col) {
	  INT_SWAP(P[row1][col], P[row2][col]);
	}
      }
    }
  }
}
void
col_major_PLU_permutation_matrix_from_ipiv (const int nrows, const int ncols,
					    int * IPIV, int perms[nrows], int P[nrows][nrows])
{
  int	ipiv_dim = MIN(nrows, ncols);
  /* Build  a  permutation  vector  in  which  element  i  declares  the
     permutation performed on row i. */
  {
    /* First initialise PERMS with  the 1-based indexes representing the
       identity permutation. */
    for (int i=0; i<nrows; ++i) {
      perms[i] = 1+i; /* Fortran  has  1-based  indexes, C  has  0-based
			 indexes. */
    }
    /* Then perform the sequence of permutations on PERMS, forwards. */
    for (int idx1=0; idx1<ipiv_dim; ++idx1) {
      int	idx2 = IPIV[idx1] - 1; /* Fortran has 1-based indexes, C
					  has 0-based indexes. */
      INT_SWAP(perms[idx1], perms[idx2]);
    }
  }
  /* Build the square permutation matrix. */
  {
    int		P_dim = nrows;
    /* First build an identity matrix. */
    memset(P, 0, sizeof(int) * P_dim * P_dim);
    for (int i=0; i<nrows; ++i) {
      P[i][i] = 1;
    }
    /* Then apply IPIV to the rows of the identity matrix, backwards. */
    for (int row1=ipiv_dim-1; row1>=0; --row1) {
      int	row2 = IPIV[row1]-1; /* Fortran  has 1-based  indexes, C
					has 0-based indexes. */
      if (row1 != row2) {
	for (int col=0; col<P_dim; ++col) {
	  INT_SWAP(P[col][row1], P[col][row2]);
	}
      }
    }
  }
}


/** --------------------------------------------------------------------
 ** IPIV tuples application.
 ** ----------------------------------------------------------------- */

/* All the following  functions apply to the matrix SRC  the sequence of
 * row permutations described by IPIV and store the result in the matrix
 * DST.
 *
 * The  permutations  can  be  applied  forwards  or  backwards.   In  a
 * factorisation A = PLU, where  P is the permutation matrix represented
 * by IPIV:
 *
 * - The forwards application transforms A into LU.
 *
 * - The backwards application transforms LU into A.
 */

void
real_row_major_apply_ipiv (const int nrows, const int ncols,
			   int * ipiv, ipiv_direction_t direction,
			   double DST[nrows][ncols],
			   double SRC[nrows][ncols])
{
  int	ipiv_dim = MIN(nrows, ncols);
  memcpy(DST, SRC, sizeof(double) * nrows * ncols);
  if (FORWARD_IPIV_APPLICATION == direction) {
    for (int i=0; i<ipiv_dim; ++i) {
      real_row_major_swap_rows(nrows, ncols, i, ipiv[i]-1, DST);
    }
  } else {
    for (int i=ipiv_dim-1; i>=0; --i) {
      real_row_major_swap_rows(nrows, ncols, i, ipiv[i]-1, DST);
    }
  }
}
void
real_col_major_apply_ipiv (const int nrows, const int ncols,
			   int * ipiv, ipiv_direction_t direction,
			   double DST[ncols][nrows],
			   double SRC[ncols][nrows])
{
  int	ipiv_dim = MIN(nrows, ncols);
  memcpy(DST, SRC, sizeof(double) * nrows * ncols);
  if (FORWARD_IPIV_APPLICATION == direction) {
    for (int i=0; i<ipiv_dim; ++i) {
      real_col_major_swap_rows(nrows, ncols, i, ipiv[i]-1, DST);
    }
  } else {
    for (int i=ipiv_dim-1; i>=0; --i) {
      real_col_major_swap_rows(nrows, ncols, i, ipiv[i]-1, DST);
    }
  }
}

/* ------------------------------------------------------------------ */

void
complex_row_major_apply_ipiv (const int nrows, const int ncols,
			      int * ipiv, ipiv_direction_t direction,
			      double complex DST[nrows][ncols],
			      double complex SRC[nrows][ncols])
{
  int	ipiv_dim = MIN(nrows, ncols);
  memcpy(DST, SRC, sizeof(double complex) * nrows * ncols);
  if (FORWARD_IPIV_APPLICATION == direction) {
    for (int i=0; i<ipiv_dim; ++i) {
      complex_row_major_swap_rows(nrows, ncols, i, ipiv[i]-1, DST);
    }
  } else {
    for (int i=ipiv_dim-1; i>=0; --i) {
      complex_row_major_swap_rows(nrows, ncols, i, ipiv[i]-1, DST);
    }
  }
}
void
complex_col_major_apply_ipiv (const int nrows, const int ncols,
			      int * ipiv, ipiv_direction_t direction,
			      double complex DST[ncols][nrows],
			      double complex SRC[ncols][nrows])
{
  int	ipiv_dim = MIN(nrows, ncols);
  memcpy(DST, SRC, sizeof(double complex) * nrows * ncols);
  if (FORWARD_IPIV_APPLICATION == direction) {
    for (int i=0; i<ipiv_dim; ++i) {
      complex_col_major_swap_rows(nrows, ncols, i, ipiv[i]-1, DST);
    }
  } else {
    for (int i=ipiv_dim-1; i>=0; --i) {
      complex_col_major_swap_rows(nrows, ncols, i, ipiv[i]-1, DST);
    }
  }
}


/** --------------------------------------------------------------------
 ** Permutation matrix application.
 ** ----------------------------------------------------------------- */

/* All the  following functions  apply the permutation  matrix P  to the
 * matrix BEFORE, obtaining the matrix AFTER.  We do the product:
 *
 *    [AFTER_ij] = [P_ik][BEFORE_kj]
 *
 * that is:
 *
 *    AFTER_ij = \sum_{k=1}^M P_ik BEFORE_kj
 */

void
real_row_major_apply_permutation_matrix (const int nrows, const int ncols,
					 double AFTER  [nrows][ncols],
					 int    P      [nrows][nrows],
					 double BEFORE [nrows][ncols])
{
  for (int i=0; i<nrows; ++i) {
    for (int j=0; j<ncols; ++j) {
      AFTER[i][j] = 0.0;
      for (int k=0; k<nrows; ++k) {
	if (1 == P[i][k]) {
	  AFTER[i][j] += BEFORE[k][j];
	}
      }
    }
  }
}
void
real_col_major_apply_permutation_matrix (const int nrows, const int ncols,
					 double AFTER  [ncols][nrows],
					 int    P      [nrows][nrows],
					 double BEFORE [ncols][nrows])
{
  for (int i=0; i<nrows; ++i) {
    for (int j=0; j<ncols; ++j) {
      AFTER[j][i] = 0.0;
      for (int k=0; k<nrows; ++k) {
	if (1 == P[k][i]) {
	  AFTER[j][i] += BEFORE[j][k];
	}
      }
    }
  }
}

/* ------------------------------------------------------------------ */

void
complex_row_major_apply_permutation_matrix (const int nrows, const int ncols,
					    lapack_complex_double AFTER  [nrows][ncols],
					    int                   P      [nrows][nrows],
					    lapack_complex_double BEFORE [nrows][ncols])
{
  for (int i=0; i<nrows; ++i) {
    for (int j=0; j<ncols; ++j) {
      AFTER[i][j] = lapack_make_complex_double(0.0,0.0);
      for (int k=0; k<nrows; ++k) {
	if (1 == P[i][k]) {
	  AFTER[i][j] += BEFORE[k][j];
	}
      }
    }
  }
}
void
complex_col_major_apply_permutation_matrix (const int nrows, const int ncols,
					    lapack_complex_double AFTER  [ncols][nrows],
					    int                   P      [nrows][nrows],
					    lapack_complex_double BEFORE [ncols][nrows])
{
  for (int i=0; i<nrows; ++i) {
    for (int j=0; j<ncols; ++j) {
      AFTER[j][i] = lapack_make_complex_double(0.0,0.0);
      for (int k=0; k<nrows; ++k) {
	if (1 == P[k][i]) {
	  AFTER[j][i] += BEFORE[j][k];
	}
      }
    }
  }
}


/** --------------------------------------------------------------------
 ** Printing functions: matrices of doubles.
 ** ----------------------------------------------------------------- */

void
print_real_row_major_matrix (const char * matrix_name,
			     const int number_of_rows,
			     const int number_of_cols,
			     double X[number_of_rows][number_of_cols])
/* Given an array  representing a matrix in row-major  order: display it
   to stdout in row-major order. */
{
  printf("\tRow-major matrix %s\n\t(dimension %d x %d) (displayed in row-major order):\n",
	 matrix_name, number_of_rows, number_of_cols);
  for (int i=0; i<number_of_rows; ++i) {
    int		j = 0;
    printf("\t| (%d,%d) %+10lf ", 1+i, 1+j, X[i][j]);
    for (++j; j<number_of_cols; ++j) {
      printf("  (%d,%d) %+10lf ", 1+i, 1+j, X[i][j]);
    }
    printf(" |\n");
  }
  printf("\n");
}
void
print_real_col_major_matrix (const char * matrix_name,
			       const int number_of_rows,
			       const int number_of_cols,
			       double X[number_of_cols][number_of_rows])
/* Given an array  representing a matrix in col-major  order: display it
   to stdout in row-major order. */
{
  printf("\tCol-major matrix %s\n\t(dimension %d x %d) (displayed in row-major order):\n",
	 matrix_name, number_of_rows, number_of_cols);
  for (int i=0; i<number_of_rows; ++i) {
    int		j = 0;
    printf("\t| (%d,%d) %+10lf ", 1+i, 1+j, X[j][i]);
    for (++j; j<number_of_cols; ++j) {
      printf("  (%d,%d) %+10lf ", 1+i, 1+j, X[j][i]);
    }
    printf(" |\n");
  }
  printf("\n");
}

/* ------------------------------------------------------------------ */

void
print_complex_row_major_matrix (const char * matrix_name,
				const int number_of_rows,
				const int number_of_cols,
				lapack_complex_double X[number_of_rows][number_of_cols])
/* Given an array  representing a matrix in row-major  order: display it
   to stdout in row-major order. */
{
  printf("\tRow-major matrix %s\n\t(dimension %d x %d) (displayed in row-major order):\n",
	 matrix_name, number_of_rows, number_of_cols);
  for (int i=0; i<number_of_rows; ++i) {
    int		j = 0;
    printf("\t| (%d,%d) %+10lf%-+lfi ", 1+i, 1+j,
	   lapack_complex_double_real(X[i][j]),
	   lapack_complex_double_imag(X[i][j]));
    for (++j; j<number_of_cols; ++j) {
      printf("  (%d,%d) %+10lf%-+lfi ", 1+i, 1+j,
	     lapack_complex_double_real(X[i][j]),
	     lapack_complex_double_imag(X[i][j]));
    }
    printf(" |\n");
  }
  printf("\n");
}
void
print_complex_col_major_matrix (const char * matrix_name,
				const int number_of_rows,
				const int number_of_cols,
				lapack_complex_double X[number_of_cols][number_of_rows])
/* Given an array  representing a matrix in col-major  order: display it
   to stdout in row-major order. */
{
  printf("\tCol-major matrix %s\n\t(dimension %d x %d) (displayed in row-major order):\n",
	 matrix_name, number_of_rows, number_of_cols);
  for (int i=0; i<number_of_rows; ++i) {
    int		j = 0;
    printf("\t| (%d,%d) %+10lf%-+lfi ", 1+i, 1+j,
	   lapack_complex_double_real(X[j][i]),
	   lapack_complex_double_imag(X[j][i]));
    for (++j; j<number_of_cols; ++j) {
      printf("  (%d,%d) %+10lf%-+lfi ", 1+i, 1+j,
	     lapack_complex_double_real(X[j][i]),
	     lapack_complex_double_imag(X[j][i]));
    }
    printf(" |\n");
  }
  printf("\n");
}


/** --------------------------------------------------------------------
 ** Printing functions: matrices of integers.
 ** ----------------------------------------------------------------- */

void
print_int_row_major_matrix (const char * matrix_name,
			    const int number_of_rows,
			    const int number_of_cols,
			    int X[number_of_rows][number_of_cols])
/* Given an array  representing a matrix in row-major  order: display it
   to stdout in row-major order. */
{
  printf("\tRow-major matrix %s\n\t(dimension %d x %d) (displayed in row-major order):\n",
	 matrix_name, number_of_rows, number_of_cols);
  for (int i=0; i<number_of_rows; ++i) {
    int		j = 0;
    printf("\t| (%d,%d) %d ", 1+i, 1+j, X[i][j]);
    for (++j; j<number_of_cols; ++j) {
      printf("  (%d,%d) %d ", 1+i, 1+j, X[i][j]);
    }
    printf(" |\n");
  }
  printf("\n");
}
void
print_int_col_major_matrix (const char * matrix_name,
			    const int number_of_rows,
			    const int number_of_cols,
			    int X[number_of_cols][number_of_rows])
/* Given an array  representing a matrix in col-major  order: display it
   to stdout in row-major order. */
{
  printf("\tColumn-major matrix %s\n\t(dimension %d x %d) (displayed in row-major order):\n",
	 matrix_name, number_of_rows, number_of_cols);
  for (int i=0; i<number_of_rows; ++i) {
    int		j = 0;
    printf("\t| (%d,%d) %d ", 1+i, 1+j, X[j][i]);
    for (++j; j<number_of_cols; ++j) {
      printf("  (%d,%d) %d ", 1+i, 1+j, X[j][i]);
    }
    printf(" |\n");
  }
  printf("\n");
}


/** --------------------------------------------------------------------
 ** IPIV tuples: printing.
 ** ----------------------------------------------------------------- */

void
print_row_major_PLU_partial_pivoting_vectors_and_matrix (const int nrows, const int ncols,
							 int * ipiv,
							 int perms[nrows],
							 int P[nrows][nrows])
/* Print the  IPIV array, the PERMS  array and the permutation  matrix P
   associated  to a  A =  PLU factorisation  in which  the matrix  A has
   dimensions NROWS x NCOLS. */
{
  int	ipiv_dim = MIN(nrows, ncols);
  printf("\tLAPACK's partial pivoting vector, sequence of permutations,\n\t1-based indexes:\n");
  {
    int		i = 0;
    printf("\t| (%d) %d | first swap line %d with line %d", 1+i, ipiv[i], 1+i, ipiv[i]);
    if ((1+i) == ipiv[i]) {
      printf(", leave it untouched\n");
    } else {
      printf("\n");
    }
    for (++i; i<ipiv_dim; ++i) {
      printf("\t| (%d) %d | then  swap line %d with line %d", 1+i, ipiv[i], 1+i, ipiv[i]);
      if ((1+i) == ipiv[i]) {
	printf(", leave it untouched\n");
      } else {
	printf("\n");
      }
    }
  }
  printf("\tpermutations vector, every index represents the row permutation,\n\t1-based indexes:\n");
  for (int i=0; i<nrows; ++i) {
    printf("\t| (%d) %d | line %d is swapped with line %d", 1+i, perms[i], 1+i, perms[i]);
    if ((1+i) == perms[i]) {
      printf(", left untouched\n");
    } else {
      printf("\n");
    }
  }
  print_int_row_major_matrix("P permutation of A', where: A = P A' = P L U",
			     nrows, nrows, P);
}
void
print_col_major_PLU_partial_pivoting_vectors_and_matrix (const int nrows, const int ncols,
							 int * ipiv,
							 int perms[nrows],
							 int P[nrows][nrows])
{
  int	ipiv_dim = MIN(nrows, ncols);
  printf("\tLAPACK's partial pivoting vector, sequence of permutations,\n\t1-based indexes:\n");
  {
    int		i = 0;
    printf("\t| (%d) %d | first swap line %d with line %d", 1+i, ipiv[i], 1+i, ipiv[i]);
    if ((1+i) == ipiv[i]) {
      printf(", leave it untouched\n");
    } else {
      printf("\n");
    }
    for (++i; i<ipiv_dim; ++i) {
      printf("\t| (%d) %d | then  swap line %d with line %d", 1+i, ipiv[i], 1+i, ipiv[i]);
      if ((1+i) == ipiv[i]) {
	printf(", leave it untouched\n");
      } else {
	printf("\n");
      }
    }
  }
  printf("\tpermutations vector, every index represents the row permutation,\n\t1-based indexes:\n");
  for (int i=0; i<nrows; ++i) {
    printf("\t| (%d) %d | line %d is swapped with with line %d", 1+i, perms[i], 1+i, perms[i]);
    if ((1+i) == perms[i]) {
      printf(", leave it untouched\n");
    } else {
      printf("\n");
    }
  }
  print_int_col_major_matrix("P permutation of A', where: A = P A' = P L U",
			     nrows, nrows, P);
}


/** --------------------------------------------------------------------
 ** Done.
 ** ----------------------------------------------------------------- */

#endif /* ATLAPACK_TEST_UTILS_H */

/* end of file */
