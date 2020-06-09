
runtime ftplugin/man.vim

filetype plugin indent on
syntax enable

set cryptmethod=blowfish2
set list
set listchars=tab:»·,trail:· " ,nbsp:␣ ",eol:¬

set nomodeline
set modelines=0
set lazyredraw
set secure

set noeb vb t_vb=
set updatetime=100

set notimeout
set ttimeout
set ttimeoutlen=10

" enconding & UI:
set encoding=utf-8
set showcmd
set number
set guifont=Monaco\ 10
set cursorline
set cursorcolumn

set background=dark

" colorscheme herald
" colorscheme jellybeans
" colorscheme gotham256
colorscheme molokai
" colorscheme codedark
" colorscheme afterglow
" colorscheme apprentice
" colorscheme janah
" autocmd ColorScheme janah highlight Normal ctermbg=235
" colorscheme chroma
" colorscheme minimalist
" colorscheme OceanicNext
" colorscheme one

set laststatus=2
set statusline=%f\ %y%m
set statusline+=%=
set statusline+=%l/%L\ [%v]

set scrolloff=3
set winheight=10
set winminheight=10
set ttymouse=xterm2
set ttyfast

set mouse=

set wildmenu
set wildmode=full
set completeopt=longest,menuone,preview
set formatoptions=tcrn1
set virtualedit=all
" set virtualedit+=block

set history=10000
set undofile
set undodir=~/.vim_undo
set viewdir=~/.vim_view

set autoread
set splitbelow
set splitright
set winwidth=50

set ignorecase
set smartcase
set hlsearch
set incsearch
set wildignorecase

set nobackup
set nowb
set noswapfile

set linebreak
set showbreak=↪
set breakat=\ |,.;
set breakindent
set wrap
set formatoptions=rcqnl1j
set textwidth=0
set colorcolumn=81

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

" hi Search guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline

" test:
set shell=zsh\ -l

" handle alt key:
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50
