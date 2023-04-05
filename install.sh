#!/bin/bash
#repo name: linux-config-file
#create symlinks FROM home directory TO where you clone your config repository

# Get the directory path of where this repository was installed
ABSPATH="$(dirname $(pwd))/linux-config-files"

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
#echo ${machine}

HOME_LINUX="/home/$USER"
HOME_MAC="/Users/$USER"
HOME_PATH=""

echo ""
echo "Installing symlinks from home dir to config files in"
echo " -> $ABSPATH"

INSTALL=1

#STR='GNU/Linux is an operating system'
SUB='Linux'
if [[ "$machine" == *"Linux"* ]]; then
	echo ""
	echo "Install config files to Linux."
	echo ""
	
	HOME_PATH=$HOME_LINUX
fi

if [[ "$machine" == *"Mac"* ]]; then
	echo ""
	echo "Install config files to Mac."
	echo ""

	HOME_PATH=$HOME_MAC
fi


if [[  $INSTALL == 1 ]]; then
	echo "Install config files to -> $HOME_PATH"
	echo ""

	[ -f "$HOME_PATH/.bashrc" ] && rm "$HOME_PATH/.bashrc"
	ln -f -s "$ABSPATH/.bashrc" "$HOME_PATH/.bashrc"

	[ -f "$HOME_PATH/.dircolors" ] && rm "$HOME_PATH/.dircolors"
	ln -f -s "$ABSPATH/dircolors.256dark" "$HOME_PATH/.dircolors"

	[ -f "$HOME_PATH/.gitconfig" ] && rm "$HOME_PATH/.gitconfig"
	ln -f -s "$ABSPATH/.gitconfig" "$HOME_PATH/.gitconfig"

	[ -f "$HOME_PATH/.tmux.conf" ] && rm "$HOME_PATH/.tmux.conf"
	ln -f -s "$ABSPATH/.tmux.conf" "$HOME_PATH/.tmux.conf"

	[ -f "$HOME_PATH/.vimrc" ] && rm "$HOME_PATH/.vimrc"
	ln -f -s "$ABSPATH/.vimrc" "$HOME_PATH/.vimrc"

	[ -d "$HOME_PATH/.vim" ] && rm -rf "$HOME_PATH/.vim"
	ln -f -s "$ABSPATH/.vim" "$HOME_PATH/.vim"

	echo "Config files installed!"
	echo ""
else
	echo "Debugging enabled. Config files not installed to -> $HOME_PATH"
	echo ""
fi

