
## ENV ##

id="xorg-macros-util-macros-1.19.1"
dir="/tmp/opengl/$id"
prefix="/tmp/opengl/i_0"

## MAIN ##

cd "$dir" || exit $?
export PKG_CONFIG_PATH=${prefix}/lib/pkgconfig
./autogen.sh && ./configure --prefix=${prefix}  && make && make install

[ -f "${prefix}/share/pkgconfig/xorg-macros.pc" ] &&
{
 cp "${prefix}/share/pkgconfig/xorg-macros.pc" "${prefix}/lib/pkgconfig/xorg-macros.pc"
}
