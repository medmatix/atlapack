;;;
;;;Part of: ATBLAS
;;;Contents: convert table into FFI stuff
;;;Date: Wed Jun 11, 2014
;;;
;;;Abstract
;;;
;;;
;;;
;;;Copyright (C) 2014 Marco Maggi <marco.maggi-ipsu@poste.it>
;;;
;;;Redistribution and use  in source and binary forms, with  or without modification,
;;;are permitted provided that the following conditions are met:
;;;
;;;- Redistributions of source code must retain the above copyright notice, this list
;;;  of conditions and the following disclaimer.
;;;
;;;- Redistributions in  binary form must reproduce the above  copyright notice, this
;;;  list of  conditions and the following  disclaimer listed in this  license in the
;;;  documentation and/or other materials provided with the distribution.
;;;
;;;- Neither the name of the copyright  holders nor the names of its contributors may
;;;  be  used to  endorse  or promote  products derived  from  this software  without
;;;  specific prior written permission.
;;;
;;;The copyright holders  provide no reassurances that the source  code provided does
;;;not infringe any  patent, copyright, or any other intellectual  property rights of
;;;third parties.  The copyright holders disclaim  any liability to any recipient for
;;;claims  brought against  recipient by  any third  party for  infringement of  that
;;;parties intellectual property rights.
;;;
;;;THIS SOFTWARE  IS PROVIDED BY THE  COPYRIGHT HOLDERS AND CONTRIBUTORS  "AS IS" AND
;;;ANY EXPRESS  OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT  LIMITED TO,  THE IMPLIED
;;;WARRANTIES  OF   MERCHANTABILITY  AND  FITNESS   FOR  A  PARTICULAR   PURPOSE  ARE
;;;DISCLAIMED. IN  NO EVENT SHALL THE  COPYRIGHT OWNER OR CONTRIBUTORS  BE LIABLE FOR
;;;ANY  DIRECT, INDIRECT,  INCIDENTAL, SPECIAL,  EXEMPLARY, OR  CONSEQUENTIAL DAMAGES
;;;(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT  OF SUBSTITUTE GOODS OR SERVICES; LOSS
;;;OF USE,  DATA, OR  PROFITS; OR  BUSINESS INTERRUPTION) HOWEVER  CAUSED AND  ON ANY
;;;THEORY OF  LIABILITY, WHETHER  IN CONTRACT, STRICT  LIABILITY, OR  TORT (INCLUDING
;;;NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY  OUT OF THE USE OF THIS SOFTWARE, EVEN
;;;IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
;;;


#!r6rs
(import (rnrs (6)))

(define sexp
  ;; We expect SEXP to have the format:
  ;;
  ;;   (foreign-library
  ;;     (name "lapacke")
  ;;     (version
  ;;       (major	?major-number)
  ;;       (minor	?minor-number)
  ;;       (patch	?patch-number))
  ;;     (constants
  ;;       (?const-name	?const-value)
  ;;       ...)
  ;;     (type-aliases
  ;;       (?alias-name	?type-name)
  ;;       ...)
  ;;     (callback-types
  ;;      (?retval ?callabck-name (?arg-type ?arg-name ...))
  ;;      ...)
  ;;     (functions
  ;;      (?retval ?func-name (?arg-type ?arg-name ...))
  ;;      ...))
  ;;
  (let* ((P (open-input-file "table.scm"))
	 (D (read P)))
    (close-port P)
    D))

(define name
  ;;A symbol representing the library identifier name.
  ;;
  (cadr (list-ref sexp 1)))

(define libname
  ;;A string representing the Unix-style shared object file name.
  ;;
  (string-append "lib" name ".so"))

(define version-spec
  ;;A list of version numbers.
  ;;
  (map cadr (cdr (list-ref sexp 2))))

(define constant-spec*
  ;;A list of constants.
  ;;
  (cdr (list-ref sexp 3)))

(define constant-name*
  (map symbol->string (map car constant-spec*)))

;;; --------------------------------------------------------------------

(define func-spec*
  ;;We expect each FUNC-SPEC to have the format:
  ;;
  ;;   (?retval ?func-name (?arg-type ?arg-name ...))
  ;;
  (cdr (list-ref sexp 6)))

(define (string-suffix=? suffix str)
  (define str.len
    (string-length str))
  (define suffix.len
    (string-length suffix))
  (and (>= str.len suffix.len)
       (let* ((str.suffix (substring str (- str.len suffix.len) str.len)))
	 (string=? suffix str.suffix))))

(define filter-func-name
  (let ((prefix-len (string-length "LAPACKE_")))
    (lambda (char func-spec*)
      (reverse (fold-left
		   (lambda (knil func-spec)
		     (let ((name (symbol->string (list-ref func-spec 1))))
		       ;;This is a  bit fragile, but: if the function  name ends with
		       ;;"x" or  "x_work", it  is included in  the library  only when
		       ;;XBLAS  is  used.   For  the  time  being:  we  discard  such
		       ;;functions here.
		       (cond ((or (string-suffix=? "x"      name)
				  (string-suffix=? "x_work" name))
			      ;;(display name)(newline)
			      knil)
			     ((char=? char (string-ref name prefix-len))
			      (cons func-spec knil))
			     (else
			      knil))))
		 '()
		 func-spec*)))))

(define (extract-func-name* func-spec*)
  (map (lambda (func-spec)
	 (symbol->string (list-ref func-spec 1)))
    func-spec*))

(define func-spec.float*
  (filter-func-name #\s func-spec*))

(define func-spec.double*
  (filter-func-name #\d func-spec*))

(define func-spec.float-complex*
  (filter-func-name #\c func-spec*))

(define func-spec.double-complex*
  (filter-func-name #\z func-spec*))

(define func-name.float*
  ;;List of strings representing the C function names.
  ;;
  (extract-func-name* func-spec.float*))

(define func-name.double*
  ;;List of strings representing the C function names.
  ;;
  (extract-func-name* func-spec.double*))

(define func-name.float-complex*
  ;;List of strings representing the C function names.
  ;;
  (extract-func-name* func-spec.float-complex*))

(define func-name.double-complex*
  ;;List of strings representing the C function names.
  ;;
  (extract-func-name* func-spec.double-complex*))

;;; --------------------------------------------------------------------

(define (make-library file-name libsuffix func-spec* func-name*)
  (when (file-exists? file-name)
    (delete-file file-name))
  (with-output-to-file file-name
    (lambda ()
      (display (string-append "(library (" name " " libsuffix " "))
      (display version-spec)
      (display ")\n")
      (display "  (export")
      (map (lambda (func-name)
	     (display (string-append "\n    " func-name "")))
	func-name*)
      (display ")\n")
      (display "  (import (rnrs (6)) (lapacke compat))\n")
      (display (string-append "  (define-shared-object \"" libname "\")\n"))

      (map (lambda (func-spec)
	     ;;We expect FUNC-SPEC to have the format:
	     ;;
	     ;;   (?retval ?func-name (?arg-type ?arg-name ...))
	     ;;
	     (let ((retval     (list-ref func-spec 0))
		   (func-name  (list-ref func-spec 1))
		   (arg*       (list-ref func-spec 2)))
	       (display (string-append "  (define-c-function "
				       (symbol->string retval) " "
				       (symbol->string func-name)
				       " ("))
	       (if (equal? arg* '(void))
		   (display 'void)
		 ;;Here we know ARG* holds an even number of items.
		 (let loop ((arg* arg*))
		   (unless (null? arg*)
		     (display (symbol->string (car arg*)))
		     (display " ")
		     (loop (cddr arg*)))))
	       (display "))\n")))
	func-spec*)

      (display "  #| end of library |#)\n\n;;; end of file\n")
      (flush-output-port (current-output-port)))))

(define (make-constants-library file-name libsuffix constant-spec* constant-name*)
  (when (file-exists? file-name)
    (delete-file file-name))
  (with-output-to-file file-name
    (lambda ()
      (display (string-append "(library (" name " " libsuffix " "))
      (display version-spec)
      (display ")\n")
      (display "  (export")
      (map (lambda (const-name)
	     (display (string-append "\n    " const-name "")))
	constant-name*)
      (display ")\n")
      (display "  (import (rnrs (6)) (lapacke compat))\n")

      (map (lambda (const-spec)
	     (display "  (define ")
	     (display (car const-spec))
	     (display " ")
	     (display (cadr const-spec))
	     (display ")\n"))
	constant-spec*)

      (display "  #| end of library |#)\n\n;;; end of file\n")
      (flush-output-port (current-output-port)))))

(make-library "lapacke/float.sls" "float" func-spec.float* func-name.float*)
(make-library "lapacke/double.sls" "double" func-spec.double* func-name.double*)
(make-library "lapacke/float-complex.sls" "float-complex" func-spec.float-complex* func-name.float-complex*)
(make-library "lapacke/double-complex.sls" "double-complex" func-spec.double-complex* func-name.double-complex*)
(make-constants-library "lapacke/constants.sls" "constants" constant-spec* constant-name*)

;;; end of file
;; Local Variables:
;; coding: utf-8-unix
;; End:
