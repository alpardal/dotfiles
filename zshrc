MY_ZSHRC=`readlink ~/.zshrc`
DOTFILES_DIR=`dirname "$MY_ZSHRC"`

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gallois"
plugins=(git)
source $ZSH/oh-my-zsh.sh

source $DOTFILES_DIR/shell/aliases.sh
source $DOTFILES_DIR/shell/env.sh
unalias md
source $DOTFILES_DIR/shell/functions.sh

if [[ -r "$HOME/.zshrc.local" ]]; then
    source $HOME/.zshrc.local
fi

fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

setopt HIST_IGNORE_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_SPACE

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
