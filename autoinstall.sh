#!/bin/bash

########################################################################
#                       STANDARD                                       #
########################################################################

sudo apt -y install vim curl git mlocate shotwell xclip htop rofi picom python3-pip pamixer pulseaudio pulsemixer alsamixergui pavucontrol gcc blueman ranger wget lxappearance gimp w3m-img awesome awesome-extra xautolock unclutter thunar kitty brightnessctl thunar thunar-volman thunar-archive-plugin duf neofetch zoxide flameshot nitrogen qalc gpick syncthing okular zathura-pdf-poppler network-manager network-manager-gnome gnome-disk-utility easyeffects inkscape obs-studio tree arandr autorandr vlc shotcut gnome-boxes xpad ncdu xournalpp alacritty 

########################################################################
#                       THEMES/CONFIGS                                 #
########################################################################

ln -s ~/dotfiles/config/* ~/.config/

cd ~/.local/share/ && sudo mkdir rofi

sudo ln -s ~/dotfiles/.config/rofi/themes/ ~/.local/share/rofi/

sudo ln -s ~/dotfiles/all/lx-themes/cursor/* /usr/share/icons

sudo ln -s ~/dotfiles/all/themes_zsh/* ~/.oh-my-zsh/themes/

sudo ln -s ~/dotfiles/all/links-home/.gitconfig ~/

sudo ln -s ~/dotfiles/all/links-home/.zshrc ~/

sudo ln -s ~/dotfiles/all/links-home/.Xresources ~/

sudo ln -s ~/dotfiles/all/lx-themes/fonts ~/.fonts

#sudo ln -s ~/.dotfiles/all/cdm_configs/* /etc/X11/xorg.conf.d

#sudo ln -s ~/.dotfiles/all/links-home/.zprofile ~/

#sudo ln -s ~/.dotfiles/all/links-home/.bash_profile ~/

#sudo ln -s ~/.dotfiles/all/links-home/.xinitrc ~/

#sudo ln -s ~/.dotfiles/.config/others/cdm_configs/* /etc/X11/xorg.conf.d

########################################################################
#                       RELOAD_FONTS                                   #
########################################################################

fc-cache -f -v
