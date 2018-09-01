#!/bin/bash
#repo name: linux-config-file
#create symlinks FROM home directory to where you clone your config repository

SCRIPTDIR="$(dirname $(pwd))/linux-config-files"
CONFIGRELPATH="$SCRIPTDIR/"
CONFIGABSPATH=$

TRACKER="$SCRIPTDIR/tracker.txt"

while IFS= read -r conffile
do







  echo "$var"
done < "$TRACKER"

## declare an array variable
declare -a arr=("element1" "element2" "element3")

## now loop through the above array
for i in "${arr[@]}"
do
   echo "$i"
   # or do whatever with individual element of the array
done

# You can access them using echo "${arr[0]}", "${arr[1]}" also

fgrep -vxf  f3.txt >> f2.txt


cd /home/$USER
find . -name 'mystring*'
echo "vim config path:"$VIMPATH:

if [ -f "/home/$USER/.vimrc" ] && rm "/home/$USER/.vimrc"
echo "removing existing .vimrc file"
ln -s "$VIMPATH/.vimrc" "/home/$USER/.vimrc"
echo "creating symlink from ~/.vimrc to .vimrc in repository"

[ -d "/home/$USER/.vim" ] && rm -rf "/home/$USER/.vim"
echo "removing existing .vim folder"
ln -s "$VIMPATH/.vim" "/home/$USER/.vim"
echo "creating symlink from ~/.vim to .vim in repository"


