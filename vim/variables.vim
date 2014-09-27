
let g:CommandTCancelMap=['<C-c>', '<Esc>']
let g:netrw_liststyle=3
let g:slime_target = "tmux"
let g:airline_powerline_fonts=1
let g:airline_theme="bubblegum"
let g:airline_section_z="%3p%% %{g:airline_symbols.linenr}%#__accent_bold#%4l[%L]%#__restore__#:%3c"

" golang source code formatting
let g:gofmt_command="gofmt -tabs=false -tabwidth=2"
