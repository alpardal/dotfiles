
if maparg("<leader>r") == ""
    nnoremap <leader>r :w\|!clear;echo;clojure %<cr>
endif
