
if maparg("<leader>f") == ""
    map <silent> <leader>f :Fmt<cr>
endif

if maparg("<leader>r") == ""
    map <leader>r :w\|!clear;echo;go run %<cr>
endif

if maparg("<leader>d") == ""
    map <leader>d :Godoc <cr>
endif
