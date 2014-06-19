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


/** --------------------------------------------------------------------
 ** Preprocessor macros.
 ** ----------------------------------------------------------------- */

#define IMIN(I,J)	(((I)<=(J))? (I) : (J))
#define MIN(X,Y)	(((X) < (Y))? (X) : (Y))

#define INT_SWAP(A,B)			\
  do {					\
    int	tmp = A;			\
    A = B;				\
    B = tmp;				\
  } while (0);

/* This is defined by C11. */
#ifndef CMPLX
#  define CMPLX(REAL,IMAG)	((REAL) + (IMAG) * _Complex_I)
#endif

#define MREF(A)		(&(A)[0][0])
#define VREF(V)		(&(V)[0])


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
 ** Comparing arrays.
 ** ----------------------------------------------------------------- */

void
compare_real_row_major_result_and_expected_result (const char * description,
						     const lapack_int number_of_rows,
						     const lapack_int number_of_cols,
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
						     const lapack_int number_of_rows,
						     const lapack_int number_of_cols,
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
						      const lapack_int number_of_rows,
						      const lapack_int number_of_cols,
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
						      const lapack_int number_of_rows,
						      const lapack_int number_of_cols,
						      lapack_complex_double X[number_of_cols][number_of_rows],
						      lapack_complex_double R[number_of_cols][number_of_rows])
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
 ** LU factorisation utilities.
 ** ----------------------------------------------------------------- */

void
real_row_major_split_LU (const int Arows, const int Acols, const int K,
			 double packedLU[Arows][Acols],
			 double L[Arows][K],
			 double U[K][Acols])
/* Given  an array  representing a  matrix decomposed  in LU  form: fill
 * other arrays with the L elemets  and the U elements.  When "packedLU"
 * is square: the matrices are meant to have the format:
 *
 *    | u_11 u_12 u_13 |    |  1     0   0 |    | u_11 u_12 u_13 |
 *    | l_21 u_22 u_23 |  L=| l_21   1   0 |  U=|  0   u_22 u_23 |
 *    | l_31 l_32 u_33 |    | l_31 l_32  1 |    |  0    0   u_33 |
 *
 * When "packedLU" has more rows than columns: the matrices are meant to
 * have the format:
 *
 *    | u_11 u_12 u_13 |    |  1    0    0   |    | u_11 u_12 u_13 |
 *    | l_21 u_22 u_23 |  L=| l_21  0    0   |  U=|  0   u_22 u_23 |
 *    | l_31 l_32 u_33 |    | l_31 l_32  1   |    |  0    0    0   |
 *    | l_41 l_42 l_43 |    | l_41 l_42 l_43 |    |  0    0    0   |
 *
 * When "packedLU" has more columns than rows: the matrices are meant to
 * have the format:
 *
 *    | u_11 u_12 u_13 u_14 |    |  1    0    0    0 |    | u_11 u_12 u_13 u_14 |
 *    | l_21 u_22 u_23 u_24 |  L=| l_21  1    0    0 |  U=|  0   u_22 u_23 u_24 |
 *    | l_31 l_32 u_33 u_34 |    | l_31 l_32  1    0 |    |  0    0   u_33 u_34 |
 *
 */
{
  for (int i=0; i<Arows; ++i) {
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
    for (int j=0; j<Acols; ++j) {
      if (i <= j) {
	U[i][j] = packedLU[i][j];
      } else {
	U[i][j] = 0.0;
      }
    }
  }
}
void
real_col_major_split_LU (const int Arows, const int Acols, const int K,
			 double packedLU[Acols][Arows],
			 double L[K][Arows],
			 double U[Acols][K])
/* Given  an array  representing A  matrix decomposed  in LU  form: fill
 * other arrays with the L elemets and the U elements.  The matrices are
 * meant to have the format:
 *
 *    | u_11 u_12 u_13 |    |  1     0   0 |    | u_11 u_12 u_13 |
 *  A=| l_21 u_22 u_23 |  L=| l_21   1   0 |  U=|  0   u_22 u_23 |
 *    | l_31 l_32 u_33 |    | l_31 l_32  1 |    |  0    0   u_33 |
 */
{
  for (int i=0; i<Arows; ++i) {
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
    for (int j=0; j<Acols; ++j) {
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
complex_row_major_split_LU (const int Arows, const int Acols, const int K,
			    double complex packedLU[Arows][Acols],
			    double complex L[Arows][K],
			    double complex U[K][Acols])
/* Given  an array  representing a  matrix decomposed  in LU  form: fill
 * other arrays with the L elemets and the U elements.  The matrices are
 * meant to have the format:
 *
 *    | u_11 u_12 u_13 |    |  1     0   0 |    | u_11 u_12 u_13 |
 *    | l_21 u_22 u_23 |  L=| l_21   1   0 |  U=|  0   u_22 u_23 |
 *    | l_31 l_32 u_33 |    | l_31 l_32  1 |    |  0    0   u_33 |
 */
{
  for (int i=0; i<Arows; ++i) {
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
    for (int j=0; j<Acols; ++j) {
      if (i <= j) {
	U[i][j] = packedLU[i][j];
      } else {
	U[i][j] = 0.0;
      }
    }
  }
}
void
complex_col_major_split_LU (const int Arows, const int Acols, const int K,
			    double complex packedLU[Acols][Arows],
			    double complex L[K][Arows],
			    double complex U[Acols][K])
/* Given  an array  representing A  matrix decomposed  in LU  form: fill
 * other arrays with the L elemets and the U elements.  The matrices are
 * meant to have the format:
 *
 *    | u_11 u_12 u_13 |    |  1     0   0 |    | u_11 u_12 u_13 |
 *  A=| l_21 u_22 u_23 |  L=| l_21   1   0 |  U=|  0   u_22 u_23 |
 *    | l_31 l_32 u_33 |    | l_31 l_32  1 |    |  0    0   u_33 |
 */
{
  for (int i=0; i<Arows; ++i) {
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
    for (int j=0; j<Acols; ++j) {
      if (i <= j) {
	U[j][i] = packedLU[j][i];
      } else {
	U[j][i] = 0.0;
      }
    }
  }
}


/** --------------------------------------------------------------------
 ** IPIV, permutation vector and permutation matrix utilities.
 ** ----------------------------------------------------------------- */

void
row_major_PLU_permutation_matrix_from_ipiv (const int nrows,
					    const int ncols,
					    int * IPIV,
					    int perms[nrows],
					    int P[nrows][nrows])
/* Given  the  array IPIV  representing  the  LAPACK's partial  pivoting
 * permutation  indices for  a matrix  factorisation  A =  PLU: build  a
 * declarative permutation vector PERMS  and a proper permutation matrix
 * P.
 *
 * The rectangular matrix LU, to which the permutations are applied, has
 * dimensions NROWS x NCOLS.  PERMS has  one element for each row in LU.
 * IPIV has dimension MIN(NROWS, NCOLS).
 *
 * The array IPIV has dimension:
 *
 *    MIN(nrows, ncols)
 *
 * such dimension is  guaranteed to be enough to  represent the required
 * permutations to  perform a  factorisation A =  PLU; the  dimension of
 * IPIV  is not  enough to  represent  a general  permutation matrix  of
 * dimension NROWS x NROWS, but we do not care here.
 *
 * According  to  LAPACK's  API:  IPIV contains  1-based  pivot  indices
 * representing  the sequence  of row  permutations to  be applied  to a
 * matrix LU;  we have to understand  that rows and columns  are indexed
 * starting  from 1,  following  the Fortran  convention.  For  example,
 * let's say we have  LU-factored a matrix A with 6  rows and 4 columns;
 * the array IPIV has dimension MIN(6,4) = 4; let's say the permutations
 * are represented by the following array of pivot indices:
 *
 *    IPIV = {5 6 3 4}
 *
 * in this  array the pivot  index 5 is associated  to row 1,  the pivot
 * index 6 is  associated to row 2,  the pivot index 3  is associated to
 * row 3,  the pivot index 4  is associated to row  4; explicitating the
 * row indices:
 *
 *    IPIV[1] = 5
 *    IPIV[2] = 6
 *    IPIV[3] = 3
 *    IPIV[4] = 4
 *
 * The meaning of the array is that the following sequence of operations
 * must be applied to the matrix:
 *
 * 1. First swap row 1 with row 5.
 *
 * 2. Then swap row 2 with row 6.
 *
 * 3. Then swap row 3 with row 3, that is: leave it untouched.
 *
 * 4. Finally swap row 4 with row 4, that is: leave it untouched.
 *
 * So  in  the  IPIV  vector:  every  permutation  that  swaps  rows  is
 * represented once; there is no redundancy.
 *
 * Let's say instead that the matrix A is square with dimension 4 and we
 * got the following array of pivot indices:
 *
 *    IPIV = {3 2 3 4}
 *
 * notice  that 3  appears  twice;  its meaning  is  that the  following
 * sequence of operations must be applied to the matrix:
 *
 * 1. First swap row 1 with row 3.
 *
 * 2. Then swap row 2 with row 2, that is: leave it untouched.
 *
 * 3. Then swap row  3 with row 3, that is: leave  it untouched; we have
 *    already swapped  the third row  with the first,  so we need  to do
 *    nothing now.
 *
 * 4. Finally swap row 4 with row 4, that is: leave it untouched.
 *
 * This function builds a declarative  permutation vector and stores its
 * elements in the  array referenced by PERMS; PERMS has  an element for
 * each row  of LU, so  its dimension is  NROWS.  The indices  stored in
 * PERMS are  1-based, like the  ones stored in IPIV.   The informations
 * stored  in PERMS  are  redundant if  at least  one  permutation is  a
 * non-identity: for every actual permutation  there are two elements in
 * PERMS that represent it.  For a 6x4 matrix having IPIV:
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
 * so every permutation that swaps rows is represented twice.  We notice
 * that  the  first  MIN(nrows,  ncols)  elements  of  PERMS  equal  the
 * corresponding elements in IPIV.
 *
 * This function also builds a  proper permutation matrix and stores its
 * elements in the array referenced by P.  The rectangular matrix LU, to
 * which the permutations are applied, has dimensions NROWS x NCOLS; the
 * permutation matrix P is meant to left-multiply a matrix LU, permuting
 * the rows of LU:
 *
 *    A = P LU
 *
 * and the matrix A has dimensions equals to LU; so P must be square and
 * have dimensions NROWS x NROWS.
 */
{
  int	ipiv_dim = MIN(nrows, ncols);
  /* Build a declarative permutation vector  in which element i declares
     the permutation performed on row i. */
  {
    /* First initialise PERMS with  the 1-based indexes representing the
       identity permutation. */
    for (int i=0; i<nrows; ++i) {
      perms[i] = 1+i;
    }
    for (int idx1=0; idx1<ipiv_dim; ++idx1) {
      /* Fortran has 1-based indexes, C has 0-based indexes. */
      int	idx2 = IPIV[idx1] - 1;
      INT_SWAP(perms[idx1], perms[idx2]);
    }
  }
  /* Build the permutation matrix. */
  {
    memset(P, 0, sizeof(int) * nrows * nrows);
    for (int i=0; i<nrows; ++i) {
      P[i][perms[i]-1] = 1;
    }
  }
}
void
col_major_PLU_permutation_matrix_from_ipiv (const int nrows,
					    const int ncols,
					    int * IPIV,
					    int perms[nrows],
					    int P[nrows][nrows])
{
  int	ipiv_dim = MIN(nrows, ncols);
  /* Build a declarative permutation vector  in which element i declares
     the permutation performed on row i. */
  {
    /* First initialise PERMS with  the 1-based indexes representing the
       identity permutation. */
    for (int i=0; i<nrows; ++i) {
      perms[i] = 1+i;
    }
    for (int idx1=0; idx1<ipiv_dim; ++idx1) {
      /* Fortran has 1-based indexes, C has 0-based indexes. */
      int	idx2 = IPIV[idx1] - 1;
      INT_SWAP(perms[idx1], perms[idx2]);
    }
  }
  /* Build the permutation matrix. */
  {
    memset(P, 0, sizeof(int) * nrows * nrows);
    for (int i=0; i<nrows; ++i) {
      P[perms[i]-1][i] = 1;
    }
  }
}

/* ------------------------------------------------------------------ */

void
print_row_major_PLU_partial_pivoting_vectors_and_matrix (const int nrows, const int ncols,
							 int * ipiv,
							 int perms[nrows],
							 int P[nrows][nrows])
/* Print the IPIV vector, the PERMS  vector and the permutation matrix P
   associated  to a  A =  PLU factorisation  in which  the matrix  A has
   dimensions NROWS x NCOLS. */
{
  int	ipiv_dim = MIN(nrows, ncols);
  printf("\tLAPACK's partial pivoting vector, sequence of permutations,\n\t1-based indexes:\n");
  {
    int		i = 0;
    printf("\t| (%d) %d | first swap line %d with line %d\n", 1+i, ipiv[i], 1+i, ipiv[i]);
    for (++i; i<ipiv_dim; ++i) {
      printf("\t| (%d) %d | then  swap line %d with line %d\n", 1+i, ipiv[i], 1+i, ipiv[i]);
    }
  }
  printf("\tdeclarative permutations vector, every index represents the row permutation,\n\t1-based indexes:\n");
  for (int i=0; i<nrows; ++i) {
    printf("\t| (%d) %d | line %d is swapped with with line %d\n", 1+i, perms[i], 1+i, perms[i]);
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
    printf("\t| (%d) %d | first swap line %d with line %d\n", 1+i, ipiv[i], 1+i, ipiv[i]);
    for (++i; i<ipiv_dim; ++i) {
      printf("\t| (%d) %d | then  swap line %d with line %d\n", 1+i, ipiv[i], 1+i, ipiv[i]);
    }
  }
  printf("\tdeclarative permutations vector, every index represents the row permutation,\n\t1-based indexes:\n");
  for (int i=0; i<nrows; ++i) {
    printf("\t| (%d) %d | line %d is swapped with with line %d\n", 1+i, perms[i], 1+i, perms[i]);
  }
  print_int_col_major_matrix("P permutation of A', where: A = P A' = P L U",
			     nrows, nrows, P);
}


/** --------------------------------------------------------------------
 ** Permutation matrix application.
 ** ----------------------------------------------------------------- */

void
real_row_major_apply_permutation_matrix (int number_of_rows_in_R,
					 int number_of_cols_in_R,
					 int P[number_of_rows_in_R][number_of_rows_in_R],
					 double R[number_of_rows_in_R][number_of_cols_in_R],
					 double S[number_of_rows_in_R][number_of_cols_in_R])
/* We do the product:
 *
 *    [S_ij] = [P_ik][R_kj]
 *
 * that is:
 *
 *    S_ij = \sum_{k=1}^M P_ik R_kj
 */
{
  int		M = number_of_rows_in_R;
  int		N = number_of_cols_in_R;
  for (int i=0; i<M; ++i) {
    for (int j=0; j<N; ++j) {
      S[i][j] = 0.0;
      for (int k=0; k<M; ++k) {
	if (1 == P[i][k]) {
	  S[i][j] += R[k][j];
	}
      }
    }
  }
}
void
real_col_major_apply_permutation_matrix (int number_of_rows_in_R,
					 int number_of_cols_in_R,
					 int P[number_of_rows_in_R][number_of_rows_in_R],
					 double R[number_of_cols_in_R][number_of_rows_in_R],
					 double S[number_of_cols_in_R][number_of_rows_in_R])
/* We do the product:
 *
 *    [S_ij] = [P_ik][R_kj]
 *
 * that is:
 *
 *    S_ij = \sum_{k=1}^M P_ik R_kj
 */
{
  int		M = number_of_rows_in_R;
  int		N = number_of_cols_in_R;
  for (int i=0; i<M; ++i) {
    for (int j=0; j<N; ++j) {
      S[j][i] = 0.0;
      for (int k=0; k<M; ++k) {
	if (1 == P[k][i]) {
	  S[j][i] += R[j][k];
	}
      }
    }
  }
}

/* ------------------------------------------------------------------ */

void
complex_row_major_apply_permutation_matrix (int number_of_rows_in_R,
					    int number_of_cols_in_R,
					    int P[number_of_rows_in_R][number_of_rows_in_R],
					    lapack_complex_double R[number_of_rows_in_R][number_of_cols_in_R],
					    lapack_complex_double S[number_of_rows_in_R][number_of_cols_in_R])
/* We do the product:
 *
 *    [S_ij] = [P_ik][R_kj]
 *
 * that is:
 *
 *    S_ij = \sum_{k=1}^M P_ik R_kj
 */
{
  int		M = number_of_rows_in_R;
  int		N = number_of_cols_in_R;
  for (int i=0; i<M; ++i) {
    for (int j=0; j<N; ++j) {
      S[i][j] = lapack_make_complex_double(0.0,0.0);
      for (int k=0; k<M; ++k) {
	if (1 == P[i][k]) {
	  S[i][j] += R[k][j];
	}
      }
    }
  }
}
void
complex_col_major_apply_permutation_matrix (int number_of_rows_in_R,
					    int number_of_cols_in_R,
					    int P[number_of_rows_in_R][number_of_rows_in_R],
					    lapack_complex_double R[number_of_cols_in_R][number_of_rows_in_R],
					    lapack_complex_double S[number_of_cols_in_R][number_of_rows_in_R])
/* We do the product:
 *
 *    [S_ij] = [P_ik][R_kj]
 *
 * that is:
 *
 *    S_ij = \sum_{k=1}^M P_ik R_kj
 */
{
  int		M = number_of_rows_in_R;
  int		N = number_of_cols_in_R;
  for (int i=0; i<M; ++i) {
    for (int j=0; j<N; ++j) {
      S[j][i] = lapack_make_complex_double(0.0,0.0);
      for (int k=0; k<M; ++k) {
	if (1 == P[k][i]) {
	  S[j][i] += R[j][k];
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
  printf("\tRow-major matrix %s\n\t(dimension %d x %d) (displayed in row-major order):\n",
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
 ** Done.
 ** ----------------------------------------------------------------- */

#endif /* ATLAPACK_TEST_UTILS_H */

/* end of file */
