
## ENV ##

id="xf86vidmodeproto-2.3.1"
dir="/tmp/opengl/$id"
prefix="/tmp/opengl/i_0"

## MAIN ##

cd "$dir" || exit $?
export PKG_CONFIG_PATH=${prefix}/lib/pkgconfig
./configure --prefix=${prefix}  && make && make install
