set nocompatible

" Reload config files when they are edited:
autocmd! bufwritepost settings.vim source ~/dotfiles/vim/settings.vim
autocmd! bufwritepost mappings.vim source ~/dotfiles/vim/mappings.vim

call pathogen#infect()

" disable modelines:
set nomodeline
set modelines=0

" enconding & UI:
set encoding=utf-8
set ruler
set showcmd
set number " line numbers
set nolazyredraw "Don't redraw while executing macros
set guifont=Monaco\ 10
if has('win32')
	set guifont=Consolas:h12
endif
if has('gui_running')
	"set guioptions-=T
	"set guioptions-=L
	"set guioptions-=R
	set guioptions=ac
	set cursorline
	set lines=45 columns=100
	colorscheme wombat
else
	colorscheme solarized
	set background=dark
endif

set scrolloff=3 " scroll offset

set wildmenu
set wildmode=list:longest

set history=1000

filetype plugin indent on
syntax enable
set noautochdir
set autoread

set ignorecase
set smartcase
set hlsearch
set incsearch

set iskeyword-=_

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

set timeoutlen=250
set magic
set showmatch

" folding settings:
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=1

hi Search guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
