#!/bin/sh

INSTALL_DIR="${HOME}/.cache/dein/repos/github.com/Shougo/dein.vim"
if [ -e "$INSTALL_DIR" ]; then
  echo "\"$INSTALL_DIR\" already exists!"
fi

# check git command
type git || {
  echo 'git not found'
  exit 1
}

# make plugin dir and fetch dein
if ! [ -e "$INSTALL_DIR" ]; then
  mkdir -p "${HOME}/.cache/dein"
  git clone --depth=1 https://github.com/Shougo/dein.vim "$INSTALL_DIR"
fi
