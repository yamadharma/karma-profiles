#!/usr/bin/env sh

if [ $USER ]
then
    if [ "$USER" != "root" ]
    then
	mkdir -p "/tmp/${USER}/.cache"
	export XDG_CACHE_HOME="/tmp/${USER}/.cache"
    fi
fi
