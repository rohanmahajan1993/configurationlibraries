#!/bin/bash

VUNDLE_DIR=~/.vim/bundle/Vundle.vim
if [ ! -d $VUNDLE_DIR ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR
fi
python install.py
vim +PluginInstall +qall
brew install cmake
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer

