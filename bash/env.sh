
shopt -s huponexit
shopt -s autocd
shopt -s checkjobs
set -o notify
set -o ignoreeof

export EDITOR="vi"
export TERM=xterm-256color
export HISTIGNORE="&:ls:[bf]g*:history:quit:exit"

export JAVA_HOME=~/.jdk1.7.0
export PATH=$JAVA_HOME/bin:$PATH

#export CDPATH=::$HOME:~/Programming

export PS1="\[\e[0;34m\][\u]\[\e[1;34m\]\w\[\e[0m\] \$ "
