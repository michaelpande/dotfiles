#!/bin/sh

# Remove and symlink dotfile
rm -f ~/.vimrc
rm -f ~/.oh-my-zsh/custom/shell.zsh
rm -f ~/.Xmodmap
rm -f ~/.gitignore
rm -rf ~/.i3
rm -f ~/.i3status.conf

# Make necessary folders
mkdir ~/.i3

# Symlink
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.Xmodmap ~/.Xmodmap
ln -s ~/dotfiles/desktop/.i3/config ~/.i3/config
ln -s ~/dotfiles/desktop/.i3/i3status.conf ~/.i3status.conf

# Vim setup
rm -rf ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -P ~/.vim/colors/

vim +PluginInstall +qall

# Set up shell
cat ~/dotfiles/shell/* > ~/.oh-my-zsh/custom/shell.zsh

# Set up gitignore
cat ~/dotfiles/git/gitignore/* > ~/.gitignore

