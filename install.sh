#!/bin/sh

mkdir -p bin
curl -L git.io/antigen > bin/antigen.zsh

ln -sfv ~/.dotfiles/zsh/.zshrc ~
ln -sfv ~/.dotfiles/zsh/.antigenrc ~
ln -sfv ~/.dotfiles/zsh/.p10k.zsh ~
