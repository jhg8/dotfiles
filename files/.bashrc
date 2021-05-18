# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
if [ -z $SLAPOS_CLIENT_CONFIGURATION ]; then
  source /srv/slapgrid/slappart4/theia_env;
fi
PS1="\[\e]0;\u@\h: \w\a\]\[\033[0;33;49m\]Theia2:\[\033[01;34m\]\w\[\033[00m\]$ "
#/srv/slapgrid/slappart4/bin/theia-shell
