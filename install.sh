#!/bin/bash

#i3
ln -rs ./config/i3 ~/.config/i3
ln -rs ./config/.i3blocks.conf ~/.config/.i3blocks.conf

#terminator
ln -rs ./config/terminator ~/.config/terminator

#mutt 
ln -rs ./mutt ~/.mutt

#scripts
ln -rs ./scripts ~/.scripts

#rcs

ln -rs ./vimrc ~/.vimrc
ln -rs ./gtkrc ~/.gtkrc
ln -rs ./xinitrc ~/.xinitrc
ln -rs ./zshrc ~/.zshrc
ln -rs ./wallpaper.jpg ~/wallpaper.jpg

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.vim/.ycm_extra_conf.py --create-dirs \
	https://raw.githubusercontent.com/Valloric/ycmd/master/cpp/ycm/.ycm_extra_conf.py

