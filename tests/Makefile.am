## Process this file with automake to produce Makefile.in

# Read "Parallel Test Harness" in the documentation of GNU Automake to
# understand how to use this interface for "make check".

AM_CFLAGS	= -Wall

check_PROGRAMS	=
XFAIL_TESTS	=

if WANT_CBLAS
if FOUND_MATH_LIB
check_PROGRAMS	+= \
	dgesv  zgesv		\
	dgesvd zgesvd		\
	dgetrf zgetrf		\
	cgeqrf			\
	dgels  zgels
endif
endif

TESTS		= $(check_PROGRAMS)

## --------------------------------------------------------------------

atlapack_cblas_libs	= ../lapacke/liblapacke.la $(CBLAS_LIBS) $(MATH_LIBS)

## --------------------------------------------------------------------

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

dgetrf_LDADD		= $(atlapack_cblas_libs)
dgetrf_CPPFLAGS		= $(CBLAS_CFLAGS)
dgetrf_SOURCES		= dgetrf.c atlapack-test-utils.h

zgetrf_LDADD		= $(atlapack_cblas_libs)
zgetrf_CPPFLAGS		= $(CBLAS_CFLAGS)
zgetrf_SOURCES		= zgetrf.c atlapack-test-utils.h

dgels_LDADD		= $(atlapack_cblas_libs)
dgels_CPPFLAGS		= $(CBLAS_CFLAGS)
dgels_SOURCES		= dgels.c atlapack-test-utils.h

zgels_LDADD		= $(atlapack_cblas_libs)
zgels_CPPFLAGS		= $(CBLAS_CFLAGS)
zgels_SOURCES		= zgels.c atlapack-test-utils.h

### end of file
