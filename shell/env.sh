
export VIMCMD=vim

export EDITOR=$VIMCMD
# export ECTO_EDITOR=$VIMCMD

export DOCKER_BUILDKIT=1
# export TERM=xterm-256color
# export TERM=gnome-256color

# if strange chars appear in command output after setting TERM,
# edit ~/.oh-my-zsh/lib/termsupport.zsh and comment the following line:
#   print -Pn "\ek$1:q\e\\" # set screen hardstatus
# (line ~ 25)
export TERM="screen-256color"

export TMPDIR='/tmp'
export HISTIGNORE="&:ls:[bf]g*:history:quit:exit:vi:g[sdl]:gaa"
export HISTSIZE=10000

export USER_BIN=~/.bin

export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1.25
export RUBY_GC_HEAP_INIT_SLOTS=800000
export RUBY_GC_HEAP_FREE_SLOTS=600000

# export RUBOCOP_OPTS='--safe-autocorrect'

export JAVA_OPTS="-client"

export ERL_AFLAGS="-kernel shell_history enabled"

export FZF_DEFAULT_OPTS='--bind=up:preview-up,down:preview-down'

export CABAL_BIN=$HOME/.cabal/bin

# export POSTGRES_PATH="/usr/local/pgsql/bin"
# export PGDATA="/usr/local/pgsql/data"
# export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
export CARGO_BIN="$HOME/.cargo/bin"

export HEROKU_BIN="/usr/local/heroku/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=$USER_BIN:$CARGO_BIN:$CABAL_BIN:$HEROKU_BIN:$PATH
