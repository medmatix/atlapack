## Process this file with automake to produce Makefile.in

# Read "Parallel Test Harness" in the documentation of GNU Automake to
# understand how to use this interface for "make check".

AM_CFLAGS	= -Wall

check_PROGRAMS	= dgels
XFAIL_TESTS	=

if WANT_CBLAS
if FOUND_MATH_LIB
check_PROGRAMS	+= \
	cgeqrf			\
	dgesv zgesv		\
	dgesvd zgesvd
XFAIL_TESTS	+= dgesvd zgesvd
endif
endif

TESTS		= $(check_PROGRAMS)

## --------------------------------------------------------------------

atlapack_cblas_libs	= ../lapacke/liblapacke.la $(CBLAS_LIBS)

## --------------------------------------------------------------------

dgels_LDADD		= ../lapacke/liblapacke.la

dgesv_LDADD		= $(atlapack_cblas_libs)
dgesv_CPPFLAGS		= $(CBLAS_CFLAGS)
dgesv_SOURCES		= dgesv.c atlapack-test-utils.h

dgesvd_LDADD		= $(atlapack_cblas_libs)
dgesvd_CPPFLAGS		= $(CBLAS_CFLAGS)
dgesvd_SOURCES		= dgesvd.c atlapack-test-utils.h

zgesvd_LDADD		= $(atlapack_cblas_libs)
zgesvd_CPPFLAGS		= $(CBLAS_CFLAGS)
zgesvd_SOURCES		= zgesvd.c atlapack-test-utils.h

zgesv_LDADD		= $(atlapack_cblas_libs)
zgesv_CPPFLAGS		= $(CBLAS_CFLAGS)
zgesv_SOURCES		= zgesv.c atlapack-test-utils.h

cgeqrf_LDADD		= $(atlapack_cblas_libs) $(MATH_LIBS)
cgeqrf_CPPFLAGS		= $(CBLAS_CFLAGS)

### end of file
