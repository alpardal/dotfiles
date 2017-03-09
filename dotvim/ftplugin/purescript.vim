
set suffixesadd+=.purs
set includeexpr=substitute(v:fname,'\\.','/','g')

nnoremap <leader>r :w\|!clear;echo;pulp run<cr>
nnoremap <leader>t :w\|!clear;echo;pulp test<cr>
nnoremap <leader>l :w\|!clear;echo;pulp psci<cr>

nnoremap <leader>m :w\|!clear;echo;pulp build -O --main Main --to dist/Main.js<cr>

if !exists("g:loaded_purescript_functions")
  let g:loaded_purescript_functions = 1

  function! PurescriptGetAlternateFile()
    let file = expand("%")
    let dir = fnamemodify(file, ':h')
    let basename = fnamemodify(file, ':t')

    let is_test = match(dir, '^test') != -1

    if (is_test)
      let alt_dir = substitute(dir, '^test', 'src', '')
    else
      let alt_dir = substitute(dir, '^src', 'test', '')
    endif

    return alt_dir . '/' . basename
  endfunction

  function! PurescriptEditAlternate()
    execute 'e ' .  PurescriptGetAlternateFile()
  endfunction

  function! PurescriptSetAlternateFileMapping()
    nnoremap <buffer> <leader>a :call PurescriptEditAlternate()<cr>
  endfunction
endif

au BufEnter,BufRead,BufNewFile *.purs call PurescriptSetAlternateFileMapping()
