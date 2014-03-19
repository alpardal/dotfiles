set nocompatible
filetype plugin indent on
syntax enable

set list listchars=tab:»·,trail:· ",eol:↲
set showbreak=↪
" set list listchars=tab:»·,trail:·,eol:¬

" Reload config files when they are edited:
augroup commands
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
    autocmd bufwritepost settings.vim source  $MYVIMRC
    autocmd bufwritepost mappings.vim source  $MYVIMRC
    autocmd bufwritepost functions.vim source $MYVIMRC
    " Restore cursor position
    autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
    au BufLeave * if !&diff | let b:winview = winsaveview() | endif
    au BufEnter * if exists('b:winview') && !&diff | call winrestview(b:winview) | endif
    au VimResized * :wincmd =
augroup END

call pathogen#infect()
call pathogen#helptags()

set nomodeline
set modelines=0
set lazyredraw
set secure
set exrc

set notimeout
set ttimeout
set ttimeoutlen=10

" enconding & UI:
set encoding=utf-8
set showcmd
set number
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
set winwidth=80

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
let g:CommandTCancelMap=['<C-c>', '<Esc>']
let g:netrw_liststyle=3
let g:slime_target = "tmux"
" test:
set shell=bash\ -l

augroup filetypes
    au!
    au Filetype css,scss setlocal foldmethod=marker foldmarker={,}
    au Filetype css,scss setlocal iskeyword+=-
    " au Filetype scss.css set ft=scss
    au BufRead *.scss set ft=scss
    au BufRead *.css.scss set ft=scss.css
augroup END

