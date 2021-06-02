# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;33;49m\]\u@\h:\[\033[01;34m\]\w\[\033[00m\]$ "

alias v="source $HOME/.vicd"
