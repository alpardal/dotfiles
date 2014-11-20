" files in same directory as $MYVIMRC link target to be loaded
let s:vimfiles = ['settings', 'variables', 'commands',
                 \'functions', 'mappings', 'plugins']

let s:vimrc = resolve($MYVIMRC)
let s:vimrc_dir = fnamemodify(s:vimrc, ':h')

augroup reload_files
autocmd!

for s:file in s:vimfiles
    " expand path and source s:file
    let s:path = s:vimrc_dir . '/' . s:file . '.vim'
    execute 'source ' . s:path

    " create commands to edit sourced files, e.g. :Settings to edit settings.vim
    let s:capitalized_filename = substitute(s:file, '^\(.\)', '\u\1', '')
    execute 'command! ' . s:capitalized_filename . ' e ' . s:path

    " Reload config files when they are edited:
    execute 'autocmd reload_files bufwritepost ' . s:path . ' source $MYVIMRC'
endfor

" same for $MYVIMRC
execute 'command! Vimrc ' . ' e ' . s:vimrc
execute 'autocmd reload_files bufwritepost ' .s:vimrc . ' source $MYVIMRC'

augroup end

if filereadable($HOME . '/.vimrc.local')
    source ~/.vimrc.local
endif
