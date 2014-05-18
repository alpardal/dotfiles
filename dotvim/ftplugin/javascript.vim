
if maparg("<leader>r") == ""
    map <leader>r :w\|!clear;echo;node %<cr>
endif

