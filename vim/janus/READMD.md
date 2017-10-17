This directory is mainly for plugins

Janus: Vim Distribution
  src: https://github.com/carlhuda/janus.git

vim-markdown: after/ftplugin/mkd.vim setlocal foldlevel=1 (change)

xmledit: in folder ftplugin, let html autocompleted tags work
as xml.

    mv html.vim to html-vim.ori
    ln -s xml.vim html.Vim
