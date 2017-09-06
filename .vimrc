set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

call vundle#end()            
filetype plugin indent on  


set autoindent "next line is indented with indented with feature"
set noswapfile "no swap files"
set number "show the line numbers"
set mouse=a "allows you to move the mouse to click and scroll"
set autoread "if file is chaned outside of vim, make it changeable inside of vim"
set backspace "useful backspace options"
set nu " number lines

set incsearch " incremental search (as string is being typed)
set hls " highlight search
