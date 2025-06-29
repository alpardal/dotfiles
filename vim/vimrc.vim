
let s:vimrc = resolve($MYVIMRC)

let s:nvim_init = '/home/andre/dotfiles/nvim/init.vim'

let s:vimrc_dir = fnamemodify(s:vimrc, ':h')

augroup reload_files
autocmd!

for s:file in glob(s:vimrc_dir . '/*.vim', 0, 1)
    " source files in vimrc's dir, except for vimrc itself
    if s:file != s:vimrc && (match(s:file, 'nvim') < 0 )
        execute 'source ' . s:file
    endif

    " create commands to edit sourced files, e.g. :Settings to edit settings.vim
    let s:capitalized_filename = substitute(fnamemodify(s:file, ':t:r'),
                                          \ '^\(\d\+_\)\?\(.\)', '\u\2', '')
    execute 'command! ' . s:capitalized_filename . ' e ' . s:file

    " Reload config files when they are edited:
    execute 'autocmd reload_files bufwritepost ' . s:file . ' source ' . s:file
endfor

augroup end

if filereadable($HOME . '/.vimrc.local')
    source ~/.vimrc.local
endif
