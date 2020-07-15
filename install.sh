#!/bin/sh

mkdir -p ~/.config
PWD=${PWD}

# create symbolic links if not exists
if [ ! -L ~/.config/nvim ] && [ ! -e ~/.config/nvim ]; then
  ln -s ${PWD}/nvim ~/.config/nvim
  echo "[nVim]: Installed successfully"
else
  echo "[nVim]: Already installed. Remove it first."
fi
