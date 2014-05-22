set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim

" Go stuff:
set rtp+=/usr/local/go/misc/vim
let g:gofmt_command="gofmt -tabs=false -tabwidth=2"

filetype plugin indent on
syntax enable

set list listchars=tab:»·,trail:· ",eol:↲
set showbreak=↪
" set list listchars=tab:»·,trail:·,eol:¬

" Reload config files when they are edited:
augroup commands
    autocmd!
    autocmd VimEnter * :call SourceAllVimrcs()
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
let g:airline_powerline_fonts=1
let g:airline_theme="bubblegum"
let g:airline_section_z="%3p%% %{g:airline_symbols.linenr}%#__accent_bold#%4l[%L]%#__restore__#:%3c"

" test:
set shell=bash\ -l

augroup filetypes
    au!
    au Filetype css,scss setlocal foldmethod=marker foldmarker={,}
    au Filetype css,scss setlocal iskeyword+=-
augroup END

" plugins managed by Vundle:
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tomtom/tcomment_vim'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

Plugin 'guns/vim-clojure-static'
Plugin 'derekwyatt/vim-scala'
Plugin 'marijnh/tern_for_vim'

Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'slim-template/vim-slim'

call vundle#end()

"vim-coffee-script
"vim-javascript

"sparkup
"vim-ragtag
"vim-bufferlist
"vim-fugitive
"vim-slime
