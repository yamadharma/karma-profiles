#!/usr/bin/env sh

if [[ -d /run/user/`id -u ${USER}` ]]
then
    USERRUNDIR=/run/user/`id -u ${USER}`
else
    USERRUNDIR=/tmp/${USER}
    mkdir -p ${USERRUNDIR}
fi

if [ $USER ]
then
    if [ "$USER" != "root" ]
    then
	export XDG_CACHE_HOME="${USERRUNDIR}/.cache"
    fi
fi
