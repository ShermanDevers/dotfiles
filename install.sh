#!/bin/bash

#Install packages.nix to appropriate location
sudo wget "https://raw.githubusercontent.com/ShermanDevers/dotfiles/refs/heads/main/nixConfig/packages.nix" -O /etc/nixos/packages.nix;
echo "Downloaded packages.nix";

sudo wget "https://raw.githubusercontent.com/ShermanDevers/dotfiles/refs/heads/main/nixConfig/fonts.nix" -O /etc/nixos/fonts.nix;
echo "Downloaded fonts.nix";

echo "Please include the new files in configuration.nix";
echo "Once you have done that, run nixos-rebuild switch" 

