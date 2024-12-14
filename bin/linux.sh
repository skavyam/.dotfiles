#!/bin/bash

if [ "$(uname)" != "Linux" ]; then
	echo "Error: This script only runs on Linux" >> ~/linux.setup.log
	exit 1
fi


mkdir -p ~/.TRASH

if [ -f ~/.nanorc ]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo "The current .nanorc file was renamed to bup_nanorc" >> ~/linuxsetup.log
fi


cp ~/.dotfiles/etc/nanorc ~/.nanorc

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc.save
