;;; -*- coding: utf-8-unix -*-
;;;
;;;Part of: ATLAPACK
;;;Contents: Vicare Scheme specific functions
;;;Date: Wed Jun 11, 2014
;;;
;;;Abstract
;;;
;;;
;;;
;;;Copyright (C) 2014 Marco Maggi <marco.maggi-ipsu@poste.it>
;;;
;;;This program is free software:  you can redistribute it and/or modify
;;;it under the terms of the  GNU General Public License as published by
;;;the Free Software Foundation, either version 3 of the License, or (at
;;;your option) any later version.
;;;
;;;This program is  distributed in the hope that it  will be useful, but
;;;WITHOUT  ANY   WARRANTY;  without   even  the  implied   warranty  of
;;;MERCHANTABILITY or  FITNESS FOR  A PARTICULAR  PURPOSE.  See  the GNU
;;;General Public License for more details.
;;;
;;;You should  have received a  copy of  the GNU General  Public License
;;;along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;;


#!r6rs
(library (lapacke compat)
  (export
    define-shared-object
    define-c-function)
  (import (vicare)
    (prefix (vicare ffi) ffi.))


(define-syntax (define-c-function stx)
  (define (main stx)
    (syntax-case stx ()
      ((?ctx ?retval-type ?c-function-name (?arg-type ...))
       (with-syntax
	   ((LIBTOKEN		(datum->syntax #'?ctx 'libtoken))
	    (RETVAL-TYPE	(%external-type-id->internal-type-id #'?retval-type))
	    (FUNC-NAME		(symbol->string (syntax->datum #'?c-function-name)))
	    ((ARG-TYPES ...)	(map %external-type-id->internal-type-id
				  (syntax->list #'(?arg-type ...)))))
	 #'(define ?c-function-name
	     ((ffi.make-c-callout-maker (quote RETVAL-TYPE)
					(quote (ARG-TYPES ...)))
	      (ffi.dlsym LIBTOKEN FUNC-NAME)))))))

  (define (%external-type-id->internal-type-id type-id)
    (datum->syntax type-id
		   (%external-type-symbol->internal-type-symbol
		    (syntax->datum type-id))))

  (define (%external-type-symbol->internal-type-symbol type-sym)
    (case type-sym
      ((signed-int)		'signed-int)
      ((signed-int*)		'pointer)
      ((unsigned-int)		'unsigned-int)
      ((unsigned-int*)		'pointer)
      ((char*)			'pointer)

      ((double)			'double)
      ((double*)		'pointer)
      ((lapack_complex_double*)	'pointer)

      ((float)			'float)
      ((float*)			'pointer)
      ((lapack_complex_float*)	'pointer)

      ((lapack_int)		'signed-int)
      ((lapack_int*)		'pointer)
      ((lapack_logical)		'signed-int)
      ((lapack_logical*)	'signed-int)

      ((int)			'signed-int)
      ((char)			'signed-char)

      ((LAPACK_S_SELECT2)	'callback)
      ((LAPACK_S_SELECT3)	'callback)
      ((LAPACK_D_SELECT2)	'callback)
      ((LAPACK_D_SELECT3)	'callback)
      ((LAPACK_C_SELECT1)	'callback)
      ((LAPACK_C_SELECT2)	'callback)
      ((LAPACK_Z_SELECT1)	'callback)
      ((LAPACK_Z_SELECT2)	'callback)

      ((void*)			'pointer)
      (else			type-sym)))

  (main stx))


(define-syntax (define-shared-object stx)
  (syntax-case stx ()
    ((?ctx ?libname)
     (with-syntax
	 ((LIBTOKEN	(datum->syntax #'?ctx 'libtoken)))
       #'(define LIBTOKEN
	   (ffi.open-shared-object ?libname))))
    ))


;;;; done

)

;;; end of file
;; Local Variables:
;; End:
