#!/bin/sh

# Remove and symlink dotfile
rm -f ~/.vimrc
rm -f ~/.oh-my-zsh/custom/alias.zsh


ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/alias.zsh ~/.oh-my-zsh/custom/alias.zsh


# Vim setup
rm -rf ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -P ~/.vim/colors/

vim +PluginInstall +qall
