ZSH_THEME="gallois"
ZSH=$HOME/.oh-my-zsh

plugins=(git)
source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/dotfiles/bash/aliases.sh
source ~/dotfiles/bash/env.sh
source ~/dotfiles/bash/functions.sh

setopt hist_ignore_dups
setopt hist_expire_dups_first
setopt hist_ignore_space

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export LD_LIBRARY_PATH="/home/andre/.rvm/rubies/ruby-1.9.3-p327/lib/"