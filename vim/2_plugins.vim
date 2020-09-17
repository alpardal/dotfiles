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
Plugin 'whatyouhide/vim-gotham'
Plugin 'mhinz/vim-janah'
Plugin 'tomasiser/vim-code-dark'

Plugin 'neoclide/coc.nvim'
Plugin 'tpope/vim-projectionist'

Plugin 'wincent/terminus'

Plugin 'henrik/vim-indexed-search'
Plugin 'rking/ag.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'jreybert/vimagit'
Plugin 'haya14busa/incsearch.vim'
Plugin 'Yggdroot/indentLine'

Plugin 'skywind3000/asyncrun.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Raimondi/delimitMate'

" Plugin 'SirVer/ultisnips'
Plugin 'w0rp/ale'

Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-dispatch'
Plugin 'gregsexton/MatchTag'

Plugin 'mdxprograms/elm-vim' " fork to fix conflict with vim-rails

Plugin 'sheerun/vim-polyglot' " must be loaded after elm-vim
let g:polyglot_disabled = ['elm']

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 't9md/vim-ruby-xmpfilter'

Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
Plugin 'ap/vim-css-color'

Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'slim-template/vim-slim'

Plugin 'raichoo/purescript-vim'

Plugin 'rust-lang/rust.vim'

Plugin 'bhurlow/vim-parinfer'
Plugin 'tpope/vim-fireplace'
Plugin 'venantius/vim-cljfmt'
Plugin 'frazrepo/vim-rainbow'

" testando:
Plugin 'elzr/vim-json'
" Plugin 'wting/gitsessions.vim'
" Plugin 'mcchrish/nnn.vim'
Plugin 'benmills/vimux'
Plugin 'terryma/vim-expand-region'

call vundle#end()
