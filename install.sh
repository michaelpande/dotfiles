#!/bin/sh

# Remove and symlink dotfile
rm -f ~/.vimrc
rm -f ~/.Xmodmap
rm -f ~/.gitignore
rm -f ~/.eslintrc
rm -rf ~/.i3
rm -f ~/.i3status.conf
rm -f ~/.zshrc
rm -rf ~/.antigen
rm -rf ~/.local/share/radiotray/bookmarks.xml
rm -rf ~/.workrave/state
rm -rf ~/.config/redshift.conf
rm -rf ~/.xbindkeysrc
rm -rf ~/.profile
rm -rf ~/.gitconfig
rm -rf ~/.radio_stations
rm -rf ~/.dotfiles_dependencies

# Make necessary folders
mkdir ~/.i3
mkdir ~/.antigen
mkdir ~/.dotfiles_dependencies

curl https://cdn.rawgit.com/zsh-users/antigen/v1.3.4/bin/antigen.zsh > ~/.antigen/antigen.zsh


# Symlink
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/eslintrc ~/.eslintrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/Xmodmap ~/.Xmodmap
ln -s ~/dotfiles/desktop/i3/config ~/.i3/config
ln -s ~/dotfiles/desktop/i3/i3status.conf ~/.i3status.conf
ln -s ~/dotfiles/etc/bookmarks.xml ~/.local/share/radiotray/bookmarks.xml
ln -s ~/dotfiles/etc/workrave/state ~/.workrave/state
ln -s ~/dotfiles/etc/redshift.conf ~/.config/redshift.conf
ln -s ~/dotfiles/xbindkeysrc ~/.xbindkeysrc
ln -s ~/dotfiles/profile ~/.profile
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/etc/radio_stations ~/.radio_stations

# Vim setup
rm -rf ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -P ~/.vim/colors/

vim +PluginInstall +qall

# Set up gitignore
cat ~/dotfiles/git/gitignore/* > ~/.gitignore


# Ubuntu
apt-get install vim-gtk

# Install dependencies
apt-get install python3
apt-get install python3-pip
pip install requests BeautifulSoup4


cd ~/.dotfiles_dependencies
git clone git@github.com:calzoneman/i3-weather.git
