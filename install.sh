#!/bin/bash

#Install packages.nix to appropriate location
sudo wget "https://raw.githubusercontent.com/ShermanDevers/dotfiles/refs/heads/main/nixConfig/packages.nix" -O /etc/nixos/
echo "Downloaded packages.nix"

sudo wget "https://raw.githubusercontent.com/ShermanDevers/dotfiles/refs/heads/main/nixConfig/fonts.nix" -O /etc/nixos/
echo "Downloaded fonts.nix"

read -n 1 -p "Please include the new files in configuration.nix, then press anything to continue"
sudo nixos-rebuild switch
