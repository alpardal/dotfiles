ZSH_THEME="gallois"
ZSH=$HOME/.oh-my-zsh

plugins=(git)
source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/dotfiles/bash/aliases.sh
source ~/dotfiles/bash/env.sh

unalias md
source ~/dotfiles/bash/functions.sh

setopt hist_ignore_dups
setopt hist_expire_dups_first
setopt hist_ignore_space

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
