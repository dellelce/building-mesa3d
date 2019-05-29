#!/bin/bash
export PATH=.:$PATH

#build_xcbproto.sh &&
build_glproto.sh &&
build_pciaccess.sh &&
build_libdrm.sh &&
build_dri2proto.sh &&
build_mesa.sh

#build_libxcb.sh &&
#build_pthstubs.sh &&
#build_xau.sh &&
#build_xproto.sh &&
#build_x11.sh &&
#build_xext.sh &&
#build_xextproto.sh &&
#build_kbproto.sh &&
#build_inputproto.sh &&
#build_xdamage.sh &&
#build_damageproto.sh &&
#build_xfixes.sh &&
#build_fixesproto.sh &&
#build_xxf86vm.sh &&
#build_x86vmp.sh &&
#build_xtrans.sh &&
#build_xorgmacros.sh &&
#build_libxshmfence.sh &&
#build_xrandr.sh &&
#build_libxrandr.sh
