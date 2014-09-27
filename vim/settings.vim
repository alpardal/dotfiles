set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
" Go stuff:
set rtp+=/usr/local/go/misc/vim

runtime ftplugin/man.vim

filetype plugin indent on
syntax enable

set list listchars=tab:»·,trail:· ",eol:↲
set showbreak=↪
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
if has('win32')
    set guifont=Consolas:h12
endif
if has('gui_running')
    set guioptions=aci
    set lines=45 columns=100
    colorscheme wombat
else
    " colorscheme herald
    colorscheme jellybeans
endif

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

set history=1000
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

set wrap
set linebreak
set backspace=indent,eol,start
set expandtab
set tabstop=4
set shiftwidth=4
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
