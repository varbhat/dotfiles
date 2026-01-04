{ config
, pkgs
, ...
}:

{
  imports = [
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
