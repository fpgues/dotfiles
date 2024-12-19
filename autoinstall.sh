#!/bin/bash

echo " "       _   _   _ _____ ___ ___ _   _ ____ _____  _    _
echo "   / \ | | | |_   _/ _ \_ _| \ | / ___|_   _|/ \  | |   | |     "
echo "  / _ \| | | | | || | | | ||  \| \___ \ | | / _ \ | |   | |     "
echo " / ___ \ |_| | | || |_| | || |\  |___) || |/ ___ \| |___| |___  "
echo "/_/   \_\___/  |_| \___/___|_| \_|____/ |_/_/   \_\_____|_____| "
echo " "

### libraries
sudo apt -y install build-essential libpam0g-dev libxcb-xkb-dev libncurses5-dev linux-headers-amd64 libevdev2 libpcre3-dev policykit-1 policykit-1-gnome


### stantard
sudo apt -y install mlocate pamixer shotwell xclip curl git htop rofi picom python3-pip alsamixergui pavucontrol gcc blueman pulsemixer ranger vim wget lxappearance gimp w3m-img awesome awesome-extra parcellite libnotify-bin i3lock xautolock unclutter thunar kitty brightnessctl


### apps
sudo apt -y thunar thunar-volman thunar-archive-plugin duf neofetch flameshot nitrogen qalc network-manager


## Fonts/icons/themes
ln -s ~/.dotfiles/.gitconfig ~/ && ln -s ~/.dotfiles/.config/* ~/.config/

cd ~/.local/share/ && sudo mkdir rofi

sudo ln -s ~/.dotfiles/.config/rofi/themes/ ~/.local/share/rofi/

sudo rm -r /usr/share/awesome/themes/

sudo ln -s ~/.dotfiles/.config/awesome/themes/ /usr/share/awesome/

sudo ln -s ~/.dotfiles/.config/lx-themes/fonts ~/.fonts

sudo ln -s ~/.dotfiles/.config/lx-themes/cursor/* /usr/share/icons

sudo ln -s ~/.dotfiles/.config/lx-themes/icons/* /usr/share/icons

sudo ln -s ~/.dotfiles/.config/others/themes_zsh/* ~/.oh-my-zsh/themes/

#################################################################################
#####RELOAD FONTS###############################################################
#################################################################################

## Reload fonts
fc-cache -f -v
