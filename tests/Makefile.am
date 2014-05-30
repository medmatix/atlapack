## Process this file with automake to produce Makefile.in

# Read "Parallel Test Harness" in the documentation of GNU Automake to
# understand how to use this interface for "make check".

EXTRA_DIST	= \
	dgels.c			\
	cblas-cgeqrf.c

check_PROGRAMS	= dgels
if WANT_CBLAS
check_PROGRAMS	+= cblas-cgeqrf
endif

TESTS		= $(check_PROGRAMS)

## --------------------------------------------------------------------

dgels_LDADD		= ../lapacke/liblapacke.la

cblas_cgeqrf_LDADD	= ../lapacke/liblapacke.la  $(CBLAS_LIBS)
cblas_cgeqrf_CPPFLAGS	= $(CBLAS_CFLAGS)

### end of file
