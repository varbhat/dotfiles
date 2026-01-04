{ config
, pkgs
, ...
}:

{
  imports = [
  ];

  xdg.mimeApps.defaultApplications = {
    "x-scheme-handler/http" = [ "firefox.desktop" ];
    "x-scheme-handler/https" = [ "firefox.desktop" ];
    "x-scheme-handler/mpv" = [ "open-in-mpv.desktop" ];
    "text/html" = [ "firefox.desktop" ];
    "application/pdf" = [
      "zathura.desktop"
      "firefox.desktop"
    ];
  };

  xdg = {
    # Override the default XDG directories
    userDirs = {
      enable = true;
      createDirectories = true;
      desktop = "$HOME/.xdgpath/desktop";
      documents = "$HOME/.xdgpath/documents";
      download = "$HOME/space/downloads";
      music = "$HOME/.xdgpath/music";
      pictures = "$HOME/.xdgpath/pictures";
      publicShare = "$HOME/.xdgpath/publicshare";
      templates = "$HOME/.xdgpath/templates";
      videos = "$HOME/.xdgpath/videos";
    };
  };
}
