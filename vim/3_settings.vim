
runtime ftplugin/man.vim

filetype plugin indent on
syntax enable

set list listchars=tab:»·,trail:· ",eol:↲
" set list listchars=tab:»·,trail:·,eol:¬

set nomodeline
set modelines=0
set lazyredraw
set secure

set notimeout
set ttimeout
set ttimeoutlen=10

" enconding & UI:
set encoding=utf-8
set showcmd
set number
set guifont=Monaco\ 10
set cursorline

set background=dark

" colorscheme herald
colorscheme jellybeans

set laststatus=2
set statusline=%f\ %y%m
set statusline+=%=
set statusline+=%l/%L\ [%v]

set scrolloff=3
set winheight=10
set winminheight=10

set wildmenu
set wildmode=longest:list
set completeopt=longest,menuone,preview
set formatoptions=tcrn1
set virtualedit+=block

set history=10000
set undofile
set undodir=~/.vim_undo

set autoread
set splitbelow
set splitright
set winwidth=50

set ignorecase
set smartcase
set hlsearch
set incsearch

set nobackup
set nowb
set noswapfile

set linebreak
set showbreak=↪
set breakat=\ |,.;
set breakindent
set nowrap
set nolist
set textwidth=0
set colorcolumn=+1

set backspace=indent,eol,start
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab

set timeoutlen=500
set magic
set showmatch

set foldmethod=manual
set foldnestmax=10
set nofoldenable
set foldlevel=1

hi Search guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline

" test:
set shell=bash\ -l