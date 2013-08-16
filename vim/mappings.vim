
command! Mappings e ~/dotfiles/vim/mappings.vim
command! Settings e ~/dotfiles/vim/settings.vim
command! Functions e ~/dotfiles/vim/functions.vim

let mapleader = " "
nmap <leader>w :w<cr>
nmap <leader>x :x<cr>
nnoremap <leader>v <C-w>v
nnoremap <leader>s <C-w>s

nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>
nnoremap 0 ^
nnoremap ^ 0
nnoremap ' `
nnoremap ` '
nnoremap / /\v
nnoremap <leader>q :q<cr>
cnoremap %% <C-R>=expand('%:h').'/'<cr>
nnoremap <silent> <leader>o :CtrlP .<cr>
nmap <silent> <leader>O :CtrlP %%<cr>
nmap <leader>e :e %%
nnoremap <silent> <cr> :nohlsearch<cr>
nnoremap j gj
nnoremap k gk
nnoremap 0 g^
nnoremap g0 ^
nnoremap $ g$
nnoremap g$ $
noremap <leader>[ :cprev<cr>
noremap <leader>] :cnext<cr>

inoremap <C-l> <delete>
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

" rails stuff:
nmap <leader>gc :CtrlP app/controllers/<cr>
nmap <leader>gv :CtrlP app/views/<cr>
nmap <leader>gm :CtrlP app/models/<cr>
nmap <leader>gh :CtrlP app/helpers/<cr>
nmap <leader>gl :CtrlP lib/<cr>
nmap <leader>ga :CtrlP app/assets/<cr>
nmap <leader>gas :CtrlP app/assets/stylesheets<cr>
nmap <leader>gaj :CtrlP app/assets/javascripts<cr>

map <leader>gsp :CtrlP spec/<cr>
nmap <leader>gsc :CtrlP spec/controllers/<cr>
nmap <leader>gsv :CtrlP spec/views/<cr>
nmap <leader>gsm :CtrlP spec/models/<cr>
nmap <leader>gsh :CtrlP spec/helpers/<cr>
nmap <leader>gsl :CtrlP spec/lib/<cr>
nmap <leader>gsj :CtrlP spec/javascripts/<cr>

nmap <leader>gg :e Gemfile<cr>
nmap <leader>gr :e config/routes.rb<cr>
nmap <leader>ic :Rcontroller<cr>
nmap <leader>iv :Rview<cr>
nmap <leader>im :Rmodel<cr>
" from rails.vim:
nmap <leader>a :A<cr>
" tcomment:
nmap <leader>c gcc
vmap <leader>c gc

map <leader>gt :call OpenTestAlternateInSplit()<cr>
map <leader>n :call RenameFile()<cr>

map <silent><F4> :call BufferList()<cr>

" hard mode:
" nnoremap j <nop>
" nnoremap k <nop>
" nnoremap l <nop>
" nnoremap h <nop>
"
