
if maparg("<leader>r") == ""
    map <leader>r :w\|!clear;echo;ruby -w %<cr>
endif
if maparg("<leader>t") == ""
    map <leader>t :w\|!clear;echo;rspec spec/<cr>
endif
