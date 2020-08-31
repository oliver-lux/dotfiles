#!/bin/sh

mkdir -p bin
curl -L git.io/antigen > bin/antigen.zsh

ln -sv ~/.dotfiles/zsh/.zshrc ~
ln -sv ~/.dotfiles/zsh/.p10k.zsh ~
