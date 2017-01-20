#!/bin/sh

# Remove and symlink dotfile
rm -f ~/.vimrc
rm -f ~/.Xmodmap
rm -f ~/.gitignore
rm -rf ~/.i3
rm -f ~/.i3status.conf
rm -f ~/.zshrc
rm -rf ~/.antigen

# Make necessary folders
mkdir ~/.i3
mkdir ~/.antigen

curl https://cdn.rawgit.com/zsh-users/antigen/v1.3.4/bin/antigen.zsh > ~/.antigen/antigen.zsh


# Symlink
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.Xmodmap ~/.Xmodmap
ln -s ~/dotfiles/desktop/.i3/config ~/.i3/config
ln -s ~/dotfiles/desktop/.i3/i3status.conf ~/.i3status.conf

# Vim setup
rm -rf ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -P ~/.vim/colors/

vim +PluginInstall +qall

# Set up gitignore
cat ~/dotfiles/git/gitignore/* > ~/.gitignore

