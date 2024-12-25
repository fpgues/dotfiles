#!/bin/bash

#Pre-built archives
#The Releases page provides pre-built binaries for Linux systems.

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz

sudo rm -rf /opt/nvim

sudo tar -C /opt -xzf nvim-linux64.tar.gz

#Then add this to your shell config (~/.bashrc, ~/.zshrc, ...)

export PATH="$PATH:/opt/nvim-linux64/bin"

#global nvim

sudo ln -s /opt/nvim-linux64/bin/nvim /bin

### PARA RODAR O :PlugInstall no NVIM
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#Abra o NVIM e execute ":PlugInstall"


