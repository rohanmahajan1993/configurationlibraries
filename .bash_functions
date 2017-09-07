g() {
  grep --color=auto -R $1 .
}

z() {
  zip -r zippedfile.zip $1
}

export -f g
export -f z

l() {
 alias
 declare -x -F 
}

