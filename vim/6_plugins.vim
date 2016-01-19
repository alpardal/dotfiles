" plugins managed by Vundle:
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'henrik/vim-indexed-search'
Plugin 'rking/ag.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-endwise'
Plugin 'Raimondi/delimitMate'

" Plugin 'jiangmiao/auto-pairs'
Plugin 'tomtom/tcomment_vim'
" Plugin 'scrooloose/nerdtree'
" Plugin 'tpope/vim-vinegar'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 't9md/vim-ruby-xmpfilter'

Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'

Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'slim-template/vim-slim'

Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

Plugin 'guns/vim-clojure-static'
Plugin 'derekwyatt/vim-scala'

" testando:
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'jplaut/vim-arduino-ino'

call vundle#end()

"vim-bufferlist
"vim-fugitive
"vim-slime
"marijnh/tern_for_vim'

augroup plugin_mappings
    au!

    au BufEnter plugins.vim execute 'map <buffer> <leader>pi :w\|PluginInstall<cr>'
    au BufEnter plugins.vim execute 'map <buffer> <leader>pc :w\|PluginClean<cr>'
    au BufEnter plugins.vim execute 'map <buffer> <leader>pu :w\|PluginUpdate<cr>'
augroup END
