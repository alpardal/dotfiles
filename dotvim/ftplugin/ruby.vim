call MapUnlessAlreadyMapped('<leader>r', ':w\|call RunRubyFile()<cr>')

call MapUnlessAlreadyMapped('<leader>t', ':w\|call RunAllRubySpecs()<cr>')
call MapUnlessAlreadyMapped('<leader>l', ':w\|call RunLastRubySpec()<cr>')

nmap <buffer> <F2> <Plug>(xmpfilter-mark)
nmap <buffer> <F8> <Plug>(xmpfilter-run)

" nnoremap <leader>a :call EditAlternate()<cr>
" ^ using projectionist instead, see mappings

if !exists('g:run_ruby_files_loaded')
  let g:run_ruby_files_loaded=1

  function! IsSpecFile(filename)
    return match(a:filename, "_spec.rb$") != -1
  endfunction

  " function! EditAlternate()
  "   let current_file = expand('%')
  "   if IsSpecFile(current_file)
  "     let alternate = NormalFileFor(current_file)
  "   else
  "     let alternate = SpecFor(current_file)
  "   endif
  "
  "   execute 'e '. alternate
  " endfunction

  " function! NormalFileFor(spec_file)
  "   let spec_dir = fnamemodify(a:spec_file, ':h')
  "   let basename = fnamemodify(a:spec_file, ':t')
  "
  "   let impl_file = substitute(basename, '_spec\.rb$', '.rb', '')
  "   let possible_dirs = ['apps', 'app', 'lib', 'src']
  "
  "   for dir in possible_dirs
  "     let new_path = substitute(spec_dir, '^spec', dir, '')
  "     let file = new_path . '/' . impl_file
  "
  "     if filereadable(file)
  "       return file
  "     endif
  "   endfor
  "
  "   for dir in possible_dirs
  "     let new_path = substitute(spec_dir, '^spec', dir, '')
  "
  "     if isdirectory(file)
  "       return  new_path . '/' . impl_file
  "     endif
  "   endfor
  "
  "   return spec_file
  " endfunction

  function! SpecFor(filename)
    let file_dir = fnamemodify(a:filename, ':h')
    let basename = fnamemodify(a:filename, ':t')

    let spec_file = substitute(basename, '\(_spec\)\?\.rb$', '_spec.rb', '')
    let spec_dir = substitute(file_dir, '^\(app\(s\)\?\|lib\|src\)', 'spec', '')

    return spec_dir . '/' . spec_file
  endfunction

  if !exists('g:ruby_run_spec_command')
    let g:ruby_run_spec_command='rspec'
  endif

  function! s:RunSpec(filename)
    execute '!clear;echo;' . g:ruby_run_spec_command . ' ' . a:filename
  endfunction

  function! RunRubyFile()
    let current_file = expand('%')
    let spec =  SpecFor(current_file)
    let g:last_ruby_spec_ran = spec

    if filereadable(spec)
      call s:RunSpec(spec)
    else
      call s:Run
      execute '!clear;echo;ruby -w ' . current_file
    endif
  endfunction

  function! RunLastRubySpec()
    if exists('g:last_ruby_spec_ran')
      call s:RunSpec(g:last_ruby_spec_ran)
    else
      call RunAllRubySpecs()
    endif
  endfunction

  function! RunAllRubySpecs()
    execute '!clear;echo;' . g:ruby_run_spec_command . ' spec/'
  endfunction
endif
