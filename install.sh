#!/bin/sh

mkdir -p ~/.config
PWD=${PWD}

# create symbolic links if not exists
if [ ! -L ~/.config/nvim ] && [ ! -d ~/.config/nvim ]; then
  ln -s ${PWD}/nvim ~/.config/nvim
  echo "[nVim]: Installed successfully."
else
  echo "[nVim]: Already installed. Remove it first."
fi

if [ ! -L ~/.tmux.conf ] && [ ! -f ~/.tmux.conf ]; then
  ln -sfn ${PWD}/tmux.conf ~/.tmux.conf
  echo "[tmux]: Installed successfully."
else 
  echo "[tmux]: Already installed. Remove it first."
fi

