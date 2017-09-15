
call MapUnlessAlreadyMapped('<leader>r', ':w\|!clear;echo;cargo run<cr>')
call MapUnlessAlreadyMapped('<leader>t', ':w\|!clear;echo;cargo test -- --nocapture<cr>')
call MapUnlessAlreadyMapped('<leader>b', ':w\|!clear;echo;cargo build<cr>')

inoremap  A;
