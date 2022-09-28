#!/bin/bash

# Create symbolic links to in home folder
ln -sf ~/.dotfiles/.bashrc ~/.bashrc
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

source ~/.bashrc
