
map <silent> <leader>f :Fmt<cr>
call MapUnlessAlreadyMapped('<leader>r', ':w\|!clear;echo;go run %<cr>')
call MapUnlessAlreadyMapped('<leader>d', ':Godoc <cr>')
