#!/bin/sh

# Remove and symlink dotfile
rm -f ~/.vimrc


ln -s ~/dotfiles/.vimrc ~/.vimrc



# Vim setup
rm -rf ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


vim +PluginInstall +qall
