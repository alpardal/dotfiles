
call MapUnlessAlreadyMapped('<leader>r', ':w\|!clear;echo;ruby -w %<cr>')
call MapUnlessAlreadyMapped('<leader>t', ':w\|!clear;echo;rspec spec/<cr>')

nmap <buffer> <F2> <Plug>(xmpfilter-mark)
nmap <buffer> <F8> <Plug>(xmpfilter-run)
