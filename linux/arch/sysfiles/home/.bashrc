#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# source /usr/share/nvm/init-nvm.sh
source /usr/share/nvm/init-nvm.sh

export PATH="$HOME/.local/bin:$HOME/.pyenv/shims:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"







