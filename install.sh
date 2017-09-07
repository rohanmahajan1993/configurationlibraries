#!/bin/bash

YOU_COMPLETE_ME_DIR=~/.vim/bundle/YouCompleteMe
if [ ! -d $YOU_COMPLETE_ME_DIR ]; then
  echo "entering the first if statement"
  YOU_COMPLETE_MISSING=true
fi
if [ ! -d $VUNDLE_DIR ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR
fi
python install.py
vim +PluginInstall +qall

pip install pylint

if [ "$YOU_COMPLETE_MISSING" = true ]; then
  cd $YOU_COMPLETE_ME_DIR
  brew install cmake
  git submodule update --init --recursive
  ./install.py --clang-completer
fi

