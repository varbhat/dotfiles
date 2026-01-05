{ config
, pkgs
, ...
}:

{
  imports = [
  ];

  services.flatpak.enable = true;
  hardware.steam-hardware.enable = true;
}
