
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

function! SaveSession()
  let session_file = GetCurrentSessionFile()
  let sessions_dir = '.vim-sessions'

  call mkdir(sessions_dir, "p")

  execute 'mksession! ' . session_file
  call writefile([session_file], sessions_dir . '/last-session')

  execute 'qall'
endfunction

function! SearchDir(dir)
  if isdirectory(a:dir . '/.git')
    execute 'GFiles ' . a:dir
  else
    execute 'Files ' . a:dir
  endif
endfunction

function! GetCurrentSessionFile()
  if v:this_session != ''
    return v:this_session
  endif

  let current_branch = GetCurrentGitBranch()
  if current_branch != ''
    return '.vim-sessions/' . current_branch . '.vim'
  else
    return '.vim-sessions/default.vim'
  endif
endfunction

function! GetCurrentGitBranch()
  let branch = system('git branch 2>/dev/null | grep -e "^\*" | sed -e "s/\*\s//"')
  return substitute(branch, "\n", "", "")
endfunction

 function! VimuxSlime()
  call VimuxRunCommand(@v)
  " call VimuxSendKeys("Enter")
 endfunction
"
" function! AltCommand(path, vim_command)
"   let l:alternate = system("alt " . a:path)
"   if empty(l:alternate)
"     echo "No alternate file for " . a:path
"   else
"     exec a:vim_command . " " . l:alternate
"   endif
" endfunction

function! CreateDirForCurrentFile()
  execute '!mkdir -p '. expand('%:h')
  execute 'w'
endfunction

function! RunWith()
  let comment_regex = '^.*\<run_with\s\+'
  let current_line = getline('.')

  if match(current_line, comment_regex) != -1
    let input = substitute(current_line, comment_regex, '', '')
    let parts = split(input)

    let mapping = parts[0]

    if parts[0] == '<buffer>'
      let mapping = parts[0] . ' ' . parts[1]
    endif

    let cmd = substitute(input, mapping . '\s\+', '', '')

    echo "mapping '" . mapping . "' to `" . cmd . '`'
    let result = 'nnoremap ' . mapping . ' :w\|!clear;echo;' . cmd . '<cr>'
    execute result
  else
    echo "doesn't match"
  endif
endfunction

function! ExecCurrentLine()
  let comment_char = '\(#\|--\|//\|;;\)'
  let comment_regex = '^\s*' . comment_char . '\s*'
  let current_line = getline('.')

  if match(current_line, comment_regex) != -1
    let cmd = substitute(current_line, comment_regex, '', '')
    execute cmd
    echo 'done.'
  else
    echo "doesn't match"
  endif
endfunction

function! EditFile(path)
    let fullpath = fnamemodify(a:path, ':p')
    if filereadable(fullpath)
        execute 'e ' . fullpath
    else
        let dir = fnamemodify(fullpath, ':h')
        let _ = system('mkdir -p ' . dir . ' && touch ' . fullpath)
        execute 'e ' . fullpath
    endif
endfunction

function! SaveCurrentBuffer()
    let file_changed = &mod
    if file_changed
        execute 'w'
        return 1
    else
        return 0
    endif
endfunction

function! MapUnlessAlreadyMapped(keys, action)
    if empty(maparg(a:keys))
        execute 'map ' . a:keys . ' ' . a:action
    endif
endfunction

function! AbsolutePath(file)
    return fnamemodify(a:file, ':p')
endfunction

function! FindVimrcs()
    let currdir = getcwd()
    let files = findfile('.vimrc', escape(getcwd(), ' ') . ';~', -1)
    let absolute_paths = map(files, 'AbsolutePath(v:val)')
    let new_vimrcs = filter(absolute_paths, 'v:val != $MYVIMRC')
    return reverse(new_vimrcs)
endfunction

function! SourceAllVimrcs()
    for vimrc in FindVimrcs()
        echom 'Sourcing ' . vimrc
        exec ':source ' . escape(vimrc, ' ')
    endfor
endfunction

function! NotesDirFor(file_type)
    return '~/Programming/notes/' . a:file_type
endfunction

function! SearchNotes()
    let notes_dir = AbsolutePath(NotesDirFor(&filetype))
    if isdirectory(notes_dir)
        exec ':Files ' . notes_dir
    else
        echo 'No notes for ' . &filetype . ' files'
    endif
endfunction

" Rename current file
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'))

    if filereadable(new_name)
      redraw!
      echo 'File "' . new_name . '" already exists, ignoring'
      return
    endif

    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-n>"
    endif
endfunction
