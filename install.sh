#!/bin/bash
#repo name: linux-config-file
#create symlinks FROM home directory TO where you clone your config repository

ABSPATH="$(dirname $(pwd))/linux-config-files"

echo "installing symlinks from home dir to config files in"
echo " -> $ABSPATH"
[ -f "/home/$USER/.bashrc" ] && rm "/home/$USER/.bashrc"
ln -f -s "$ABSPATH/.bashrc" "/home/$USER/.bashrc"

[ -f "/home/$USER/.dircolors" ] && rm "/home/$USER/.dircolors"
ln -f -s "$ABSPATH/dircolors.256dark" "/home/$USER/.dircolors"

[ -f "/home/$USER/.gitconfig" ] && rm "/home/$USER/.gitconfig"
ln -f -s "$ABSPATH/.gitconfig" "/home/$USER/.gitconfig"

[ -f "/home/$USER/.tmux.conf" ] && rm "/home/$USER/.tmux.conf"
ln -f -s "$ABSPATH/.tmux.conf" "/home/$USER/.tmux.conf"

[ -f "/home/$USER/.vimrc" ] && rm "/home/$USER/.vimrc"
ln -f -s "$ABSPATH/.vimrc" "/home/$USER/.vimrc"

[ -d "/home/$USER/.vim" ] && rm -rf "/home/$USER/.vim"
ln -f -s "$ABSPATH/.vim" "/home/$USER/.vim"

echo "config files installed"
