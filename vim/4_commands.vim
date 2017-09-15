command! -nargs=1 -complete=file Edit :call EditFile("<args>")

" auto commands:

augroup commands
    autocmd!
    autocmd VimEnter * :call SourceAllVimrcs()

    " Remove trailing whitespace before saving
    autocmd BufWritePre * :%s/\s\+$//e

    " Restore cursor position
    autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
    au BufLeave * if !&diff | let b:winview = winsaveview() | endif
    au BufEnter * if exists('b:winview') && !&diff | call winrestview(b:winview) | endif
    au VimResized * :wincmd =
    au BufEnter * set noeb vb t_vb=
augroup END

augroup filetypes
    au!
    au Filetype css,scss setlocal foldmethod=marker foldmarker={,}
    au Filetype css,scss setlocal iskeyword+=-
augroup END
