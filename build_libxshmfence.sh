
## ENV ##

id="libxshmfence-libxshmfence-1.2"
dir="/tmp/opengl/$id"
prefix="/tmp/opengl/i_0"

## MAIN ##

cd "$dir" || exit $?
export PKG_CONFIG_PATH="${prefix}/lib/pkgconfig"
export ACLOCAL_PATH="$(aclocal --print-ac-dir):${prefix}/share/aclocal"
[ -d "/usr/share/aclocal" ] && export ACLOCAL_PATH="$ACLOCAL_PATH:/usr/share/aclocal"
export NOCONFIGURE=1
echo
 ./autogen.sh && ./configure --prefix=${prefix}  && make && make install
