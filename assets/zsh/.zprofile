export EDITOR="nvim"
export TERMINAL="foot"
export GOPATH=~/.local/share/gopath
export VOLTA_HOME=~/.local/share/volta

path+=($GOPATH/bin)
path+=($HOME/.cargo/bin)
path+=($HOME/.local/share/nvim/mason/bin)
path+=($VOLTA_HOME/bin)
path+=($HOME/.local/bin)
# https://unix.stackexchange.com/a/480799
path+=($HOME/.local/vbin{,/**/*(N/)})
