## Process this file with automake to produce Makefile.in

SUBDIRS			= lapack tmglib lapacke tests doc
ACLOCAL_AMFLAGS		= -I meta/autotools
AUTOMAKE_OPTIONS	= foreign
dist_doc_DATA		= README COPYING
EXTRA_DIST		= INSTALL

AM_CFLAGS		= -I $(srcdir)/lapacke/src -I $(srcdir)/lapacke/utils

### end of file
