#!/bin/bash

echo "        __  __ ____ ___ ___ ___ _   _ ____ _____  __    __      "
echo "   / \ | | | |_   _/ _ \_ _| \ | / ___|_   _|/ \  | |   | |     "
echo "  / _ \| | | | | || | | | ||  \| \___ \ | | / _ \ | |   | |     "
echo " / ___ \ |_| | | || |_| | || |\  |___) || |/ ___ \| |___| |___  "
echo "/_/   \_\___/  |_| \___/___|_| \_|____/ |_/_/   \_\_____|_____| "
echo " "

### libraries
sudo apt -y install build-essential libpam0g-dev libxcb-xkb-dev libncurses5-dev linux-headers-amd64 libevdev2 libpcre3-dev policykit-1 policykit-1-gnome

### stantard
sudo apt -y install mlocate pamixer shotwell xclip curl git htop rofi picom python3-pip pulseaudio pulsemixer alsamixergui pavucontrol gcc blueman ranger vim wget lxappearance gimp w3m-img awesome awesome-extra parcellite libnotify-bin i3lock xautolock unclutter thunar kitty brightnessctl

### apps
sudo apt -y install thunar thunar-volman thunar-archive-plugin duf neofetch zoxide flameshot nitrogen qalc gpick syncthing zathura-pdf-poppler localsend

## Fonts/icons/themes
ln -s ~/.dotfiles/.config/* ~/.config/

cd ~/.local/share/ && sudo mkdir rofi

sudo ln -s ~/.dotfiles/.config/rofi/themes/ ~/.local/share/rofi/

sudo rm -r /usr/share/awesome/themes/

sudo ln -s ~/.dotfiles/.config/awesome/themes/ /usr/share/awesome/

sudo ln -s ~/.dotfiles/all/lx-themes/cursor/* /usr/share/icons

#sudo ln -s ~/.dotfiles/all/lx-themes/icons/* /usr/share/icons

sudo ln -s ~/.dotfiles/all/themes_zsh/* ~/.oh-my-zsh/themes/

sudo ln -s ~/.dotfiles/all/cdm_configs/* /etc/X11/xorg.conf.d

sudo ln -s ~/.dotfiles/all/links-home/.gitconfig ~/

sudo ln -s ~/.dotfiles/all/links-home/.zshrc ~/

sudo ln -s ~/.dotfiles/all/links-home/.Xresources ~/

sudo ln -s ~/.dotfiles/all/lx-themes/fonts ~/.fonts

sudo ln -s ~/.dotfiles/all/links-home/.zprofile ~/

sudo ln -s ~/.dotfiles/all/links-home/.bash_profile ~/

sudo ln -s ~/.dotfiles/all/links-home/.xinitrc ~/

#################################################################################
#####RELOAD FONTS###############################################################
#################################################################################

## Reload fonts
fc-cache -f -v
