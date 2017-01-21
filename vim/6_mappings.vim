
let mapleader = " "

nnoremap <leader>w :w<cr>
nnoremap <leader>x :x<cr>
nnoremap <leader>v <C-w>v
nnoremap <leader>s <C-w>s

nnoremap <CR> G
vnoremap <CR> G

nnoremap <silent> p p`]
vnoremap <silent> p p`]
nnoremap <leader>y "+y
nnoremap <leader>Y "+p
vnoremap <leader>y "+y
vnoremap <leader>Y "+p
" inoremap <C-p> <C-r>+

"selects last inserted text:
nnoremap gV `[v`]

execute 'nnoremap <leader>f :Ag '

nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>
nnoremap p gp
nnoremap 0 ^
nnoremap ^ 0
nnoremap B 0
nnoremap E $
nnoremap ' `
nnoremap ` '
nnoremap <leader>q :q<cr>

" current file directory:
cnoremap %% <C-R>=expand('%:h').'/'<cr>

nnoremap <silent> <leader>o :CtrlP .<cr>
nmap     <silent> <leader>i :CtrlP %%<cr>
nnoremap <silent> <leader>p :CtrlPMRU<cr>
nnoremap <leader>= :NERDTreeToggle<cr>

nmap <leader>e :e %%

nnoremap <silent> <leader><cr> :nohlsearch<cr>
nnoremap j gj
nnoremap k gk
nnoremap 0 g^
nnoremap g0 ^
nnoremap $ g$
nnoremap g$ $
nnoremap Q :normal n.<cr>
noremap <leader>[ :cprev<cr>
noremap <leader>] :cnext<cr>

cnoremap <C-a> <Home>
" cnoremap <C-b> <Left>
" cnoremap <C-f> <Right>
" cnoremap <C-d> <Delete>

inoremap <C-l> <delete>
inoremap <C-r> <C-r><C-p>
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-p>
" upcase prev word
inoremap <C-c> <esc>gUiwea
" go to last buffer:
nnoremap <silent> <leader><leader> <c-^>
" window mappings
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-p> <C-w>p

nnoremap <leader>. :e.<cr>
nnoremap <leader>d :bdelete<cr>
" tabs
nnoremap <leader>bb :tabnew<cr>

nnoremap <silent> gj :call MoveCurrentLineDown()<cr>
nnoremap <silent> gk :call MoveCurrentLineUp()<cr>

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

" from rails.vim:
nnoremap <leader>a :A<cr>
nnoremap <C-w>a :vsp<cr> :A<cr>
nnoremap <C-w><C-a> :vsp<cr> :A<cr>

" autocomplete quoted strings:
inoremap <c-j> <c-o>:set completefunc=StringComplete#GetList<cr><c-x><c-u>

" Plugins:

" vim-emmet:
imap <C-f> <C-e>,

" haya14busa/incsearch.vim:
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" CtrlPFunky:
" nnoremap <leader>fu :CtrlPFunky<cr>
" nnoremap <leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<cr>
