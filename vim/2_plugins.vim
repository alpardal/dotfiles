runtime macros/matchit.vim

" plugins managed by vim-plug: https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
call plug#begin('~/.vim/plugged')

Plug 'gmarik/Vundle.vim'

Plug 'rafi/awesome-vim-colorschemes'
Plug 'dikiaap/minimalist'
Plug 'crater2150/vim-theme-chroma'
Plug 'nanotech/jellybeans.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'mhinz/vim-janah'
Plug 'tomasiser/vim-code-dark'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-projectionist'

Plug 'wincent/terminus'

Plug 'henrik/vim-indexed-search'
Plug 'rking/ag.vim'

Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'
Plug 'haya14busa/incsearch.vim'
Plug 'Yggdroot/indentLine'

Plug 'skywind3000/asyncrun.vim'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate'

" Plug 'SirVer/ultisnips'
Plug 'w0rp/ale'

Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-dispatch'
Plug 'gregsexton/MatchTag'

Plug 'mdxprograms/elm-vim' " fork to fix conflict with vim-rails

Plug 'sheerun/vim-polyglot' " must be loaded after elm-vim
let g:polyglot_disabled = ['elm']

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 't9md/vim-ruby-xmpfilter'

Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'

Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'slim-template/vim-slim'

Plug 'raichoo/purescript-vim'

Plug 'rust-lang/rust.vim'

Plug 'bhurlow/vim-parinfer'
Plug 'tpope/vim-fireplace'
Plug 'venantius/vim-cljfmt'
Plug 'frazrepo/vim-rainbow'

" testando:
Plug 'elzr/vim-json'
" Plug 'wting/gitsessions.vim'
" Plug 'mcchrish/nnn.vim'
Plug 'benmills/vimux'
Plug 'terryma/vim-expand-region'

call plug#end()
