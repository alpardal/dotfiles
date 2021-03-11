augroup test_for_rails
    autocmd!
    autocmd VimEnter * :call s:RailsProject()
augroup END

function! s:HasTrailblazer()
  return match(readfile('Gemfile'), '\<trailblazer\>') != -1
endfunction

function! s:RailsProject()
    if InRailsProject()
        let g:ruby_run_spec_command='bin/rspec'
        source ~/dotfiles/dotvim/ftplugin/ruby.vim
        call s:RailsMappings()
    endif
endfunction

function! InRailsProject()
    if !empty(findfile('Gemfile', getcwd()))
        return match(readfile('Gemfile'), '\<rails\>') != -1
    endif

    return 0
endfunction

" function! GoToAlternate()
"   if s:HasTrailblazer()
"     if s:IsCellFile()
"       call s:EditCellView()
"       retu
"     endif
"   else
"     execute 'A<cr>'
"   endif
" endfunction

function! ViewName(cell_name)
  return substitute(substitute(a:cell_name, "cell", "view", ""), ".rb", ".erb", "")
endfunction

function! CellName(view_name)
  return substitute(substitute(a:view_name, "view", "cell", ""), ".erb", ".rb", "")
endfunction

function! CellToViewViewToCell()
  let current = expand('%')
  if match(current, "cell") >= 0
    execute 'e ' . ViewName(current)
  else
    execute 'e ' . CellName(current)
  endif
endfunction

function! s:RailsMappings()
    " nnoremap <leader>a :call GoToAlternate()<cr>
    nnoremap <leader>a :A<cr>

    nnoremap <leader>r :w\|call RunRubyFile()<cr>
    nnoremap <leader>t :call SaveCurrentBuffer()\|call RunAllRubySpecs()<cr>
    nnoremap <leader>l :w\|call RunLastRubySpec()<cr>

    nnoremap <leader>v :call CellToViewViewToCell()<cr>

    nnoremap <leader>gr :e config/routes.rb<cr>
    nnoremap <leader>gc :GFiles app/controllers/<cr>

    nnoremap <leader>gv :Files app/views/<cr>
    nnoremap <leader>gm :Files app/models/<cr>
    nnoremap <leader>gh :Files app/helpers/<cr>
    nnoremap <leader>ga :Files app/assets/<cr>
    nnoremap <leader>gt :Files db/migrate/<cr>
    nnoremap <leader>gas :Files app/assets/stylesheets<cr>
    nnoremap <leader>gaj :Files app/assets/javascripts<cr>

    nnoremap <leader>gsp :Files spec/<cr>
    nnoremap <leader>gsc :Files spec/controllers/<cr>
    nnoremap <leader>gsv :Files spec/views/<cr>
    nnoremap <leader>gsm :Files spec/models/<cr>
    nnoremap <leader>gsh :Files spec/helpers/<cr>
endfunction
