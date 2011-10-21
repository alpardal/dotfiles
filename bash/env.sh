
shopt -s huponexit
set -o notify

export EDITOR="gvim"
export USER_BIN=~/.bin
export PATH=$PATH:$USER_BIN

export CDPATH=::$HOME:~/Programming

export PS1="\[\e[0;34m\][\u]\[\e[1;34m\]\w\[\e[0m\] \$ "
