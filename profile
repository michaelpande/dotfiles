# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$HOME/dev/toolbelt:$HOME/dev/cli_radiotray_controller:$HOME/tools/dev:$PATH"
./dev/toolbelt/auto_detect_screen &
xbindkeys
xmodmap $HOME/.Xmodmap

# Key repeat
xset r rate 250 40 

# Turn off power saving (Dark screen)
xset -dpms 

# Autolock
exec xautolock -time 5 -locker "i3lock -c 395c69 -i ~/images/lockscreen.png" &

git config --global core.excludesfile '$HOME/.gitignore'

