#!/usr/bin/bash

#If not running interactively, don't do anything
[ -z "$PS1" ] && return

#Don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
#Ignore same sucessive entries.
export HISTCONTROL=ignoreboth

#Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

#Enable programmable completion features (you don't need to enable
#this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#If this is an xterm set the title to user@host:dir
case "$TERM" in
    xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
    *)
    ;;
esac
