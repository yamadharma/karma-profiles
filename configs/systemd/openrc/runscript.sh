#!/bin/bash
#Author: Reno Reckling <exi@wthack.de>

if [ ! $# -eq 2 ]; then
    echo "Syntax error, usage: runscript.sh <scriptname> <cmd>"
    exit 1
fi

if [ ! -x $1 ]; then
    echo "Error: ${1} is not executable"
    exit 1
fi

SCRIPTNAME=$(basename ${1})

source /etc/init.d/functions.sh
source /etc/conf.d/${SCRIPTNAME%%.*}
source /etc/conf.d/rc
for file in /lib/rc/net/*; do
    source ${file}
done

RC_SVCNAME=$(basename $1)

source $1

eval $2
