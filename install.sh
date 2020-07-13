#!/bin/sh
# create config directory
mkdir -p ~/.config

# create symbolic link
DIR="${PWD}/nvim"
ln -s -f ${DIR} ~/.config/nvim
DIR="${PWD}/.bash_aliases"
ln -s -f ${DIR} ~/.bash_aliases
