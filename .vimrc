set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

"let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim
call vundle#end()            
filetype plugin indent on  


set autoindent "next line is indented with indented with feature"
set noswapfile "no swap files"
set number "show the line numbers"
set mouse=a "allows you to move the mouse to click and scroll"
set autoread "if file is chaned outside of vim, make it changeable inside of vim"
set backspace "useful backspace options"
set nu " number lines

set incsearch "incremental search (as string is being typed)
set hls " highlight search
set noshowmode "doesn't show the mode
set ruler "shows row and column you are in"
set scrolloff=5 "makes sure your line is not the last line in vim"

set wildmode=longest,list "fancy menu comes up when you vsplit
set wildmenu

