dnl Process this file with autoconf to produce a configure script.
AC_PREREQ(2.68)
AC_INIT([LAPACK with GNU Autotools],[0.1.3],[marco.maggi-ipsu@poste.it],
  [atlapack],[http://github.com/marcomaggi/atlapack/])
AC_CONFIG_SRCDIR([lapack/])
AC_CONFIG_MACRO_DIR([autotools])
AC_CONFIG_AUX_DIR([autotools])
AC_CANONICAL_BUILD
AC_CANONICAL_HOST
AC_CANONICAL_TARGET
AM_INIT_AUTOMAKE([-Wall foreign dist-xz no-dist-gzip])
AM_MAINTAINER_MODE

AM_PROG_AR
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_MKDIR_P

AC_ARG_ENABLE([xblas],
  [AS_HELP_STRING([--enable-xblas],[enable use of XBLAS])],
  [case "${enableval}" in
     yes) USEXBLAS=true ;;
     no)  USEXBLAS=false ;;
     *)   AC_MSG_ERROR([bad value ${enableval} for --enable-xblas]) ;;
   esac],[USEXBLAS=false])
AM_CONDITIONAL([USEXBLAS],[test X$USEXBLAS = xtrue])

LT_PREREQ([2.4])
LT_INIT

LT_LANG([Fortran 77])
AC_LANG([Fortran 77])

dnl Checks for programs.
AC_PROG_F77
AC_PROG_F77_C_O
AC_F77_LIBRARY_LDFLAGS
AC_F77_WRAPPERS

AC_CHECK_LIB([blas],[ddot],,[AC_MSG_FAILURE([test for BLAS library failed])])

AC_LANG([C])
AC_PROG_CC
AM_PROG_CC_C_O
AC_PROG_CC_STDC

AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET

dnl Checks for header files.
AC_HEADER_STDC

dnl Checks for typedefs, structures, and compiler characteristics.
AC_C_CONST
AC_TYPE_SIZE_T

AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([Makefile lapack/Makefile lapacke/Makefile tests/Makefile])
AC_OUTPUT

dnl end of file
