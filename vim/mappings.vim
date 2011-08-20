
inoremap kj <ESC>
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
nnoremap <leader>tr :CommandTFlush<cr>
" Buffer mappings:
nnoremap <leader>b :ls<cr>:buffer<Space>
nnoremap <leader>l :b#<cr>
nmap <down> :bn<cr>
nmap <up> :bp<cr>
" window mappings
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>s :sp<cr>
nnoremap <leader>v :vsp<cr>
nnoremap <leader><f4> :close<cr>
" Tab mappings:
nnoremap <leader>n gt
nnoremap <leader>p gT
nnoremap <leader>c :tabclose<cr>

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

" Reload snippets:
nmap <leader>i :call ReloadSnippets(snippets_dir, &filetype)<CR>
" Moving selection:
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
"inoremap <A-j> <Esc>:m+<CR>==gi
"inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv
