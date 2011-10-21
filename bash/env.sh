
shopt -s huponexit
set -o notify

export EDITOR="gvim"
export JAVA_HOME=~/.jdk1.7.0
export USER_BIN=~/.bin
export PATH=$JAVA_HOME/bin:$PATH:$USER_BIN

export CDPATH=::$HOME:~/Programming

export PS1="\[\e[0;34m\][\u]\[\e[1;34m\]\w\[\e[0m\] \$ "
