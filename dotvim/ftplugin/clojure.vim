
" call MapUnlessAlreadyMapped('<leader>r', ':w\|!clear;echo;clojure %<cr>')

" fireplace mappings:
call MapUnlessAlreadyMapped('<leader>r', ':Eval<cr>')
call MapUnlessAlreadyMapped('<leader>l', ':Require<cr>')
call MapUnlessAlreadyMapped('<leader>t', ':RunTests<cr>')
call MapUnlessAlreadyMapped('<leader>d', ':Doc <cr>')

au FileType clojure call rainbow#load()
