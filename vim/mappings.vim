
command! Mappings e ~/dotfiles/vim/mappings.vim
command! Settings e ~/dotfiles/vim/settings.vim
command! Functions e ~/dotfiles/vim/functions.vim

let mapleader = " "
nmap <leader>w :w<cr>
nmap <leader>x :x<cr>

nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>
nnoremap 0 ^
nnoremap ^ 0
nnoremap <leader>q :q<cr>
nnoremap <silent> <leader>o :CommandTFlush<cr>:CommandT<cr>
nnoremap <cr> :nohlsearch<cr>

inoremap <C-l> <delete>
inoremap <tab> <c-n>
inoremap <C-c> <esc>gUiwea
" go to last buffer:
nnoremap <silent> <leader><leader> <c-^>
" window mappings
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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
nmap <leader>gc :CommandTFlush<cr>:CommandT app/controllers/<cr>
nmap <leader>gv :CommandTFlush<cr>:CommandT app/views/<cr>
nmap <leader>gm :CommandTFlush<cr>:CommandT app/models/<cr>
nmap <leader>ga :CommandTFlush<cr>:CommandT app/assets/<cr>
nmap <leader>gs :CommandTFlush<cr>:CommandT spec/<cr>
nmap <leader>gl :CommandTFlush<cr>:CommandT lib/<cr>
nmap <leader>gg :e Gemfile<cr>
nmap <leader>gr :topleft :split config/routes.rb<cr>
" from rails.vim:
nmap <leader>a :A<cr>
" tcomment:
nmap <leader>c gcc
vmap <leader>c gc

map <leader>gR :call ShowRoutes()<cr><cr>
map <leader>n :call RenameFile()<cr>
