dnl Process this file with autoconf to produce a configure script.
AC_PREREQ(2.68)
AC_INIT([LAPACK with GNU Autotools],[3.5.0.1],[marco.maggi-ipsu@poste.it],
  [atlapack],[http://github.com/marcomaggi/atlapack/])
AC_CONFIG_SRCDIR([lapack/])
AC_CONFIG_MACRO_DIR([meta/autotools])
AC_CONFIG_AUX_DIR([meta/autotools])
AC_CANONICAL_BUILD
AC_CANONICAL_HOST
AC_CANONICAL_TARGET
AM_INIT_AUTOMAKE([foreign dist-xz no-dist-gzip subdir-objects])
AM_MAINTAINER_MODE

AM_PROG_AR
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_MKDIR_P

LT_PREREQ([2.4])
LT_INIT

dnl This is the version stored in the pkg-config data file.
AC_SUBST([MY_LAPACK_PKG_CONFIG_VERSION],[3.5.0])
AC_SUBST([MY_MATGEN_PKG_CONFIG_VERSION],[3.5.0])
AC_SUBST([MY_LAPACKE_PKG_CONFIG_VERSION],[3.5.0])

dnl page
dnl components inclusion

AC_MSG_CHECKING([whether to include xblas-based routines])
AC_ARG_ENABLE([xblas],
  [AS_HELP_STRING([--enable-xblas],[enable use of XBLAS routines])],
  [AS_IF([test "x$enableval" = xyes],
         [USEXBLAS=yes],
         [test "x$enableval" = xno],
         [USEXBLAS=no],
         [AC_MSG_ERROR([bad value $enableval for --enable-xblas])])],
  [USEXBLAS=no])
AC_MSG_RESULT([$USEXBLAS])
AM_CONDITIONAL([USEXBLAS],[test "x$USEXBLAS" = xyes])

dnl FIXME use of XBLAS routines always fails because it requires
dnl routines that are not available in BLAS.  XBLAS is actually a
dnl separate package:
dnl
dnl   <http://www.netlib.org/xblas/>
dnl
AS_IF([test "X$USEXBLAS" = xyes],
      [AC_MSG_ERROR([enabling XBLAS routines is currently broken])])

AC_MSG_CHECKING([whether to install matgen library])
AC_ARG_ENABLE([matgen],
  [AS_HELP_STRING([--enable-matgen],[enable installation of matgen library])],
  [AS_IF([test "x$enableval" = xyes],
         [USEMATGEN=yes],
         [test "x$enableval" = xno],
         [USEMATGEN=no],
         [AC_MSG_ERROR([bad value $enableval for --enable-matgen])])],
  [USEMATGEN=no])
AM_CONDITIONAL([WANT_MATGEN],[test "x$USEMATGEN" = xyes])

AC_MSG_CHECKING([whether to search CBLAS for some test programs])
AC_ARG_WITH([cblas],
  [AS_HELP_STRING([--with-cblas],[search CBLAS for some test programs])],
  [AS_IF([test "x$withval" = xyes],
         [USECBLAS=yes],
         [test "x$withval" = xno],
         [USECBLAS=no],
         [AC_MSG_ERROR([bad value $withval for --enable-cblas])])],
  [USECBLAS=no])
AC_MSG_RESULT([$USECBLAS])
AM_CONDITIONAL([WANT_CBLAS],[test "x$USECBLAS" = xyes])

dnl page
dnl languages and external libraries

LT_LANG([Fortran 77])
AC_LANG([Fortran 77])

dnl Checks for programs.
AC_PROG_F77
AC_PROG_F77_C_O
AC_F77_LIBRARY_LDFLAGS
AC_F77_WRAPPERS

dnl Checks for libraries.
#AC_CHECK_LIB([blas],[ddot],,[AC_MSG_FAILURE([test for BLAS library failed])])

dnl This defines for substitution BLAS_LIBS.
PKG_CHECK_MODULES([BLAS],[blas >= 0.2.0])

AC_LANG([C])
AC_PROG_CC
AM_PROG_CC_C_O
AC_PROG_CC_STDC

dnl This is required for some tests.
AC_CHECK_LIB([m],[cabs],
  [AS_VAR_SET([MATH_LIBS],[-lm])
   AS_VAR_SET([atlapack_FOUND_MATH_LIB],[yes])],
  [AS_VAR_SET([MATH_LIBS])
   AS_VAR_SET([atlapack_FOUND_MATH_LIB],[no])])
AC_SUBST([MATH_LIBS])
AM_CONDITIONAL([FOUND_MATH_LIB],[test "x$atlapack_FOUND_MATH_LIB" = xyes])

dnl CBLAS is needed only for some test files.  This defines for
dnl substitution CBLAS_LIBS and CBLAS_CFLAGS.
AS_IF([test "x$USECBLAS" = xyes],
      [PKG_CHECK_MODULES([CBLAS],[cblas >= 0.2.0])])

dnl Checks for header files.
AC_HEADER_STDC

dnl Checks for typedefs, structures, and compiler characteristics.
AC_C_CONST
AC_TYPE_SIZE_T

dnl page
dnl done

AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([Makefile]
  [lapack/Makefile]
  [tmglib/Makefile]
  [lapacke/Makefile]
  [tests/Makefile]
  [doc/Makefile]
  [meta/lapack.pc]
  [meta/lapacke.pc]
  [meta/matgen.pc])
AC_OUTPUT

dnl end of file
