
if [ $SHELL = '/bin/bash' ]; then
    shopt -s huponexit
    shopt -s autocd
    shopt -s checkjobs
    shopt -s globstar
    set -o notify
    set -o ignoreeof

    export PS1="\[\e[0;34m\][\u]\[\e[1;34m\]\w\[\e[0m\] ☢ "
fi

export EDITOR="vim"
export TERM=xterm-256color
# export TERM="screen-256color"
export TMPDIR='/tmp'
export HISTIGNORE="&:ls:[bf]g*:history:quit:exit:vi:g[sdl]:gaa"
export HISTSIZE=10000

export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1.25
export RUBY_GC_HEAP_INIT_SLOTS=800000
export RUBY_GC_HEAP_FREE_SLOTS=600000

export JAVA_HOME=~/.jdk1.7.0
export JAVA_OPTS="-client"
export POSTGRES_PATH="/usr/local/pgsql/bin"
export PGDATA="/usr/local/pgsql/data"
export RBXOPT='-X19'
export USER_BIN=~/.bin
export SCALA_HOME=$USER_BIN/scala
export GO_HOME=/usr/local/go
export NODE_PATH=/usr/local/lib/node_modules
export PATH=$POSTGRES_PATH:$JAVA_HOME/bin:$PATH:$SCALA_HOME/bin:$USER_BIN:$GO_HOME/bin
