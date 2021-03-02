#
# ~/.bashrc
#

export PATH="/usr/share/doc/pass/examples/dmenu:$PATH"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u@\h:\[\033[01;34m\]\w\[\033[00m\]$ "

#if [ `echo $TERM` == "rxvt-unicode-256color" ]; then
#  zsh
#fi
