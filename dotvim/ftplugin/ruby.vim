
call MapUnlessAlreadyMapped('<leader>r', ':w\|call RunRubyFile()<cr>')
call MapUnlessAlreadyMapped('<leader>t', ':w\|call RunAllRubySpecs()<cr>')
call MapUnlessAlreadyMapped('<leader>l', ':w\|call RunLastRubySpec()<cr>')

nmap <buffer> <F2> <Plug>(xmpfilter-mark)
nmap <buffer> <F8> <Plug>(xmpfilter-run)

if !exists('g:run_ruby_files_loaded')
    let g:run_ruby_files_loaded=1

    if !exists('g:ruby_run_spec_command')
        let g:ruby_run_spec_command='rspec'
    endif

    function! s:IsSpecFile(filename)
        return match(a:filename, "_spec.rb$") != -1
    endfunction

    function! s:SpecFor(filename)
        if s:IsSpecFile(a:filename)
            return a:filename
        endif

        let file_dir = fnamemodify(a:filename, ':h')
        let basename = fnamemodify(a:filename, ':t')

        if match(file_dir, '^app/') != -1
            let spec_dir = substitute(file_dir, '^app', 'spec', '')
        else
            let spec_dir = 'spec/' . file_dir
        endif

        let spec_file = substitute(basename, '\.rb$', '_spec.rb', '')

        return spec_dir . '/' . spec_file
    endfunction

    function! s:RunSpec(filename)
        execute '!clear;echo;' . g:ruby_run_spec_command . ' ' . a:filename
    endfunction

    function! RunRubyFile()
      let current_file = expand('%')
      let spec =  s:SpecFor(current_file)
      let g:last_ruby_spec_ran = spec
      if filereadable(spec)
        call s:RunSpec(spec)
      else
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
