#!/bin/bash

## FUNCTIONS ##

run()
{
 typeset fn="$1"
 typeset name=${fn#build_}

 name=${name%.sh}
 typeset log="${name}.log"
 typeset state="${name}.built"

 [ -f "$state" ] && { echo "Building $name..already done"; return 0; }

 echo -n "Building $name"
 typeset start="$(date +%s)"
 ./${fn} > ${log} 2>&1 
 rc=$?
 typeset end="$(date +%s)"
 typeset elapsed
 let elapsed="(( $end - $start ))"

 [ "$rc" -ne 0 ] &&
 {
  echo "..fail: rc=$rc [elapsed: $elapsed]"
  echo
  ls -lt "$log"
  tail -20 "${log}"
  return $rc
 } ||
 {
  echo "..success [elapsed: $elapsed]"
  touch "$state"
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
run build_damageproto.sh &&
run build_fixesproto.sh &&
run build_xfixes.sh &&
run build_xdamage.sh &&
run build_x86vmp.sh &&
run build_xxf86vm.sh &&
run build_xorgmacros.sh &&
run build_libxshmfence.sh &&
run build_randrproto.sh &&
run build_renderproto.sh &&
run build_libxrender.sh &&
run build_libxrandr.sh &&
run build_expat.sh &&
run build_mesa.sh
