" plugins managed by Vundle:
set nocompatible
filetype off

runtime macros/matchit.vim

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'dikiaap/minimalist'
Plugin 'crater2150/vim-theme-chroma'
Plugin 'nanotech/jellybeans.vim'

Plugin 'henrik/vim-indexed-search'
Plugin 'rking/ag.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'haya14busa/incsearch.vim'
Plugin 'Yggdroot/indentLine'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-endwise'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/StringComplete'

Plugin 'SirVer/ultisnips'
Plugin 'w0rp/ale'

Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-dispatch'
Plugin 'gregsexton/MatchTag'

Plugin 'sheerun/vim-polyglot'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 't9md/vim-ruby-xmpfilter'

Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'

Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'slim-template/vim-slim'

Plugin 'raichoo/purescript-vim'

Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
Plugin 'elmcast/elm-vim'
Plugin 'idris-hackers/idris-vim'

" testando:
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'jplaut/vim-arduino-ino'

"marijnh/tern_for_vim'

call vundle#end()
