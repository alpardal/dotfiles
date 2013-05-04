#!/usr/bin/env bash

rm ~/.{irbrc,gemrc,tmux.conf,bashrc,vimrc,zshrc}

ln -s irbrc ~/.irbrc
ln -s zshrc ~/.zshrc
ln -s gemrc ~/.gemrc
ln -s tmux.con ~/.tmux.conf
ln -s bash/bashrc.sh ~/.bashrc
ln -s vim/vimrc.vim ~/.vimrc
