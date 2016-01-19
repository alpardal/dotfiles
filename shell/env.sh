
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

export JAVA_OPTS="-client"

export NODE_HOME=$USER_BIN/nodejs

export ACTIVATOR_HOME=$USER_BIN/scala-activator

# export POSTGRES_PATH="/usr/local/pgsql/bin"
# export PGDATA="/usr/local/pgsql/data"

export PATH=$ACTIVATOR_HOME:$NODE_HOME/bin:$USER_BIN:$PATH
