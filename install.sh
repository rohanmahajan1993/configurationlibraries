#!/bin/bash

VUNDLE_DIR=~/.vim/bundle/Vundle.vim
if [ ! -d $VUNDLE_DIR ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR
fi
python install.py
vim +PluginInstall +qall

YOU_COMPLETE_ME_DIR=~/.vim/bundle/YouCompleteMe
if [ ! -d $YOUCOMPLETEME_DIR ]; then
  cd $YOU_COMPLETE_ME_DIR
  brew install cmake
  git submodule update --init --recursive
  ./install.py --clang-completer
fi

