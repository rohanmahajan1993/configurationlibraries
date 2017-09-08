#!/bin/bash

function check_operating_sytem {
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
}

# Because you_complete_me needs specific instructions even after vundle install,
# we need to see if already present

function check_you_complete {
  YOU_COMPLETE_ME_DIR=~/.vim/bundle/YouCompleteMe
  if [ ! -d $YOU_COMPLETE_ME_DIR ]; then
    YOU_COMPLETE_MISSING=true
  fi
}

function process_you_complete {
  if [ "$YOU_COMPLETE_MISSING" = true ]; then
    cd $YOU_COMPLETE_ME_DIR
    if [ "$IS_MAC" = true ]; then
      brew install cmake
    elif [ "$IS_LINUX" = true ]; then
      sudo apt-get install build-essential cmake
    fi
    ./install.py --clang-completer
  fi
}

#Seperation of concerns with check and handle 
function handle_operating_system {
  if [ "$IS_MAC" = true ]; then
    echo "source ~/.bash_aliases_mac" >> ~/.bash_aliases_common
  elif [ "$IS_LINUX" = true ]; then
    echo "source ~/.bash_aliases_linux" >> ~/.bash_aliases_common
  fi
}  

function main {
  check_operating_sytem
  check_you_complete
  if [ ! -d $VUNDLE_DIR ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR
  fi
  python install.py
  vim +PluginInstall +qall
  process_you_complete
  pip install pylint
  handle_operating_system
}

main
