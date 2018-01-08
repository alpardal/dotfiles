
call MapUnlessAlreadyMapped('<leader>r', ':w\|!clear;echo;cargo run<cr>')
call MapUnlessAlreadyMapped('<leader>t', ':w\|!clear;echo;cargo test -- --nocapture<cr>')
call MapUnlessAlreadyMapped('<leader>b', ':w\|!clear;echo;cargo build<cr>')
call MapUnlessAlreadyMapped('gd', '<Plug>(rust-def)')
call MapUnlessAlreadyMapped('go', '<Plug>(rust-doc)')

inoremap  A;
