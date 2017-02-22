
let mapleader = " "

nnoremap <leader>w :w<cr>
nnoremap <leader>x :x<cr>

nnoremap <leader>y "+y
nnoremap <leader>Y "+p
vnoremap <leader>y "+y
vnoremap <leader>Y "+p

"selects last inserted text:
nnoremap gV `[v`]

execute 'nnoremap <leader>f :Ag '

nnoremap <C-e> 4<C-e>
nnoremap <C-y> 4<C-y>
nnoremap p gp
nnoremap P gP
" nnoremap p p`]
vnoremap p p`]
nnoremap 0 ^
nnoremap ^ 0
nnoremap 0 g^
nnoremap g0 ^
nnoremap $ g$
nnoremap g$ $
nnoremap ' `
nnoremap ` '
nnoremap <leader>q :q<cr>
" go to last buffer:
nnoremap <silent> <leader><leader> <c-^>

nnoremap <silent> <leader>o :CtrlP .<cr>
nmap     <silent> <leader>i :CtrlP %%<cr>
nnoremap <silent> <leader>p :CtrlPMRU<cr>
nnoremap <leader>= :NERDTreeToggle<cr>

nnoremap <cr> G
nnoremap <silent> <leader><cr> :nohlsearch<cr>
nnoremap j gj
nnoremap k gk
nnoremap Q :normal n.<cr>
nnoremap <leader>[ :bn<cr>
nnoremap <leader>] :bp<cr>
nmap <leader>e :e %%

" current file directory:
cnoremap %% <C-R>=expand('%:h').'/'<cr>
cnoremap <C-a> <Home>

inoremap <A-p> "

inoremap <C-l> <delete>
inoremap <C-r> <C-r><C-p>
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-p>
" upcase prev word
inoremap <C-c> <esc>gUiwea

" window mappings
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-p> <C-w>p
nnoremap <left> <C-w><
nnoremap <right> <C-w>>
nnoremap <up> <C-w>-
nnoremap <down> <C-w>+

" tabs
nnoremap <leader>bb :tabnew<cr>

nnoremap <silent> <A-j> :m +1<cr>
nnoremap <silent> <A-k> :m -2<cr>
vnoremap <silent> <A-j> :m '>+1<cr>gv
vnoremap <silent> <A-k> :m '<-2<cr>gv

" split line
nnoremap S i<cr><esc>k$

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

nnoremap <leader>h :call SearchNotes()<cr>
nnoremap <leader>H :CtrlP ~/Programming/notes<cr>
nnoremap <leader>n :call RenameFile()<cr>

nnoremap <leader>gl :CtrlP lib/<cr>
nnoremap <leader>gs :CtrlP spec/<cr>
nnoremap <leader>gg :e Gemfile<cr>

" autocomplete quoted strings:
inoremap <c-j> <c-o>:set completefunc=StringComplete#GetList<cr><c-x><c-u>

" Plugins:

" vim-emmet:
imap <C-f> <C-e>,

" haya14busa/incsearch.vim:
" map / <Plug>(incsearch-stay)
" map ? <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-forward)
" map n  <Plug>(incsearch-nohl-n)
" map N  <Plug>(incsearch-nohl-N)
" map *  <Plug>(incsearch-nohl-*)
" map #  <Plug>(incsearch-nohl-#)
" map g* <Plug>(incsearch-nohl-g*)
" map g# <Plug>(incsearch-nohl-g#)

" CtrlPFunky:
" nnoremap <leader>fu :CtrlPFunky<cr>
" nnoremap <leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<cr>
