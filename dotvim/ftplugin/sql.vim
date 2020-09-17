
call MapUnlessAlreadyMapped('<leader>r', ":w\\|!clear;echo;psql -c 'begin' -f % -c 'rollback'<cr>")
