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

/* ------------------------------------------------------------------ */

static void
print_double_row_major_matrix (const char * matrix_name, const double * X_,
			       const int number_of_rows,
			       const int number_of_columns)
/* Given an array  representing a matrix in row-major  order: display it
   to stdout in row-major order. */
{
  const double	(*X)[number_of_rows][number_of_columns] = (void*)X_;
  printf("\tRow-major matrix %s\n\t(dimension %d x %d) (displayed in row-major order):\n",
	 matrix_name, number_of_rows, number_of_columns);
  for (int i=0; i<number_of_rows; ++i) {
    int		j = 0;
    printf("\t| (%d,%d) %+10lf ", 1+i, 1+j, (*X)[i][j]);
    for (++j; j<number_of_columns; ++j) {
      printf("  (%d,%d) %+10lf ", 1+i, 1+j, (*X)[i][j]);
    }
    printf(" |\n");
  }
  printf("\n");
}
static void
print_int_row_major_matrix (const char * matrix_name, const int * X_,
			    const int number_of_rows,
			    const int number_of_columns)
/* Given an array  representing a matrix in row-major  order: display it
   to stdout in row-major order. */
{
  const int	(*X)[number_of_rows][number_of_columns] = (void*)X_;
  printf("\tRow-major matrix %s\n\t(dimension %d x %d) (displayed in row-major order):\n",
	 matrix_name, number_of_rows, number_of_columns);
  for (int i=0; i<number_of_rows; ++i) {
    int		j = 0;
    printf("\t| (%d,%d) %d ", 1+i, 1+j, (*X)[i][j]);
    for (++j; j<number_of_columns; ++j) {
      printf("  (%d,%d) %d ", 1+i, 1+j, (*X)[i][j]);
    }
    printf(" |\n");
  }
  printf("\n");
}

/* ------------------------------------------------------------------ */

void
print_partial_pivoting_vector_and_permutation_matrix_LU (const int * IPIV_,
							 const int number_of_indices,
							 const int number_of_rows)
/* When the permutation is applied  to a rectangular matrix (rather than
   a  square one):  the number  of indices  differs from  the number  of
   rows.*/
{
  int	(*IPIV)[number_of_indices] = (void*)IPIV_;
  int	N = number_of_rows;
  int	declare_perms[N];
  int	P[N][N];
  printf("\tLAPACK's partial pivoting vector, sequence of permutations,\n\t1-based indexes:\n");
  {
    int		i = 0;
    printf("\t| (%d) %d | first swap line %d with line %d\n", 1+i, (*IPIV)[i], 1+i, (*IPIV)[i]);
    for (++i; i<number_of_indices; ++i) {
      printf("\t| (%d) %d | then  swap line %d with line %d\n", 1+i, (*IPIV)[i], 1+i, (*IPIV)[i]);
    }
  }

  /* Build a declarative permutation vector  in which element i declares
     the permutation performed on row i. */
  {
    for (int i=0; i<number_of_rows; ++i) {
      declare_perms[i] = 1+i;
    }
    for (int i=0; i<number_of_rows; ++i) {
      /* Fortran has 1-based indexes, C has 0-based indexes. */
      int idx = (*IPIV)[i] - 1;
      int	tmp = declare_perms[idx];
      declare_perms[idx] = declare_perms[i];
      declare_perms[i] = tmp;
    }
    printf("\tpermutations declaration vector, every index represents the row permutation,\n\t1-based indexes:\n");
    for (int i=0; i<number_of_rows; ++i) {
      printf("\t| (%d) %d | line %d is swapped with with line %d\n", 1+i, declare_perms[i], 1+i, declare_perms[i]);
    }
  }

  /* Build the permutation matrix. */
  {
    memset(&P[0][0], 0, sizeof(int) * N * N);
    for (int i=0; i<number_of_rows; ++i) {
      P[i][declare_perms[i]-1] = 1;
    }
    print_int_row_major_matrix("P permutation of A', where: A = P A' = P L U",
			       &P[0][0], N, N);
  }
}
static void
compare_double_row_major_result_and_expected_result (const char * description,
						     const double * X_, const double * R_,
						     const int number_of_rows,
						     const int number_of_columns)
/* Given two  arrays representing  matrices in row-major  order: compare
   them as result of computation  (X) and expected result of computation
   (R); print log messages to stdout. */
{
  double	(*X)[number_of_rows][number_of_columns] = (void*)X_;
  double	(*R)[number_of_rows][number_of_columns] = (void*)R_;
  int		error = 0;
  for (int i=0; i<number_of_rows; ++i) {
    for (int j=0; j<number_of_columns; ++j) {
      if (fabs((*X)[i][j] - (*R)[i][j]) > EPSILON) {
	printf("\tError in result (row=%d, col=%d): X = %lf, R = %lf\n",
	       i, j, (*X)[i][j], (*R)[i][j]);
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

static void
double_row_major_split_LU (const double * A_,
			   const double * L_, const double * U_,
			   const int number_of_rows_and_columns)
/* Given  an array  representing A  matrix decomposed  in LU  form: fill
 * other arrays with the L elemets and the U elements.  The matrices are
 * meant to have the format:
 *
 *    | u_11 u_12 u_13 |    |  1     0   0 |    | u_11 u_12 u_13 |
 *  A=| l_21 u_22 u_23 |  L=| l_21   1   0 |  U=|  0   u_22 u_23 |
 *    | l_31 l_32 u_33 |    | l_31 l_32  1 |    |  0    0   u_33 |
 */
{
  const int	N = number_of_rows_and_columns;
  double	(*A)[N][N] = (void*)A_;
  double	(*L)[N][N] = (void*)L_;
  double	(*U)[N][N] = (void*)U_;
  for (int i=0; i<N; ++i) {
    for (int j=0; j<N; ++j) {
      if (i < j) {
	(*L)[i][j] = 0.0;
      } else if (i == j) {
	(*L)[i][j] = 1.0;
      } else {
	(*L)[i][j] = (*A)[i][j];
      }
    }
  }
  for (int i=0; i<N; ++i) {
    for (int j=0; j<N; ++j) {
      if (i <= j) {
	(*U)[i][j] = (*A)[i][j];
      } else {
	(*U)[i][j] = 0.0;
      }
    }
  }
}

/** --------------------------------------------------------------------
 ** Done.
 ** ----------------------------------------------------------------- */

#endif /* ATLAPACK_TEST_UTILS_H */

/* end of file */
