
if maparg("<leader>r") == ""
    map <leader>r :w\|!clear;echo;ruby -w %<cr>
endif

if maparg("<leader>t") == ""
    map <leader>t :w\|!clear;echo;rspec spec/<cr>
endif

nmap <buffer> <F2> <Plug>(xmpfilter-mark)
nmap <buffer> <F8> <Plug>(xmpfilter-run)
