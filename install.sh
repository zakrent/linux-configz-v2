#!/bin/bash

#i3
mkdir ~/.config/i3
ln -s ./.config/i3/config ~/.config/i3/config
ln -s ./.config/.i3blocks.conf ~/.config/.i3blocks.conf

#terminator
mkdir ~/.config/terminator
ln -s ./.config/terminator/config ~/.config/terminator/config

#mutt 
mkdir ~/.mutt
ln -s ./.mutt/gpg.rc ~/.mutt/gpg.rc
ln -s ./.mutt/passwords.gpg ~/.mutt/passwords.gpg
ln -s ./.mutt/muttrc ~/.mutt/muttrc

ln -s ./.vimrc ~/.vimrc
ln -s ./.xinitrc ~/.xinitrc
ln -s ./zshrc ~/.zshrc


