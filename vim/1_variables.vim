if executable('ag')
    set grepprg=ag

    let g:ctrlp_user_command='ag %s -l --follow --nocolor -g ""'
    let g:ctrlp_use_caching=0
endif

let g:ctrlp_mruf_relative = 1
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_follow_symlinks = 1

let g:netrw_liststyle=3
let g:netrw_list_hide='^\..*' . ',' . netrw_gitignore#Hide()
let NERDTreeHijackNetwr=1

let g:UltiSnipsExpandTrigger='<C-p>'
let g:UltiSnipsJumpForwardTrigger='<C-p>'
let g:UltiSnipsJumpBckwardTrigger='<C-n>'

let g:sparkupMappingInsertModeOnly=1
let g:sparkupDoubleQuote=1

let g:ctrlp_funky_matchtype='path'
let g:ctrlp_funky_syntax_highlight=1

let g:vim_arduino_map_keys=0

let g:user_emmet_leader_key='<C-E>'
let g:user_emmet_mode='i'

let g:dbext_default_profile_psql='type=PGSQL:host=localhost:port=5433'
let g:dbext_default_profile='psql'

let g:gitgutter_map_keys = 0

let g:jellybeans_use_term_italics = 1

let g:incsearch#auto_nohlsearch = 1
let g:indentLine_char = '┆'

let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1

let g:rustfmt_autosave = 1
let g:racer_experimental_completer = 1

let g:ale_linters = {'ruby': ['rubocop'], 'rust': ['rls', 'cargo', 'clippy']} " , 'rustc']}
let g:ale_fixers = {
 \ 'ruby': ['rubocop'],
 \ 'javascript': ['prettier', 'eslint'],
 \ 'css': ['prettier'],
 \ 'scss': ['prettier']
 \ }
let g:ale_rust_cargo_use_check = 1
let g:ale_set_loclist = 0
" let g:ale_fix_on_save = 1
" let g:ale_rust_rls_executable = 'rustup run nightly rls'
