" plugins managed by Vundle:
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'henrik/vim-indexed-search'
Plugin 'rking/ag.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-endwise'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/StringComplete'

Plugin 'SirVer/ultisnips'

" Plugin 'jiangmiao/auto-pairs'
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
" Plugin 'tpope/vim-vinegar'

" Plugin 'vim-scripts/dbext.vim'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 't9md/vim-ruby-xmpfilter'

Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'

Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'slim-template/vim-slim'

Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'

Plugin 'metakirby5/codi.vim'
Plugin 'maralla/validator.vim'

Plugin 'guns/vim-clojure-static'
Plugin 'derekwyatt/vim-scala'
Plugin 'elixir-lang/vim-elixir'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
" Plugin 'lambdatoast/elm.vim'
Plugin 'elmcast/elm-vim'

" testando:
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'jplaut/vim-arduino-ino'

"vim-bufferlist
"vim-fugitive
"vim-slime
"marijnh/tern_for_vim'

call vundle#end()
