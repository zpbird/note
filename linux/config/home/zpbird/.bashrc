#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# source /etc/bash_completion

export PATH=$PATH:/home/zpbird/.nutstore/dist/bin
export PATH=$PATH:/mnt/store/soft/scrt/scrt-8.3.1
