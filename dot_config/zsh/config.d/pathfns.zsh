# https://gist.github.com/o11c/03a4b321220395b97dadc3f1ca740db3
hasPath () {
    local tmp=":$PATH:"
    [ "${tmp}" != "${tmp#*:$1:}" ]
}

prependPath () {
    hasPath "$1" || export PATH="$1:$PATH"
}

appendPath () {
    hasPath "$1" || export PATH="$PATH:$1"
}

lsPath() {
    echo "$PATH" | tr ':' '\n'
}

delPath() {
    local pathToRemove="$1"
    local newPath
    local -a pathArray
    # Split PATH into an array using ":" as delimiter
    pathArray=("${(@s/:/)PATH}")
    # Remove the path to be deleted from the array
    pathArray=("${(@)pathArray:#$pathToRemove}")
    # Join the array elements with ":" as delimiter
    newPath="${(j/:/)pathArray}"
    # Export the new PATH
    export PATH="$newPath"
}
