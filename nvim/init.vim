" set runtimepath^=/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath

source ~/dotfiles/nvim/3_settings.vim
source ~/dotfiles/nvim/6_mappings.vim
" source ~/dotfiles/vim/7_custom.vim

set runtimepath+=~/dotfiles/nvim
source ~/dotfiles/nvim/init.lua
