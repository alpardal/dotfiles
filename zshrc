ZSH_THEME="gallois"
ZSH=$HOME/.oh-my-zsh

plugins=(git)
source $ZSH/oh-my-zsh.sh

source ~/dotfiles/bash/aliases.sh
source ~/dotfiles/bash/env.sh

unalias md
source ~/dotfiles/bash/functions.sh

setopt HIST_IGNORE_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_SPACE

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
