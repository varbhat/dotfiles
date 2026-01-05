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

  xdg.mimeApps.defaultApplications = {
    "application/pdf" = [ "zathura.desktop" ];
  };
}
