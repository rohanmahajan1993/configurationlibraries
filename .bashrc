# History related bash rc commands
HISTSIZE=1048576 #How many to keep in memory
HISTFILE="$HOME/.bash_history"
SAVEHIST=$HISTSIZE #How many to keep in files
shopt -s histappend # append to history file

export HISTCONTROL=erasedups #erase duplications
# Share between terminals; basically, loads history between each bash commandsn
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND" #share between terminals

#Set up the default editor
export EDITOR=vim

source ~/.bash_aliases_common
source ~/.bash_functions
