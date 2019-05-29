
## ENV ##

id="libX11-1.6.7"
dir="/tmp/opengl/$id"
prefix="/tmp/opengl/i_0"

## MAIN ##

cd "$dir" || exit $?
export PKG_CONFIG_PATH=${prefix}/lib/pkgconfig
./configure --prefix=${prefix}  && make && make install
