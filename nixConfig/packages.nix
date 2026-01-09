{config,pkgs,...}:

{
environment.systemPackages = with pkgs; [
  neovim
  librewolf
  ripgrep
  wget
  git
  gnome-tweaks
  python3
  micromamba
  glib
  waybar
  wdisplays
  font-awesome
  pavucontrol
  lua54Packages.lua
  libgcc
  cargo
  hyprpaper
  hyprlock
  fastfetch
  kitty
  ];


}
