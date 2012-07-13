
shopt -s huponexit
shopt -s autocd
shopt -s checkjobs
shopt -s globstar
set -o notify
set -o ignoreeof

export EDITOR="vim"
export TERM=xterm-256color
export HISTIGNORE="&:ls:[bf]g*:history:quit:exit:vi"

export JAVA_HOME=~/.jdk1.7.0
export JAVA_OPTS="-client"
export USER_BIN=~/.bin
export PATH=$JAVA_HOME/bin:$PATH:$USER_BIN

export PS1="\[\e[0;34m\][\u]\[\e[1;34m\]\w\[\e[0m\] ☢ "
