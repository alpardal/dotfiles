#!/usr/bin/env bash

PWD="`pwd`"
RCS_DIR=$PWD/rcs

function link_dotfiles {
  echo -n 'linking dotfiles... '

  for file in `ls $RCS_DIR`; do
      if [ -f $HOME/.$file ]; then
          mv $HOME/.$file $HOME/.${file}_old
      fi
      ln -fs $RCS_DIR/$file $HOME/.$file
      echo Created ~/.$file
  done

  echo 'done.'
}

function setup_dotvim_dir {
    if [ -d $HOME/.vim ]; then
        rm -f $HOME/.vim_old
        mv $HOME/.vim $HOME/.vim_old
    fi

    ln -fs $HOME/dotfiles/dotvim $HOME/.vim
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

function install_tmux_plugin_manager {
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

link_dotfiles
setup_dotvim_dir
install_tmux_plugin_manager
