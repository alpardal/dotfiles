if executable('ag')
    set grepprg=ag

    let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching=0
endif

let g:ctrlp_mruf_relative=1

let g:netrw_liststyle=3
let g:netrw_list_hide='^\..*' . ',' . netrw_gitignore#Hide()
let NERDTreeHijackNetwr=1

let g:airline_powerline_fonts=1
let g:airline_theme="bubblegum"
let g:airline_section_z="%3p%% %{g:airline_symbols.linenr}%#__accent_bold#%4l[%L]%#__restore__#:%3c"

let g:sparkupMappingInsertModeOnly=1
let g:sparkupDoubleQuote=1

" golang source code formatting
let g:gofmt_command="gofmt -tabs=false -tabwidth=2"

let g:ctrlp_funky_matchtype='path'
let g:ctrlp_funky_syntax_highlight=1

let g:vim_arduino_map_keys=0

let g:user_emmet_leader_key='<C-E>'
let g:user_emmet_mode='i'

" let g:slime_target = "tmux"
