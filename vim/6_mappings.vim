
let mapleader = " "


nnoremap <leader>8 :redraw!<cr>

nnoremap <leader>a :A<cr>

nnoremap <leader>w :w<cr>
nnoremap <leader>x :x<cr>
" necessary due to Alt key handling in `3_settings`
inoremap <Esc> <C-c>

nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>y "+y

"selects last inserted text:
nnoremap gV `[v`]

nnoremap <C-e> 4<C-e>
nnoremap <C-y> 4<C-y>
" nnoremap p gp
" nnoremap P gP
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

nnoremap <silent> <leader>o :call SearchDir('.')<cr>
nnoremap <silent> <leader>O :Files<cr>
nmap     <silent> <leader>i :Files %%<cr>
nnoremap <leader>= :NERDTreeToggle<cr>

nnoremap <cr> G
vnoremap <cr> G
nnoremap <silent> <leader><cr> :nohlsearch<cr>
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap Q :normal n.<cr>
nnoremap <leader>[ :bn<cr>
nnoremap <leader>] :bp<cr>
nmap <leader>e :e %%

" current file directory:
cnoremap %% <C-R>=expand('%:h').'/'<cr>
cnoremap <C-a> <Home>
cnoremap Q qall

inoremap <A-p> "

" sessions:
nnoremap <leader>m :source Session.vim
nnoremap Q :call SaveSession()<cr>

inoremap <C-l> <delete>
inoremap <C-r> <C-r><C-p>
" inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" inoremap <s-tab> <c-p>
" upcase prev word
" inoremap <C-c> <esc>gUiwea

inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nnoremap <right> gt
nnoremap <left> gT
nnoremap <up> :bp<cr>
nnoremap <down> :bn<cr>

" window mappings
nnoremap <C-h> <C-w>h<C-w>_
nnoremap <C-j> <C-w>j<C-w>_
nnoremap <C-k> <C-w>k<C-w>_
nnoremap <C-l> <C-w>l<C-w>_
" nnoremap <C-p> <C-w>p
" nnoremap <left> <C-w><
" nnoremap <right> <C-w>>
" nnoremap <up> <C-w>-
" nnoremap <down> <C-w>+

" tabs
nnoremap <leader>bb :tabnew<cr>
nnoremap <silent> <A-h> :tabp<cr>
nnoremap <silent> <A-l> :tabn<cr>

nnoremap <silent> <A-j> :m +1<cr>
nnoremap <silent> <A-k> :m -2<cr>
vnoremap <silent> <A-j> :m '>+1<cr>gv
vnoremap <silent> <A-k> :m '<-2<cr>gv

" split line
nnoremap S i<cr><esc>k$

" nmap <silent> <leader>d <Plug>(ale_hover)

"""  Coc stuff:

nmap <silent> <leader>d :call CocAction("doHover")<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
imap <C-l> <Plug>(coc-snippets-expand)
" Remap keys for applying codeAction to the current buffer.
nmap <leader>ca  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>cf  <Plug>(coc-fix-current)
" imap <C-l> <Plug>(coc-snippets-expand-jump)

" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"
nnoremap <silent> K :call ShowDocumentation()<CR>

nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

"""  /Coc stuff

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
nnoremap <leader>H :Files ~/Programming/notes/<cr>
nnoremap <leader>n :call RenameFile()<cr>

nnoremap <leader>gl :GFiles lib/<cr>
nnoremap <leader>gs :GFiles spec/<cr>
nnoremap <leader>gg :e Gemfile<cr>

" autocomplete quoted strings:
" inoremap <c-j> <c-o>:set completefunc=StringComplete#GetList<cr><c-x><c-u>

nnoremap <silent> <leader>c :call RunWith()<cr>

" Plugins:

nnoremap <C-n> :ALENext<cr>
" nnoremap <C-p> :ALEPrevious<cr>
nnoremap <silent> <leader>f :ALEFix<cr>

nmap ghp <Plug>(GitGutterPreviewHunk)
nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap [c <Plug>(GitGutterPrevHunk)
nmap ]c <Plug>(GitGutterNextHunk)

" execute "nnoremap <leader>f :Ag "

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
