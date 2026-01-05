{ config
, pkgs
, inputs
, ...
}:

{
  imports = [
    ../../modules/home/base.nix
    ../../modules/home/distrobox.nix
    ../../modules/home/firefox.nix
    ../../modules/home/fuzzel.nix
    ../../modules/home/git.nix
    ../../modules/home/helix.nix
    ../../modules/home/mpv.nix
    ../../modules/home/neovim.nix
    ../../modules/home/packages.nix
    ../../modules/home/scroll.nix
    ../../modules/home/shell.nix
    ../../modules/home/terminal.nix
    ../../modules/home/theme.nix
    ../../modules/home/vbthome.nix
    ../../modules/home/xdg.nix
    ../../modules/home/yazi.nix
    ../../modules/home/ytdlp.nix
    ../../modules/home/zathura.nix
    ../../modules/home/zed.nix
  ];
}
