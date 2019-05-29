#!/bin/bash

## FUNCTIONS ##

run()
{
 typeset fn="$1"
 typeset name=${fn#build_}

 name=${name%.sh}
 typeset log="${name}.log"

 echo -n "Building $name"
 ./${fn} > ${log} 2>&1 
 rc=$?

 [ "$rc" -ne 0 ] &&
 {
  echo "..fail: rc=$rc"
  echo
  ls -lt "$log"
  tail -20 "${log}"
  return $rc
 } ||
 {
  echo "..success"
 }
}

## ENV ##

export PATH=.:$PATH

## MAIN ##

#build_xcbproto.sh &&
run build_glproto.sh &&
run build_pciaccess.sh &&
run build_libdrm.sh &&
run build_dri2proto.sh &&
run build_xproto.sh &&
run build_xextproto.sh &&
run build_xtrans.sh &&
run build_xcbproto.sh &&
run build_pthstubs.sh &&
run build_xau.sh &&
run build_libxcb.sh &&
run build_inputproto.sh &&
run build_kbproto.sh &&
run build_x11.sh &&
run build_xext.sh &&
run build_mesa.sh

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
