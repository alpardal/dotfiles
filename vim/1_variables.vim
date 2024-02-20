let g:netrw_liststyle=3
let g:netrw_list_hide='^\..*' . ',' . netrw_gitignore#Hide()
let NERDTreeHijackNetwr=1

let g:UltiSnipsExpandTrigger='<C-i>'
let g:UltiSnipsJumpForwardTrigger='<C-i>'
let g:UltiSnipsJumpBckwardTrigger='<C-k>'

" it looks like semicolons cause issues in janet files
let g:vim_parinfer_filetypes=['janet', 'clojure']

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
let g:ale_sign_warning = '⚠️'
let g:ale_sign_error = '✗'

  " \ 'coc-rls',
let g:coc_global_extensions = [
  \ 'coc-rust-analyzer',
  \ 'coc-elixir',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-prettier',
  \ 'coc-snippets',
  \ 'coc-eslint']

" coc config for rls:
" rust-analyzer.server.path": "/home/andre/.cargo/bin/rls",
" diagnostic.displayByAle": true,

let g:sparkupMappingInsertModeOnly=1
let g:sparkupDoubleQuote=1

let g:user_emmet_leader_key='<C-l>'
let g:user_emmet_mode='i'

let g:dbext_default_profile_psql='type=PGSQL:host=localhost:port=5433'
let g:dbext_default_profile='psql'

let g:gitgutter_map_keys = 0

let g:jellybeans_use_term_italics = 1

let g:floaterm_open_command = 'tabe'

let g:incsearch#auto_nohlsearch = 1
let g:indentLine_char = '┆'

let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1

" let g:rustfmt_autosave = 1
let g:racer_experimental_completer = 1

let g:ale_sign_column_always = 1
" let g:ale_elixir_elixir_ls_release = '/home/andre/code/vendor/elixir-ls/rel'
" let g:ale_elixir_elixir_ls_config = {
"   \ 'elixirLS': {
"   \   'dialyzerEnabled': v:false
"   \   }
"   \ }
let g:ale_linters = {
  \ 'ruby': ['rubocop'],
  \ 'clojure': ['joker'],
  \ 'elixir': ['elixir-ls', 'dialyxir', 'credo']
  \ }
" \ 'rust': ['cargo'],
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'ruby': ['rubocop'],
  \ 'javascript': ['prettier', 'eslint'],
  \ 'json': ['jq'],
  \ 'css': ['prettier'],
  \ 'scss': ['prettier'],
  \ 'elixir': ['mix_format'],
  \ 'eelixir': ['mix_format'],
  \ 'ocaml': ['ocamlformat'],
  \ 'rust': ['rustfmt'],
  \ 'terraform': ['terraform'],
  \ }
let g:ale_rust_cargo_use_check = 1
let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')
let g:ale_set_loclist = 0
let g:ale_set_balloons = 1

let g:vim_parinfer_filetypes = ['lisp', 'racket']

let g:lightline = {}

let g:lightline.component_expand = {
  \  'linter_checking': 'lightline#ale#checking',
  \  'linter_infos': 'lightline#ale#infos',
  \  'linter_warnings': 'lightline#ale#warnings',
  \  'linter_errors': 'lightline#ale#errors',
  \  'linter_ok': 'lightline#ale#ok',
  \ }

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

" let g:ale_fix_on_save = 1
" let g:ale_rust_rls_executable = 'rustup run nightly rls'

let g:TerminusMouse=0
