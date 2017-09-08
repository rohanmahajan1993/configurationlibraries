#!/bin/bash

case "$(uname -s)" in
   Darwin)
     IS_MAC=true
     echo 'Mac OS X'
     ;;

   Linux)
     echo 'Linux'
     IS_LINUX=true
     ;;

   CYGWIN*|MINGW32*|MSYS*)
     echo 'MS Windows'
     IS_CYGWIN=true
     ;;

   *)
     echo 'could not find other statements' 
     ;;
esac


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
  sudo apt-get install build-essential cmake
  git submodule update --init --recursive
  ./install.py --clang-completer
fi

