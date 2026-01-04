{ config
, pkgs
, ...
}:

{
  imports = [
  ];

  programs.zathura = {
    enable = true;

    options = {
      selection-clipboard = "clipboard";
    };
  };
}
