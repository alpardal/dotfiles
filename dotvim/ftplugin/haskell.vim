
call MapUnlessAlreadyMapped('<leader>r', ':w\|!clear;echo;runhaskell %<cr>')
call MapUnlessAlreadyMapped('<leader>i', ':w\|!clear;echo;ghci %<cr>')
