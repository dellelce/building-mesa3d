
## ENV ##

id="xtrans-1.4.0"
dir="/tmp/opengl/$id"
prefix="/tmp/opengl/i_0"

## MAIN ##

cd "$dir" || exit $?
export PKG_CONFIG_PATH=${prefix}/lib/pkgconfig
./configure --prefix=${prefix}  && make && make install &&
[ -f "${prefix}/share/pkgconfig/xtrans.pc" ] &&
{
 cp "${prefix}/share/pkgconfig/xtrans.pc" "${prefix}/lib/pkgconfig/xtrans.pc"
}
