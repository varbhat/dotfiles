{ config
, pkgs
, inputs
, ...
}:

{
  imports = [
    ../../modules/nixos/base.nix
    ../../modules/nixos/bluetooth.nix
    ../../modules/nixos/boot.nix
    ../../modules/nixos/desktop.nix
    ../../modules/nixos/docker.nix
    ../../modules/nixos/dvorak.nix
    ../../modules/nixos/editor.nix
    ../../modules/nixos/flatpak.nix
    ../../modules/nixos/i2c.nix
    ../../modules/nixos/kernel.nix
    ../../modules/nixos/network.nix
    ../../modules/nixos/packages.nix
    ../../modules/nixos/power.nix
    ../../modules/nixos/rust.nix
    ../../modules/nixos/shell.nix
    ../../modules/nixos/ssh.nix
    ../../modules/nixos/time.nix
    ../../modules/nixos/user.nix
    ../../modules/nixos/wifi.nix
  ];

}
