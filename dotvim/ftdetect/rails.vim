augroup test_for_rails
    autocmd!
    autocmd VimEnter * :call s:RailsProject()
augroup END

function! s:RailsProject()
    if InRailsProject()
        call s:RailsMappings()
    endif
endfunction

function! InRailsProject()
    if findfile('Gemfile', getcwd()) != ''
        return match(readfile('Gemfile'), '\<rails\>') != -1
    endif

    return 0
endfunction

function! s:RailsMappings()
    nnoremap <leader>gc :CtrlP app/controllers/<cr>
    nnoremap <leader>gv :CtrlP app/views/<cr>
    nnoremap <leader>gm :CtrlP app/models/<cr>
    nnoremap <leader>gh :CtrlP app/helpers/<cr>
    nnoremap <leader>ga :CtrlP app/assets/<cr>
    nnoremap <leader>gas :CtrlP app/assets/stylesheets<cr>
    nnoremap <leader>gaj :CtrlP app/assets/javascripts<cr>

    nnoremap <leader>gsp :CtrlP spec/<cr>
    nnoremap <leader>gsc :CtrlP spec/controllers/<cr>
    nnoremap <leader>gsv :CtrlP spec/views/<cr>
    nnoremap <leader>gsm :CtrlP spec/models/<cr>
    nnoremap <leader>gsh :CtrlP spec/helpers/<cr>

    nnoremap <leader>gr :e config/routes.rb<cr>
    nnoremap <leader>ic :Rcontroller<cr>
    nnoremap <leader>iv :Rview<cr>
    nnoremap <leader>im :Rmodel<cr>
endfunction