# This function greps the current directory
g() {
  grep --color=auto -R $1 .
}

# This function zipts the current directory
z() {
  zip -r zippedfile.zip $1
}

f() {
  find . -name $1 
}

# These are used to export functions so that the l function works
export -f g
export -f z
export -f f

l() {
 alias
 declare -x -F 
}

