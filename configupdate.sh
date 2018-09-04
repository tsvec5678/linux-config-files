#!/bin/bash
#repo name: linux-config-file
#create symlinks FROM home directory TO where you clone your config repository

CONFIGDIR="$(dirname $(pwd))/linux-config-files"
CONFIGRELPATH="$CONFIGDIR/"
#CONFIGABSPATH=$

#tracker.txt has all config apps to update
APPS="$CONFIGDIR/allapps.txt"

while IFS= read -r conffile
do
    if [[ -d "$CONFIGDIR/backupconfig/$conffile" ]] ; then
        echo "$CONFIGDIR/backupconfig/$conffile is a directory"
    elif [[ -f "$CONFIGDIR/backupconfig/$conffile" ]] ; then
        echo "$CONFIGDIR/backupconfig/$conffile is a file"
    else
        echo "not valid"
        exit 1
    fi


#    [ -f "/home/$USER/.vimrc" ] && rm "/home/$USER/.vimrc"
#    echo "removing existing .vimrc file"
#    ln -f -s "$VIMPATH/.vimrc" "/home/$USER/.vimrc"
#    echo "creating symlink from ~/.vimrc to .vimrc in repository"

#   [ -d "/home/$USER/.vim" ] && rm -rf "/home/$USER/.vim"
#    echo "removing existing .vim folder"
#    ln -f -s "$VIMPATH/.vim" "/home/$USER/.vim"
#    echo "creating symlink from ~/.vim to .vim in repository"



  echo "$conffile"
done < "$APPS"

#fgrep -vxf  f3.txt >> f2.txt

#cd /home/$USER
#find . -name 'mystring*'
#echo "vim config path:"$VIMPATH:




