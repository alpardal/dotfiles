
call MapUnlessAlreadyMapped('<leader>r', ':w\|!clear;echo;elixir %<cr>')
call MapUnlessAlreadyMapped('<leader>t', ':w\|!clear;echo;mix test<cr>')
call MapUnlessAlreadyMapped('<leader>m', ':w\|!clear;echo;elixirc %<cr>')
call MapUnlessAlreadyMapped('<leader>gt', ':CtrlP test/<cr>')

nnoremap <leader>a :w<cr>:call AltCommand(expand('%'), ':e')<cr>

" function! CurrentModuleName()
"   let file = expand('%')
"
" endfunction
