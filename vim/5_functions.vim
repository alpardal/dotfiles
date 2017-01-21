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
        exec ':CtrlP ' . notes_dir
    else
        echo 'No notes for ' . &filetype . ' files'
    endif
endfunction

" Rename current file
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'))
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
