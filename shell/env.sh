
export EDITOR="vim"
export TERM=xterm-256color
# export TERM="screen-256color"
export TMPDIR='/tmp'
export HISTIGNORE="&:ls:[bf]g*:history:quit:exit:vi:g[sdl]:gaa"
export HISTSIZE=10000

export USER_BIN=~/.bin

export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1.25
export RUBY_GC_HEAP_INIT_SLOTS=800000
export RUBY_GC_HEAP_FREE_SLOTS=600000

export JAVA_HOME="~/bin/jdks/current_java"
export JAVA_OPTS="-client"

export POSTGRES_PATH="/usr/local/pgsql/bin"
export PGDATA="/usr/local/pgsql/data"

export SCALA_HOME=$USER_BIN/scala
export GO_HOME=/usr/local/go
export GOPATH=~/Programming/Go/packages
export NODE_PATH=/usr/local/lib/node_modules
export MONGODB_HOME=~/bin/mongodb
export CABAL_PATH=~/.cabal/bin

export PATH=$POSTGRES_PATH:$SCALA_HOME/bin:$USER_BIN:$GO_HOME/bin:$PATH
export PATH=$MONGODB_HOME/bin:$CABAL_PATH:$PATH
