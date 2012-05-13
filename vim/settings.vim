set nocompatible
filetype plugin indent on
syntax enable

" Reload config files when they are edited:
augroup commands
	autocmd!
	autocmd bufwritepost settings.vim source  $MYVIMRC
	autocmd bufwritepost mappings.vim source  $MYVIMRC
	autocmd bufwritepost functions.vim source $MYVIMRC
	" Restore cursor position
	autocmd BufReadPost *
		\ if line("'\"") > 1 && line("'\"") <= line("$") |
		\   exe "normal! g`\"" |
		\ endif
augroup END

call pathogen#infect()

set nomodeline
set modelines=0
set secure
set exrc

" enconding & UI:
set encoding=utf-8
set ruler
set showcmd
set number
set nolazyredraw "Don't redraw while executing macros
set guifont=Monaco\ 10
set cursorline
if has('win32')
	set guifont=Consolas:h12
endif
if has('gui_running')
	set guioptions=aci
	set lines=45 columns=100
	colorscheme wombat
    set bg=dark
else
	colorscheme herald
endif

set laststatus=2
set statusline=%f\ %y%m
set statusline+=%=
set statusline+=%l/%L\ [%v]

set scrolloff=3
set winheight=10
set winminheight=10

set wildmenu
set wildmode=list:longest
set completeopt=longest,menuone

set history=1000

set autoread

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

runtime ftplugin/man.vim
