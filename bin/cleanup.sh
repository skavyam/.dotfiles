#!/bin/bash

rm -f ~/.nanorc

sed -i '/source ~\/,dotfiles\/etc\/bashrc_custom/d' ~/.bashrc.save

rm -rf ~/.TRASH

