{ config
, pkgs
, ...
}:

{
  imports = [
  ];

  home.packages = with pkgs; [
    syncthing
    logseq
    spoofdpi
    obs-studio
    libnotify # notify-send

    rsync
    rclone

    # Devel Tools
    go
    gcc
    gdb
    #clang
    #openjdk
    cargo
    python3
    nodejs
    uv

    comma
    nix-index

    chafa

    telegram-desktop
  ];
}
