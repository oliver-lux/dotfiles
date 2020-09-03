#!/bin/sh

mkdir -p ~/bin

if [ ! -f ~/bin/antigen.zsh ]; then
  echo "Downloading antigen"
  curl -L git.io/antigen > ~/bin/antigen.zsh
fi

ln -sf ~/.dotfiles/zsh/.zshrc ~
ln -sf ~/.dotfiles/zsh/.p10k.zsh ~

mkdir -p ~/.config/nvim
ln -sf ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
