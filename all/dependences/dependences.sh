echo " ____                            _                            "
echo "|  _ \  ___ _ __   ___ _ __   __| | ___ _ __   ___ ___  ___   "
echo "| | | |/ _ \  _ \ / _ \  _ \ / _  |/ _ \  _ \ / __/ _ \/ __|  "
echo "| |_| |  __/ |_) |  __/ | | | (_| |  __/ | | | (_|  __/\__ \  "
echo "|____/ \___| .__/ \___|_| |_|\__,_|\___|_| |_|\___\___||___/  "
echo "           |_|                                                "

########################################################################
#                       NEOVIM                                         #
########################################################################

#Pre-built archives
#The Releases page provides pre-built binaries for Linux systems.

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz

sudo rm -rf /opt/nvim

sudo tar -C /opt -xzf nvim-linux64.tar.gz

#Then add this to your shell config (~/.bashrc, ~/.zshrc, ...)

export PATH="$PATH:/opt/nvim-linux64/bin"

#global nvim

sudo ln -s /opt/nvim-linux64/bin/nvim /bin

#PARA RODAR O :PlugInstall no NVIM
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#Abra o NVIM e execute ":PlugInstall"

########################################################################
#                       PICOM                                          #
########################################################################

sudo apt -y install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libx11-xcb-dev

########################################################################
#                       ZSH/OH_MY_ZSH                                  #
########################################################################

sudo apt install zsh && zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

rm ~/.zshrc

ln -s ~/.dotfiles/all/links-home/.zshrc ~/.zshrc

########################################################################
#                       GREENCLIP                                      #
########################################################################

wget https://github.com/erebe/greenclip/releases/latest/download/greenclip

chmod +x greenclip

sudo mv greenclip /usr/local/bin/

########################################################################
#                       FZF                                            #
########################################################################

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install

########################################################################
#                       THEMES                                         #
########################################################################

https://github.com/vinceliuice/Tela-circle-icon-theme.git

/.install.sh

git clone https://github.com/EliverLara/Nordic.git

sudo mv Nordic/ /usr/share/themes

########################################################################
#                       SNAPS                                          #
########################################################################

sudo apt update

sudo apt install snapd

sudo snap install core


































