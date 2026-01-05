{ config
, pkgs
, ...
}:

{
  imports = [
  ];

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
