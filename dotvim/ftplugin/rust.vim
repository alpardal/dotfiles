
call MapUnlessAlreadyMapped('<leader>r', ':w\|!clear;echo;cargo run<cr>')
call MapUnlessAlreadyMapped('<leader>t', ':w\|!clear;echo;cargo test -- --nocapture --color always<cr>')
call MapUnlessAlreadyMapped('<leader>b', ':w\|!clear;echo;cargo build<cr>')
call MapUnlessAlreadyMapped('<leader>l', ':w\|!clear;echo;cargo clippy --tests<cr>')
call MapUnlessAlreadyMapped('gd', '<Plug>(rust-def)')
call MapUnlessAlreadyMapped('go', '<Plug>(rust-doc)')

inoremap  A;

let b:ale_disable_lsp = 1
let b:ale_fix_on_save = 1
