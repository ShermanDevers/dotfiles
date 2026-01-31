#!/bin/bash

#Install packages.nix to appropriate location
sudo wget "https://raw.githubusercontent.com/ShermanDevers/dotfiles/refs/heads/main/nixConfig/packages.nix" -O /etc/nixos/packages.nix;
echo "Downloaded packages.nix";

#Same but with fonts
sudo wget "https://raw.githubusercontent.com/ShermanDevers/dotfiles/refs/heads/main/nixConfig/fonts.nix" -O /etc/nixos/fonts.nix;
echo "Downloaded fonts.nix";

read -n 1 -p "Please include the new files in configuration.nix, then press anything to continue"; 
sudo nixos-rebuild switch

#Install vim-plug
rm -rf ~/.config/nvim
git clone https://github.com/ShermanDevers/LazyConf/ ~/.config/nvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

