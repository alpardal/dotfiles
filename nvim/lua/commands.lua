vim.cmd("command! Mkdir :lua vim.create_dir_for_current_file()")
vim.cmd("command! Lua :e ~/dotfiles/nvim/lua")

vim.cmd([[
  augroup commands
    autocmd VimEnter * :lua vim.source_all_vimrcs()
    autocmd TabClosed * :lua vim.tab_closed()
    " autocmd TabClosed * tabprevious
    autocmd BufEnter gitconfig :set ft=gitconfig

    " Remove trailing whitespace before saving
    autocmd BufWritePre * :%s/\s\+$//e

    " Restore cursor position
    autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
    au BufLeave * if !&diff | let b:winview = winsaveview() | endif
    au BufEnter * if exists('b:winview') && !&diff | call winrestview(b:winview) | endif
    "au VimResized * :wincmd =
    "au BufEnter * set noeb vb t_vb=
  augroup END
]])

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
