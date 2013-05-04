
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
nnoremap ' `
nnoremap ` '
nnoremap <leader>q :q<cr>
cnoremap %% <C-R>=expand('%:h').'/'<cr>
nnoremap <silent> <leader>o :CommandTFlush<cr>\|:CommandT<cr>
nmap <silent> <leader>O :CommandTFlush<cr>\|:CommandT %%<cr>
nmap <leader>e :e %%
nnoremap <silent> <cr> :nohlsearch<cr>
nnoremap j gj
nnoremap k gk
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
nmap <leader>gh :CommandTFlush<cr>:CommandT app/helpers/<cr>
nmap <leader>ga :CommandTFlush<cr>:CommandT app/assets/<cr>
nmap <leader>gas :CommandTFlush<cr>:CommandT app/assets/stylesheets<cr>
nmap <leader>gaj :CommandTFlush<cr>:CommandT app/assets/javascripts<cr>

nmap <leader>gs :CommandTFlush<cr>:CommandT spec/<cr>
nmap <leader>gsc :CommandTFlush<cr>:CommandT spec/controllers/<cr>
nmap <leader>gsv :CommandTFlush<cr>:CommandT spec/views/<cr>
nmap <leader>gsm :CommandTFlush<cr>:CommandT spec/models/<cr>
nmap <leader>gsh :CommandTFlush<cr>:CommandT spec/helpers/<cr>
nmap <leader>gsj :CommandTFlush<cr>:CommandT spec/javascripts/<cr>

" Arpeggio nmap gc :CommandTFlush<cr>:CommandT app/controllers/<cr>
" Arpeggio nmap gv :CommandTFlush<cr>:CommandT app/views/<cr>
" Arpeggio nmap gm :CommandTFlush<cr>:CommandT app/models/<cr>
" Arpeggio nmap gh :CommandTFlush<cr>:CommandT app/helpers/<cr>
" Arpeggio nmap ac :CommandTFlush<cr>:CommandT app/assets/stylesheets<cr>
" Arpeggio nmap aj :CommandTFlush<cr>:CommandT app/assets/javascripts<cr>
" 
" Arpeggio nmap gs :CommandTFlush<cr>:CommandT spec/<cr>
" Arpeggio nmap sc :CommandTFlush<cr>:CommandT spec/controllers/<cr>
" Arpeggio nmap sv :CommandTFlush<cr>:CommandT spec/views/<cr>
" Arpeggio nmap sm :CommandTFlush<cr>:CommandT spec/models/<cr>
" Arpeggio nmap sh :CommandTFlush<cr>:CommandT spec/helpers/<cr>
" Arpeggio nmap sj :CommandTFlush<cr>:CommandT spec/javascripts/<cr>

nmap <leader>gl :CommandTFlush<cr>:CommandT lib/<cr>
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

map <leader>gR :call ShowRoutes()<cr><cr>
map <leader>gt :call OpenTestAlternateInSplit()<cr>
map <leader>n :call RenameFile()<cr>

map <silent><F4> :call BufferList()<cr>

" hard mode:
" nnoremap j <nop>
" nnoremap k <nop>
" nnoremap l <nop>
" nnoremap h <nop>
" 
