#!/usr/bin/env bash

for file in .irbrc .gemrc .tmux.conf .bashrc .vimrc .zshrc .railsrc .ackrc; do
    if [ -f $HOME/$file ]; then
        mv $HOME/$file $HOME/${file}_old
fi
done

PWD="`pwd`"

ln -fs $PWD/irbrc          $HOME/.irbrc
ln -fs $PWD/zshrc          $HOME/.zshrc
ln -fs $PWD/gemrc          $HOME/.gemrc
ln -fs $PWD/railsrc        $HOME/.railsrc
ln -fs $PWD/tmux.conf      $HOME/.tmux.conf
ln -fs $PWD/bash/bashrc.sh $HOME/.bashrc
ln -fs $PWD/vim/vimrc.vim  $HOME/.vimrc
ln -fs $PWD/ackrc          $HOME/.ackrc
