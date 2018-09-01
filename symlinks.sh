#!/bin/bash
#repo name: linux-config-file
#create symlinks FROM home directory to where you clone your config repository

SCRIPTDIR="$(dirname $(pwd))/linux-config-files"
VIMPATH="$SCRIPTDIR/vimconfig"


echo "vim config path:"$VIMPATH:

[ -f "/home/$USER/.vimrc" ] && rm "/home/$USER/.vimrc"
echo "removing existing .vimrc file"
ln -s "$VIMPATH/.vimrc" "/home/$USER/.vimrc"
echo "creating symlink from ~/.vimrc to .vimrc in repository"

[ -d "/home/$USER/.vim" ] && rm -rf "/home/$USER/.vim"
echo "removing existing .vim folder"
ln -s "$VIMPATH/.vim" "/home/$USER/.vim"
echo "creating symlink from ~/.vim to .vim in repository"


