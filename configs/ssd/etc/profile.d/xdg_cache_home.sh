#!/usr/bin/env sh

if [ $USER ]
then
    mkdir -p /tmp/${USER}/.cache
    export XDG_CACHE_HOME="/tmp/${USER}/.cache"
fi
