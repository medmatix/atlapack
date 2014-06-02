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

#define EPSILON		1e-3

static void print_double_row_major_matrix (const char * matrix_name,
					   const int number_of_rows,
					   const int number_of_cols,
					   double X[number_of_rows][number_of_cols]);


/** --------------------------------------------------------------------
 ** Comparing arrays.
 ** ----------------------------------------------------------------- */

static void
compare_double_row_major_result_and_expected_result (const char * description,
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
	printf("\tError in result (row=%d, col=%d): X = %lf, R = %lf\n",
	       i, j, X[i][j], R[i][j]);
	error = 1;
      }
    }
  }
  if (error) {
    printf("\tWrong result \"%s\" in row-major computation.\n\n", description);
    exit(EXIT_FAILURE);
  } else {
    printf("\tThe result \"%s\" equals the expected one, up to epsilon = %lg.\n\n",
	   description, EPSILON);
  }
}


/** --------------------------------------------------------------------
 ** LU factorisation utilities.
 ** ----------------------------------------------------------------- */

static void
double_row_major_split_LU (const int N,
			   double A[N][N], double L[N][N], double U[N][N])
/* Given  an array  representing A  matrix decomposed  in LU  form: fill
 * other arrays with the L elemets and the U elements.  The matrices are
 * meant to have the format:
 *
 *    | u_11 u_12 u_13 |    |  1     0   0 |    | u_11 u_12 u_13 |
 *  A=| l_21 u_22 u_23 |  L=| l_21   1   0 |  U=|  0   u_22 u_23 |
 *    | l_31 l_32 u_33 |    | l_31 l_32  1 |    |  0    0   u_33 |
 */
{
  for (int i=0; i<N; ++i) {
    for (int j=0; j<N; ++j) {
      if (i < j) {
	L[i][j] = 0.0;
      } else if (i == j) {
	L[i][j] = 1.0;
      } else {
	L[i][j] = A[i][j];
      }
    }
  }
  for (int i=0; i<N; ++i) {
    for (int j=0; j<N; ++j) {
      if (i <= j) {
	U[i][j] = A[i][j];
      } else {
	U[i][j] = 0.0;
      }
    }
  }
}


/** --------------------------------------------------------------------
 ** Permutation vector and matrix utilities.
 ** ----------------------------------------------------------------- */

static void
row_major_permutation_matrix_from_ipiv (const int number_of_indices,
					const int number_of_rows,
					int IPIV[number_of_indices],
					int perms[number_of_rows],
					int P[number_of_rows][number_of_rows])
/* Given  the  array  IPIV_  representing a  LAPACK's  partial  pivoting
 * permutation vectors (for example out  of a LU factorisation): build a
 * declarative permutation vector and a proper permutation matrix.
 *
 * The array  IPIV_ must have NUMBER_OF_INDICES  elements representing a
 * sequence of  permutations to be  applied to a matrix  with dimensions
 * NUMBER_OF_ROWS x NUMBER_OF_INDICES.  The 1-based pivot indices stored
 * in the array represent the sequence of row permutations to be applied
 * to a matrix.
 *
 * For example, let's say we have LU-factored a matrix A with 6 rows and
 * 4 columns; we have A = PLU  where P is the permutation matrix.  Let's
 * say the permutations are represented  by the following array of pivot
 * indices:
 *
 *    IPIV = [5 6 3 4]
 *
 * we have to understand that rows and columns are indexed starting from
 * 1, following the Fortran convention:  the pivot index 5 is associated
 * to row 1, the pivot index 6 is associated to row 2, the pivot index 3
 * is associated to row 3, ...
 *
 * The meaning of the array is that the following sequence of operations
 * must be applied to the matrix:
 *
 * 1. Swap row 1 with row 5.
 * 2. Swap row 2 with row 6.
 * 3. Swap row 3 with row 3, that is: leave it untouched.
 * 4. Swap row 4 with row 4, that is: leave it untouched.
 *
 * So  in  the  IPIV  vector:  every  permutation  that  swaps  rows  is
 * represented once.
 *
 * Let's say instead that the matrix A is square with dimension 4 and we
 * got the following array of pivot indices:
 *
 *    IPIV = [3 2 3 4]
 *
 * notice  that 3  appears  twice;  its meaning  is  that the  following
 * sequence of operations must be applied to the matrix:
 *
 * 1. Swap row 1 with row 3.
 * 2. Swap row 2 with row 2, that is: leave it untouched.
 * 3.  Swap  row 3  with row  3, that  is: leave  it untouched;  we have
 *    already swapped  the third row  with the first,  so we need  to do
 *    nothing now.
 * 4. Swap row 4 with row 4, that is: leave it untouched.
 *
 * This function builds a permutation vector  and stores it in the array
 * referenced  by PERMS_,  which must  have NUMBER_OR_ROWS  slots.  Such
 * permutation  vector represents  the permutation  of each  row in  the
 * matrix.  For a 6x4 matrix having IPIV:
 *
 *    IPIV = [5 6 3 4]
 *
 * the permutation vector is:
 *
 *    PERMS = [5 6 3 4 1 2]
 *
 * which means:
 *
 *    | 5 |	swap row 1 with row 5
 *    | 6 |	swap row 2 with row 6
 *    | 3 |	swap row 3 with row 3
 *    | 4 |	swap row 4 with row 4
 *    | 1 |	swap row 5 with row 1
 *    | 2 |	swap row 6 with row 2
 *
 * so every permutation that swaps rows is represented twice.
 *
 * This function also  builds a permutation matrix and stores  it in the
 * array  referenced  by  P_.   Such  permutation  matrix  can  be  left
 * multiplied to the result of a LU factorisation to obtain the original
 * matrix: A = P L U.  P is not applied to A!!!
 */
{
  int	N = number_of_rows;

  /* Build a declarative permutation vector  in which element i declares
     the permutation performed on row i. */
  {
    for (int i=0; i<number_of_rows; ++i) {
      perms[i] = 1+i;
    }
    for (int i=0; i<number_of_rows; ++i) {
      /* Fortran has 1-based indexes, C has 0-based indexes. */
      int	idx = IPIV[i] - 1;
      int	tmp = perms[idx];
      perms[idx] = perms[i];
      perms[i]   = tmp;
    }
  }

  /* Build the permutation matrix. */
  {
    memset(P, 0, sizeof(int) * N * N);
    for (int i=0; i<number_of_rows; ++i) {
      P[i][perms[i]-1] = 1;
    }
  }
}
static void
double_row_major_apply_permutation_matrix (int number_of_rows_in_R,
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


/** --------------------------------------------------------------------
 ** Printing functions.
 ** ----------------------------------------------------------------- */

static void
print_double_row_major_matrix (const char * matrix_name,
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

/* ------------------------------------------------------------------ */

static void
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

/* ------------------------------------------------------------------ */

static void
print_partial_pivoting_vector_and_permutation_matrix_LU (const int number_of_indices,
							 const int number_of_rows,
							 int IPIV[number_of_indices])
/* When the permutation is applied  to a rectangular matrix (rather than
   a  square one):  the number  of indices  differs from  the number  of
   rows.*/
{
  int	N = number_of_rows;
  int	perms[N];
  int	P[N][number_of_indices];
  printf("\tLAPACK's partial pivoting vector, sequence of permutations,\n\t1-based indexes:\n");
  {
    int		i = 0;
    printf("\t| (%d) %d | first swap line %d with line %d\n", 1+i, IPIV[i], 1+i, IPIV[i]);
    for (++i; i<number_of_indices; ++i) {
      printf("\t| (%d) %d | then  swap line %d with line %d\n", 1+i, IPIV[i], 1+i, IPIV[i]);
    }
  }

  row_major_permutation_matrix_from_ipiv(number_of_indices, number_of_rows, IPIV, perms, P);

  printf("\tdeclarative permutations vector, every index represents the row permutation,\n\t1-based indexes:\n");
  for (int i=0; i<number_of_rows; ++i) {
    printf("\t| (%d) %d | line %d is swapped with with line %d\n", 1+i, perms[i], 1+i, perms[i]);
  }
  print_int_row_major_matrix("P permutation of A', where: A = P A' = P L U",
			     N, N, P);
}


/** --------------------------------------------------------------------
 ** Done.
 ** ----------------------------------------------------------------- */

#endif /* ATLAPACK_TEST_UTILS_H */

/* end of file */
