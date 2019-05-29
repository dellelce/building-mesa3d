
## ENV ##

dir="/tmp/opengl/expat-2.1.1"
prefix="/tmp/opengl/i_0"

## MAIN ##


cd "$dir" || exit $?
export PKG_CONFIG_PATH=${prefix}/lib/pkgconfig
./configure --prefix=${prefix} && make && make install
