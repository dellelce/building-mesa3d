
## ENV ##

dir="/tmp/opengl/mesa-19.0.5"
prefix="/tmp/opengl/i_0"

## MAIN ##


cd "$dir" || exit $?
export PKG_CONFIG_PATH=${prefix}/lib/pkgconfig
./configure --prefix=${prefix} --enable-autotools
