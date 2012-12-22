# ~/.profile
# User specific aliases and functions

export XDG_CACHE_HOME=/tmp/${USER}/.cache

if [[ -f ${HOME}/.mozilla/firefox/profiles.ini ]]
then
    export XRE_PROFILE_PATH=${HOME}/.mozilla/firefox/$(grep Path ${HOME}/.mozilla/firefox/profiles.ini | cut -d= -f2)
    export XRE_PROFILE_LOCAL_PATH="${XDG_CACHE_HOME}/firefox/$(basename $XRE_PROFILE_PATH)"
fi
