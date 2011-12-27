# prepare.sh --
#
# Run this to rebuild the infrastructure and configure.

set -xe

(set -xe ;  cd .. && sh autogen.sh)

prefix=/usr/local

../configure \
    --config-cache                              \
    --cache-file=../config.cache                \
    --enable-maintainer-mode                    \
    --disable-static --enable-shared            \
    --prefix="${prefix}"                        \
    CFLAGS='-O3 -march=i686 -mtune=i686'        \
    FFLAGS='-O3 -march=i686 -mtune=i686'        \
    "$@"

### end of file
