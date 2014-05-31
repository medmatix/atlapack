## Process this file with automake to produce Makefile.in

# Read "Parallel Test Harness" in the documentation of GNU Automake to
# understand how to use this interface for "make check".

check_PROGRAMS	= dgels dgesv

if WANT_CBLAS
if FOUND_MATH_LIB
check_PROGRAMS	+= cblas-cgeqrf
endif
endif

TESTS		= $(check_PROGRAMS)

## --------------------------------------------------------------------

dgels_LDADD		= ../lapacke/liblapacke.la

dgesv_LDADD		= ../lapacke/liblapacke.la
dgesv_SOURCES		= dgesv.c atlapack-test-utils.h

cblas_cgeqrf_LDADD	= ../lapacke/liblapacke.la $(MATH_LIBS) $(CBLAS_LIBS)
cblas_cgeqrf_CPPFLAGS	= $(CBLAS_CFLAGS)

### end of file
