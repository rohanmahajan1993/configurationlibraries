# History related bash rc commands
HISTSIZE=1048576 #How many to keep in memory
HISTFILE="$HOME/.bash_history"
SAVEHIST=$HISTSIZE #How many to keep in files
shopt -s histappend # append to history file

export HISTCONTROL=erasedups:ignoredups #erase duplications
# Share between terminals; basically, loads history between each bash commandsn
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

#Set up the default editor
export EDITOR=vim

source ~/.bash_aliases_common
source ~/.bash_functions
