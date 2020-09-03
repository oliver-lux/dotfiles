#!/bin/sh

mkdir -p bin
curl -L git.io/antigen > bin/antigen.zsh

ln -sf ~/.dotfiles/zsh/.zshrc ~
ln -sf ~/.dotfiles/zsh/.p10k.zsh ~

mkdir -p ~/.config/nvim
ln -sf ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
