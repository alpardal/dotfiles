
" files in dotfiles/vim to be loaded
let s:files = ['settings', 'variables', 'commands', 'functions', 'mappings', 'plugins']

let s:vimrc = resolve($MYVIMRC)
let s:vimrc_dir = fnamemodify(s:vimrc, ':h')

for s:file in s:files
    let s:path = s:vimrc_dir . '/' . s:file . '.vim'
    execute 'source ' . s:path
endfor

" Reload config files when they are edited:
augroup reaload_files
    autocmd!
    for s:file in s:files
        execute 'autocmd bufwritepost ' . s:file . '.vim source $MYVIMRC'
    endfor
augroup END
