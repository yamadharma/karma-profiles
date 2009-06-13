#!/bin/bash

GCC_VERSION=$(gcc-config -C -c)

case $GCC_VERSION in
    *-4.4*)
#	export CFLAGS="$CFLAGS -floop-interchange -floop-strip-mine -floop-block -fgraphite"
	;;
    *)
	;;
esac


