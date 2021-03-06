# configure.sh --
#
# Run this to configure.

set -xe

prefix=/usr/local
if test -d /lib64
then libdir=${prefix}/lib64
else libdir=${prefix}/lib
fi

../configure \
    --config-cache                              \
    --cache-file=../config.cache                \
    --enable-maintainer-mode                    \
    --disable-static --enable-shared            \
    --prefix="${prefix}"                        \
    --libdir="${libdir}"                        \
    --enable-deprecated				\
    --enable-matgen				\
    --with-cblas				\
    CFLAGS='-O3'				\
    FFLAGS='-O3'				\
    "$@"

### end of file
