## Process this file with automake to produce Makefile.in

SUBDIRS			= lapack tmglib lapacke tests doc
ACLOCAL_AMFLAGS		= -I meta/autotools
AUTOMAKE_OPTIONS	= foreign
dist_doc_DATA		= README COPYING
EXTRA_DIST		= INSTALL

AM_CFLAGS		= -I $(srcdir)/lapacke/src -I $(srcdir)/lapacke/utils

## --------------------------------------------------------------------

EXTRA_DIST		+= \
	scheme/Makefile				\
	scheme/process.sps			\
	scheme/table.scm			\
	\
	scheme/lapacke/constants.sls		\
	scheme/lapacke/float.sls		\
	scheme/lapacke/float-complex.sls	\
	scheme/lapacke/double.sls		\
	scheme/lapacke/double-complex.sls	\
	scheme/lapacke/compat.vicare.sls	\
	scheme/test-vicare.sps

### end of file
