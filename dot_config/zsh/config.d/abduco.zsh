if command -v abduco >/dev/null; then
  export ABDUCO_CMD="/usr/bin/zsh"
  ab() {
      abduco "$@"
  }
  aba() {
      abduco -a "$@"
  }
  _aba() {
    compadd $( abduco -l | awk '{print $NF}' | sed 1d)
  }
  compdef _aba aba
  abc() {
      abduco -c "$@"
  }
  _abc() {
    compadd "$(date +%s)"
  }
  compdef _abc abc
  abls() {
      abduco -l | awk '{print $NF}' | sed 1d
  }
fi
