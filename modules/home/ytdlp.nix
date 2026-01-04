{ config
, pkgs
, ...
}:

{
  imports = [
  ];

  programs.yt-dlp = {
    enable = true;
    settings = {
      embed-thumbnail = true;
      embed-subs = true;
      downloader = "aria2c";
    };
  };
}
