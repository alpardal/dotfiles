let b:ale_fix_on_save = 1

call MapUnlessAlreadyMapped('<leader>r', ':w\|!clear;echo;elixir %<cr>')
call MapUnlessAlreadyMapped('<leader>t', ':w\|!clear;echo;mix test<cr>')
call MapUnlessAlreadyMapped('<leader>m', ':w\|!clear;echo;elixirc %<cr>')
call MapUnlessAlreadyMapped('<leader>gt', ':GFiles test/<cr>')

" nnoremap <leader>a :w<cr>:call AltCommand(expand('%'), ':e')<cr>

" function! CurrentModuleName()
"   let file = expand('%')
"
" endfunction
