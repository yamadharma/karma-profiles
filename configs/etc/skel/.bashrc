# /etc/skel/.bashrc:
# $Header: /home/cvsroot/gentoo-src/rc-scripts/etc/skel/.bashrc,v 1.7 2002/11/18 19:39:22 azarah Exp $

# This file is sourced by all *interactive* bash shells on startup.  This
# file *should generate no output* or it will break the scp and rcp commands.

# colors for ls, etc.
eval `dircolors -b /etc/DIR_COLORS`
alias d="ls --color"
alias ls="ls --color=auto"
alias ll="ls --color -l"

# Change the window title of X terminals 
case $TERM in
	xterm*|rxvt|eterm)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
		;;
	screen)
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
		;;
esac

##uncomment the following to activate bash-completion:
[ -f /etc/profile.d/bash-completion ] && source /etc/profile.d/bash-completion

export MOZ_DISABLE_PANGO=1

#if [ x"$KDE_FULL_SESSION" != x"true" ]
#then
#	export KDE_FULL_SESSION="true"
#fi

if [ x"$GNOME_DESKTOP_SESSION_ID" == x"" ]
then
	export GNOME_DESKTOP_SESSION_ID=1
fi

export OOO_FORCE_DESKTOP=gnome
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Djdk.gtk.version=3'
export XDG_CURRENT_DESKTOP=GNOME

# dropbox start 2> /dev/null
PATH=~/bin:~/opt/bin:~/.local/bin:$PATH

## Julia 

mkdir -p /var/tmp/${USER}
export JULIA_DEPOT_PATH=/var/tmp/${USER}:${JULIA_DEPOT_PATH}

