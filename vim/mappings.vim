
" editing vim files:
command! Mappings e ~/dotfiles/vim/mappings.vim
command! Settings e ~/dotfiles/vim/settings.vim

inoremap <C-v> <C-r>*
vnoremap <C-c> "+y
let mapleader = " "
nmap <leader>w :w<cr>
nmap <leader>x :x<cr>

nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>
nnoremap <leader>q :q<cr>
nnoremap <leader>qq :q!<cr>
nnoremap <leader>r :%s/
nnoremap <f2> :Rename 
nnoremap <silent> <leader>o :CommandTFlush<cr>:CommandT<cr>
:noremap <leader>h :set hlsearch! hlsearch?<cr>

inoremap <C-l> <delete>
" Buffer mappings:
nnoremap <leader>l :b#<cr>
" window mappings
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Moving line/selection:
nnoremap <silent> <A-j> :m+<CR>==
nnoremap <silent> <A-k> :m-2<CR>==
vnoremap <silent> <A-j> :m'>+<CR>gv=gv
vnoremap <silent> <A-k> :m-2<CR>gv=gv

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
nmap <leader>gs :CommandTFlush<cr>:CommandT spec/<cr>
nmap <leader>gl :CommandTFlush<cr>:CommandT lib/<cr>
nmap <leader>gr :topleft :split config/routes.rb<cr>
" from rails.vim:
nmap <leader>ga :A<cr>
