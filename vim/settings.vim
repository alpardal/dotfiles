set nocompatible " not vi compatible

" disable modelines:
set nomodeline
set modelines=0

" enconding & UI:
set encoding=utf-8
set guifont=Monaco\ 10
colorscheme wombat
set ruler
set showcmd
set lines=50 columns=100
set number " line numbers

set scrolloff=3 " scroll offset

set wildmenu
set wildmode=list:longest

set history=1000

filetype plugin indent on
syntax enable
set noautochdir " senão command-t é inutil
set autoread

set ignorecase
set smartcase
set hlsearch
set incsearch " incremental search

set nobackup
set nowb
set noswapfile

set wrap
set linebreak
set backspace=indent,eol,start
set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab

set timeoutlen=250 " key sequence timeout
set magic          " magic for regex
set showmatch      " show matching bracets

" folding settings:
set foldmethod=syntax
set foldnestmax=10    " deepest fold level
set nofoldenable      " dont fold by default
set foldlevel=1
