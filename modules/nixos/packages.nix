{ config
, pkgs
, ...
}:

{
  imports = [
  ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    git
    curl
    wget
    aria2
    file
    neovim
    btop
    killall
    kitty
    foot
    firefox
    open-in-mpv
    fastfetch
    comma
    distrobox
    fzf
    lazygit
    lazydocker
    nil
    nixpkgs-fmt
    nh
    jq
    go
    gcc
    gdb
    clang
    #openjdk
    cargo
    rustc
    python3
    nodejs
    uv
    nixd
    rsync
    rclone
    starship
    nix-index
    starship
    zoxide
    atuin
    tealdeer
    yazi
    bat
    bat-extras.batman
    bat-extras.prettybat
    ripgrep
    eza
    fd
    waypipe
    wl-mirror
    wayvnc
    wvkbd
    wtype
    obs-studio
    zed-editor
    telegram-desktop
    bitwarden-desktop
    bitwarden-cli
    ffmpegthumbnailer
    fuzzel
    iwgtk
    wlsunset
    wl-clipboard
    adwaita-icon-theme
    acpi
    grim
    slurp
    zathura
    gnome-themes-extra
    delta
    pwvucontrol
    wdisplays
    chafa
    font-awesome_6
    yt-dlp
    blueman
    slurp
    flatpak
    stylua
    boxbuddy
    ueberzugpp
    libnotify
    dragon-drop
    poppler
  ];
}
