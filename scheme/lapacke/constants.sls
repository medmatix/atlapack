(library (lapacke constants (3 5 0))
  (export
    LAPACK_ROW_MAJOR
    LAPACK_COL_MAJOR
    LAPACK_WORK_MEMORY_ERROR
    LAPACK_TRANSPOSE_MEMORY_ERROR)
  (import (rnrs (6)) (lapacke compat))
  (define LAPACK_ROW_MAJOR 101)
  (define LAPACK_COL_MAJOR 102)
  (define LAPACK_WORK_MEMORY_ERROR -1010)
  (define LAPACK_TRANSPOSE_MEMORY_ERROR -1011)
  #| end of library |#)

;;; end of file
