HISTSIZE=1048576 #How many to keep in memory
HISTFILE="$HOME/.bash_history"
SAVEHIST=$HISTSIZE #How many to keep in files
shopt -s histappend # append to history file

export HISTCONTROL=erasedups #erase duplications
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND" #share between terminals

export EDITOR=vim

