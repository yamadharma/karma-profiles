#!/usr/bin/env sh

if [ $USER ]
then
  export XDG_CACHE_HOME="/tmp/${USER}/.cache"
fi
