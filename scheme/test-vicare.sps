;;; -*- coding: utf-8-unix -*-
;;;
;;;Part of: ATLAPACK
;;;Contents: test file for Vicare Scheme template binding
;;;Date: Thu Jun 12, 2014
;;;
;;;Abstract
;;;
;;;
;;;
;;;Copyright (C) 2014 Marco Maggi <marco.maggi-ipsu@poste.it>
;;;
;;;This program is free software: you can  redistribute it and/or modify it under the
;;;terms  of  the GNU  General  Public  License as  published  by  the Free  Software
;;;Foundation,  either version  3  of the  License,  or (at  your  option) any  later
;;;version.
;;;
;;;This program is  distributed in the hope  that it will be useful,  but WITHOUT ANY
;;;WARRANTY; without  even the implied warranty  of MERCHANTABILITY or FITNESS  FOR A
;;;PARTICULAR PURPOSE.  See the GNU General Public License for more details.
;;;
;;;You should have received a copy of  the GNU General Public License along with this
;;;program.  If not, see <http://www.gnu.org/licenses/>.
;;;


#!vicare
(import (vicare)
  (lapacke float)
  (lapacke double)
  (lapacke float-complex)
  (lapacke double-complex)
  (lapacke constants)
  (prefix (vicare platform words) words.)
  (vicare checks))

(check-set-mode! 'report-failed)
(check-display "*** testing LAPACKE\n")


;;;; generic helpers

(define-constant sizeof-double
  words.SIZEOF_DOUBLE)

(define-constant sizeof-double-complex
  (* 2 sizeof-double))

;;; --------------------------------------------------------------------

(define-constant EPSILON
  1e-6)

(define* (flonum-vector=? {O1 vector?} {O2 vector?})
  (let loop ((i 0))
    (or (fx=? i (vector-length O1))
	(and (let ((X (vector-ref O1 i))
		   (Y (vector-ref O2 i)))
	       (< (magnitude (- X Y)) EPSILON))
	     (loop (fxadd1 i))))))

(define (flonum=? X Y)
  (< (magnitude (- X Y)) EPSILON))


;;;; real and complex vector helpers

(define* (memory-real-vector->scheme-vector {nslots words.signed-int?} {P pointer?})
  (receive-and-return (V)
      (make-vector nslots #f)
    (do ((i 0 (fxadd1 i)))
	((fx=? i nslots))
      (vector-set! V i (array-ref-c-double P i)))))

(define* (memory-cplx-vector->scheme-vector {nslots words.signed-int?} {P pointer?})
  (receive-and-return (V)
      (make-vector nslots #f)
    (do ((i 0 (fxadd1 i))
	 (j 0 (+ 2 j)))
	((fx=? i nslots))
      (let ((rep (array-ref-c-double P j))
	    (imp (array-ref-c-double P (fxadd1 j))))
	(vector-set! V i (make-rectangular rep imp))))))

;;; --------------------------------------------------------------------

(define* (scheme-vector->memory-real-vector {V vector?})
  (define nslots (vector-length V))
  (define nbytes (* nslots sizeof-double))
  (receive-and-return (P)
      (guarded-malloc nbytes)
    (do ((i 0 (fxadd1 i)))
	((fx=? i nslots))
      (array-set-c-double! P i (vector-ref V i)))))

(define* (scheme-vector->memory-cplx-vector {V vector?})
  (define nslots (vector-length V))
  (define nbytes (* nslots sizeof-double-complex))
  (receive-and-return (P)
      (guarded-malloc nbytes)
    (do ((i 0 (fxadd1 i))
	 (j 0 (+ 2 j)))
	((fx=? i nslots))
      (let* ((Z   (vector-ref V i))
	     (rep (real-part Z))
	     (imp (imag-part Z)))
	(array-set-c-double! P j          rep)
	(array-set-c-double! P (fxadd1 j) imp)))))


;;;; real and complex matrix helpers

(define* (memory-real-matrix->scheme-vector {nrows words.signed-int?} {ncols words.signed-int?}
					   {P pointer?})
  (define nslots (* nrows ncols))
  (receive-and-return (V)
      (make-vector nslots #f)
    (do ((i 0 (fxadd1 i)))
	((fx=? i nslots))
      (vector-set! V i (array-ref-c-double P i)))))

(define* (memory-cplx-matrix->scheme-vector {nrows words.signed-int?} {ncols words.signed-int?}
					   {P pointer?})
  (define nslots (* nrows ncols))
  (receive-and-return (V)
      (make-vector nslots #f)
    (do ((i 0 (fxadd1 i))
	 (j 0 (+ 2 j)))
	((fx=? i nslots))
      (let ((rep (array-ref-c-double P j))
	    (imp (array-ref-c-double P (fxadd1 j))))
	(vector-set! V i (make-rectangular rep imp))))))

;;; --------------------------------------------------------------------

(define* (scheme-vector->memory-real-matrix {nrows words.signed-int?} {ncols words.signed-int?}
					   {V vector?})
  (define nslots (vector-length V))
  (define nbytes (* nslots sizeof-double))
  (assert (= nslots (* nrows ncols)))
  (receive-and-return (P)
      (guarded-malloc nbytes)
    (do ((i 0 (fxadd1 i)))
	((fx=? i nslots))
      (array-set-c-double! P i (vector-ref V i)))))

(define* (scheme-vector->memory-cplx-matrix {nrows words.signed-int?} {ncols words.signed-int?}
					   {V vector?})
  (define nslots (vector-length V))
  (define nbytes (* nslots sizeof-double-complex))
  (assert (= nslots (* nrows ncols)))
  (receive-and-return (P)
      (guarded-malloc nbytes)
    (do ((i 0 (fxadd1 i))
	 (j 0 (+ 2 j)))
	((fx=? i nslots))
      (let* ((Z   (vector-ref V i))
	     (rep (real-part Z))
	     (imp (imag-part Z)))
	(array-set-c-double! P j          rep)
	(array-set-c-double! P (fxadd1 j) imp)))))


;;;; integer vector and matrix helpers

(define* (memory-int-vector->scheme-vector {nslots words.signed-int?} {P pointer?})
  (receive-and-return (V)
      (make-vector nslots #f)
    (do ((i 0 (fxadd1 i)))
	((fx=? i nslots))
      (vector-set! V i (array-ref-c-signed-int P i)))))

(define* (scheme-vector->memory-int-vector {V vector?})
  (define nslots (vector-length V))
  (define nbytes (* nslots sizeof-double))
  (receive-and-return (P)
      (guarded-malloc nbytes)
    (do ((i 0 (fxadd1 i)))
	((fx=? i nslots))
      (array-set-c-signed-int! P i (vector-ref V i)))))

;;; --------------------------------------------------------------------

(define* (memory-int-matrix->scheme-vector {nrows words.signed-int?} {ncols words.signed-int?}
					   {P pointer?})
  (define nslots (* nrows ncols))
  (receive-and-return (V)
      (make-vector nslots #f)
    (do ((i 0 (fxadd1 i)))
	((fx=? i nslots))
      (vector-set! V i (array-ref-c-signed-int P i)))))

(define* (scheme-vector->memory-int-matrix {nrows words.signed-int?} {ncols words.signed-int?}
					   {V vector?})
  (define nslots (vector-length V))
  (define nbytes (* nslots sizeof-double))
  (assert (= nslots (* nrows ncols)))
  (receive-and-return (P)
      (guarded-malloc nbytes)
    (do ((i 0 (fxadd1 i)))
	((fx=? i nslots))
      (array-set-c-signed-int! P i (vector-ref V i)))))


(parametrise ((check-test-name	'real-vectors-helpers))

  (check
      (let* ((N 3)
	     (P (scheme-vector->memory-real-vector '#(1.2 3.4 5.6)))
	     (V (memory-real-vector->scheme-vector N P)))
	V)
    => '#(1.2 3.4 5.6))

  (collect))


(parametrise ((check-test-name	'cplx-vectors-helpers))

  (check
      (let* ((N 3)
	     (P (scheme-vector->memory-cplx-vector '#(1.2+2.3i 3.4+4.5i 5.6+6.7i)))
	     (V (memory-cplx-vector->scheme-vector N P)))
	V)
    => '#(1.2+2.3i 3.4+4.5i 5.6+6.7i))

  (collect))


(parametrise ((check-test-name	'real-matrix-helpers))

  (check
      (let* ((nrows 2)
	     (ncols 3)
	     (P (scheme-vector->memory-real-matrix nrows ncols '#(1.1 1.2 1.3 2.1 2.2 2.3)))
	     (V (memory-real-matrix->scheme-vector nrows ncols P)))
	V)
    => '#(1.1 1.2 1.3 2.1 2.2 2.3))

  (collect))


(parametrise ((check-test-name	'cplx-matrix-helpers))

  (define-constant L1
    '(1.1+0.1i 1.2+0.1i 1.3+0.1i 2.1+0.1i 2.2+0.1i 2.3+0.1i))

  (define-constant M1
    (list->vector L1))

  (check
      (let* ((nrows 2)
	     (ncols 3)
	     (P (scheme-vector->memory-cplx-matrix nrows ncols M1))
	     (V (memory-cplx-matrix->scheme-vector nrows ncols P)))
	V)
    => M1)

  (collect))


(parametrise ((check-test-name	'int-vectors-helpers))

  (define-constant L
    '#(1 3 5))

  (check
      (let* ((N (vector-length L))
	     (P (scheme-vector->memory-int-vector L))
	     (V (memory-int-vector->scheme-vector N P)))
	V)
    => L)

  (collect))


(parametrise ((check-test-name	'int-matrix-helpers))

  (define-constant L
    '#(11 12 13 21 22 23))

  (check
      (let* ((nrows 2)
	     (ncols 3)
	     (P (scheme-vector->memory-int-matrix nrows ncols L))
	     (V (memory-int-matrix->scheme-vector nrows ncols P)))
	V)
    => L)

  (collect))


(parametrise ((check-test-name	'dgesv))

;;;We want to solve the system of equations:
;;;
;;;    10 * x1 + 1 * x2 + 2 * x3 = 9
;;;     3 * x1 + 4 * x2 + 5 * x3 = 8
;;;     6 * x1 + 7 * x2 + 8 * x3 = 7
;;;
;;;to determine the unknowns x1, x2 and x3; the expected solution is:
;;;
;;;     x1 = 0		x2 = -29/3		x3 = +28/3
;;;
;;;In matrix notation we write:
;;;
;;;     -        -   -  -     - -
;;;    | 10  1  2 | | x1 |   | 9 |
;;;    |  3  4  5 | | x2 | = | 8 |
;;;    |  6  7  8 | | x3 |   | 7 |
;;;     -        -   -  -     - -
;;;
;;;and abstracting:
;;;
;;;     -             -   -  -     -  -
;;;    | a11  a12  a13 | | x1 |   | b1 |
;;;    | a21  a22  a23 | | x2 | = | b2 |
;;;    | a31  a32  a33 | | x3 |   | b3 |
;;;     -             -   -  -     -  -
;;;
;;;and we will use the symbols: A X = B, where A is the coefficients matrix, X is the
;;;vector of  unknowns, B  is the  right-hand side vector.   The LAPACK  routines are
;;;capable of  handling X  and B  as matrices, but,  in this  test program,  we limit
;;;ourselves to column vectors: the parameter NRHS is 1.
;;;
;;;How LAPACK's routine  DGESV does it?  It  factorises the matrix A in  LU form with
;;;partial pivoting; for an introduction to the LU factorisation see:
;;;
;;;    <http://en.wikipedia.org/wiki/Lu_decomposition>
;;;
;;;Whatever the  actual implementation,  we can  think of  the algorithm  as follows:
;;;first, to  make the factorisation  possible and  more convenient, it  permutes the
;;;rows  of  matrix  A  obtaining  a  matrix   A';  A  can  be  rebuilt  from  A'  by
;;;left-multiplying by a permutation matrix P:
;;;
;;;    A = P A'
;;;
;;;then it factorises A'  in the product of a lower triangular matrix  L and an upper
;;;triangular matrix U:
;;;
;;;    A' = L U
;;;
;;;so that the system becomes:
;;;
;;;    A X = B  =>  P A' X = B  =>  P L U X = B
;;;
;;;and finally it determines X.
;;;
;;;The resulting matrices L and U have elements:
;;;
;;;         -          -          -           -
;;;        |  1   0   0 |        | u11 u12 u13 |
;;;    L = | l21  1   0 |    U = |  0  u22 u23 |
;;;        | l31 l32  1 |        |  0   0  u33 |
;;;         -          -          -           -
;;;
;;;and DGESV returns them in packed form by mutating its parameter A as follows:
;;;
;;;         -           -
;;;        | u11 u12 u13 |
;;;    A = | l21 u22 u23 |
;;;        | l31 l32 u33 |
;;;         -           -
;;;
;;;The permutation matrix  P is returned by  DGESV in its IPIV parameter  as an array
;;;representing a sequence of row permutations to be applied to A':
;;;
;;;           - -
;;;          | 1 | first swap line 1 with line 1
;;;   ipiv = | 3 | then  swap line 2 with line 3
;;;          | 3 | then  swap line 3 with line 3
;;;           - -
;;;
;;;The actual solution vector X is stored in B's array, mutating it.
;;;

  (check
      (let* ((N		3)	;number of equations
	     (NRHS	1)	;number of right-hand sides = number of columns in B
	     (LDA	N)	;leading dimension of A
	     (LDB	NRHS)	;leading dimension of B
	     (A.nrows	N)
	     (A.ncols	N)
	     (B.nslots	N)
	     (A		(scheme-vector->memory-real-matrix A.nrows A.ncols
							   '#( ;;
							      10.0 1.0 2.0
							      3.0 4.0 5.0
							      6.0 7.0 8.0)))
	     (B		(scheme-vector->memory-real-vector '#(9.0 8.0 7.0)))
	     (ipiv	(guarded-malloc (* N words.SIZEOF_INT))))
        (LAPACKE_dgesv LAPACK_ROW_MAJOR N NRHS A LDA ipiv B LDB)
;;;	(debug-print 'ipiv (memory-int-vector->scheme-vector N ipiv))
	(memory-real-vector->scheme-vector B.nslots B))
    (=> flonum-vector=?)
    (vector 0.0 (/ -29.0 3.0) (/ +28.0 3.0)))

  (collect))


(parametrise ((check-test-name	'template))

  ;; (check
  ;;     (let* ((nslots 3)
  ;; 	     (O1 (scheme-vector->memory-real-vector nrows ncols '#(1.1 1.2 1.3 2.1 2.2 2.3)))
  ;; 	     (O2 (scheme-vector->memory-real-vector nrows ncols '#(10.1 10.2 10.3 20.1 20.2 20.3)))
  ;; 	     (R  (guarded-malloc (* nslots sizeof-double))))
  ;;       (memory_real_matrix_add nrows ncols R O1 O2)
  ;; 	(memory-real-matrix->scheme-vector nrows ncols R))
  ;;   (=> flonum-vector=?)
  ;;   (list->vector (map +
  ;; 		    '(1.1 1.2 1.3 2.1 2.2 2.3)
  ;; 		    '(10.1 10.2 10.3 20.1 20.2 20.3))))

  (collect))


;;;; done

(check-report)

;;; end of file
;; Local Variables:
;; End:
