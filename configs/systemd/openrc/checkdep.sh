#!/bin/bash
#Author: Reno Reckling <exi@wthack.de>

howto() {
    if [ "${1}" = "noscr" ]; then
        echo "not a runscript script"
    else
        echo "No argument specified"
    fi
    echo "Usage: checkdep.sh <path to init.d script> [<path to output file>]"
    exit 1
}

[ $# -lt 1 ] && howto

FILE=$1;
SCRIPTNAME=$(basename ${FILE})

[ ! -f "${FILE}" ] && howto

[ "$(head -n 1 ${1} | grep "#!/sbin/runscript")" = "" ] && howto noscr

OUTPUT=/dev/stdout

if [ "$2" != "" ]; then
    OUTPUT=$2
fi

#####BUILD OUR ENV
for script in /lib/rc/net/*; do
    source ${script}
done

source /etc/init.d/functions.sh
[ -f /etc/conf.d/${SCRIPTNAME%%.*} ] && source /etc/conf.d/${SCRIPTNAME%%.*}
[ -f /etc/conf.d/rc ] && source /etc/conf.d/rc
#####END ENV

RC_SVCNAME=$(basename $1)

need() {
    for service in $@; do
        echo -n "n:${service};"
    done
}

use() {
    for service in $@; do
        echo -n "u:${service};"
done
}

after() {
    for service in $@; do
        echo -n "a:${service};"
done
}

before() {
    for service in $@; do
        echo -n "b:${service};"
done
}

provide() {
    for service in $@; do
        echo -n "p:${service};"
done
}

config() {
    for service in $@; do
        echo -n "c:${service};"
done
}

keyword() {
    for service in $@; do
        echo -n "k:${service};"
done
}

depend() {
    return 0
}


. "${FILE}"
echo "s:${SCRIPTNAME};$(depend)" >> $OUTPUT

