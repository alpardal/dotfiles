
command! Mappings e ~/dotfiles/vim/mappings.vim
command! Settings e ~/dotfiles/vim/settings.vim

let mapleader = " "
nmap <leader>w :w<cr>
nmap <leader>x :x<cr>

nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>
nnoremap 0 ^
nnoremap ^ 0
nnoremap <leader>q :q<cr>
nnoremap <leader>r :%s/
nnoremap <silent> <leader>o :CommandTFlush<cr>:CommandT<cr>
noremap <silent> <leader>h :set hlsearch! hlsearch?<cr>

inoremap <C-l> <delete>
inoremap <tab> <c-n>
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
nmap <leader>gs :CommandTFlush<cr>:CommandT spec/<cr>
nmap <leader>gl :CommandTFlush<cr>:CommandT lib/<cr>
nmap <leader>gg :e Gemfile<cr>
nmap <leader>gr :topleft :split config/routes.rb<cr>
" from rails.vim:
nmap <leader>ga :A<cr>

function! ShowRoutes()
    :topleft 100 :split __Routes__
    :set buftype=nofile
    :normal 1GdG
    :0r! rake -s routes
    :exec ":normal " . line("$") . "^W_ "
    :normal 1GG
    :normal dd
endfunction
map <leader>gR :call ShowRoutes()<cr><cr>
