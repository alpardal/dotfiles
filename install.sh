#!/usr/bin/env bash

PWD="`pwd`"

for file in .irbrc .gemrc .tmux.conf .bashrc .vimrc .zshrc .railsrc .ackrc .gitconfig; do
    if [ -f $HOME/$file ]; then
        mv $HOME/$file $HOME/${file}_old
    fi
done

function setup_dotvim_dir {
    if [ -d $HOME/.vim ]; then
        rm -f $HOME/.vim_old
        mv $HOME/.vim $HOME/.vim_old
    fi

    ln -fs $PWD/dotvim        $HOME/.vim
    (
        cd $HOME/.vim
        rm -rf bundle
        mkdir bundle && cd bundle
        echo -n 'Cloning Vundle... '
        git clone https://github.com/gmarik/Vundle.vim.git
        echo done.
        echo 'Installing Vim plugins... '
        vi -c 'PluginInstall'
        echo done.
    )
}

ln -fs $PWD/irbrc         $HOME/.irbrc
ln -fs $PWD/bashrc        $HOME/.bashrc
ln -fs $PWD/zshrc         $HOME/.zshrc
ln -fs $PWD/gemrc         $HOME/.gemrc
ln -fs $PWD/railsrc       $HOME/.railsrc
ln -fs $PWD/tmux.conf     $HOME/.tmux.conf
ln -fs $PWD/vim/vimrc.vim $HOME/.vimrc
ln -fs $PWD/ackrc         $HOME/.ackrc
ln -fs $PWD/gitconfig     $HOME/.gitconfig

setup_dotvim_dir
