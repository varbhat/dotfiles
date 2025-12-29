# Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [ ];

  # systemd-boot: Bootloader
  boot = {
    loader = {
      systemd-boot = {
        enable = true;
      };
      efi = {
        canTouchEfiVariables = true;
      };
    };
  };

  # Silent Boot and Plymouth
  boot = {
    plymouth = {
      enable = true;
    };
    # Enable "Silent boot"
    consoleLogLevel = 3;
    initrd.verbose = false;
    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "udev.log_priority=3"
      "rd.systemd.show_status=auto"
    ];
    # Hide the OS choice for bootloaders.
    # It's still possible to open the bootloader list by pressing any key
    # It will just not appear on screen unless a key is pressed
    loader.timeout = 0;
  };

  # Use latest Linux kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Enable i2c
  hardware.i2c.enable = true;

  # Enable wireless networking using iwd
  networking = {
    wireless = {
      iwd = {
        enable = true;
        settings = {
          Network = {
            EnableIPv6 = true;
          };
          Settings = {
            AutoConnect = true;
          };
        };
      };
    };
  };

  hardware.bluetooth.enable = true;

  # Set your time zone.
  #time.timeZone = "Europe/Amsterdam";
  time.timeZone = "Asia/Kolkata";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  console.keyMap = "dvorak";

  # Enable fwupd for firmware updates
  services.fwupd.enable = true;

  # SSD FSTRIM
  services.fstrim.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  users.users.vbt = {
    isNormalUser = true;
    description = "vbt";
    initialPassword = "password"; # Change it after creation
    shell = pkgs.bash;
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
      "audio"
      "input"
      "video"
      "systemd-journal"
      "network"
      "i2c"
    ];
    packages = with pkgs; [
    ];
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = ''${pkgs.tuigreet}/bin/tuigreet --time --cmd "bash --login"'';
        user = "greeter";
      };
    };
  };

  # this is a life saver.
  # literally no documentation about this anywhere.
  # might be good to write about this...
  # https://www.reddit.com/r/NixOS/comments/u0cdpi/tuigreet_with_xmonad_how/
  systemd.services.greetd.serviceConfig = {
    Type = "idle";
    StandardInput = "tty";
    StandardOutput = "tty";
    StandardError = "journal"; # Without this errors will spam on screen
    # Without these bootlogs will spam on screen
    TTYReset = true;
    TTYVHangup = true;
    TTYVTDisallocate = true;
  };

  programs.nix-ld.enable = true;

  nix.settings.trusted-users = [
    "root"
    "vbt"
  ];

  security.sudo.extraRules = [
    {
      users = [ "vbt" ];
      commands = [
        {
          command = "ALL";
          options = [ "NOPASSWD" ];
        }
      ];
    }
  ];

  # Install firefox.
  programs.firefox.enable = true;

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
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
  ];

  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      hack-font
      nerd-fonts.symbols-only
      nerd-fonts.hack
    ];
    fontconfig.defaultFonts = {
      serif = [ "Noto Serif" ];
      sansSerif = [ "Noto Sans" ];
      monospace = [ "Hack" ];
    };
  };

  environment.variables = {
    RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
  };

  programs.fish = {
    enable = true;
    vendor = {
      completions.enable = true;
      config.enable = true;
      functions.enable = true;
    };
  };

  programs.scroll = {
    enable = true;
    package = inputs.scroll-flake.packages.${pkgs.stdenv.hostPlatform.system}.scroll-git;
  };

  services.flatpak.enable = true;

  programs.dms-shell = {
    enable = true;

    systemd = {
      enable = true; # Systemd service for auto-start
      restartIfChanged = true; # Auto-restart dms.service when dankMaterialShell changes
    };

    # Core features
    enableSystemMonitoring = true; # System monitoring widgets (dgop)
    enableVPN = true; # VPN management widget
    enableDynamicTheming = true; # Wallpaper-based theming (matugen)
    enableAudioWavelength = true; # Audio visualizer (cava)
    enableCalendarEvents = true; # Calendar integration (khal)
  };

  virtualisation.docker.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  services.fprintd.enable = true;

  #services.tlp.enable = true;
  services.power-profiles-daemon.enable = true;
  services.upower.enable = true;

  nix.optimise.automatic = true;
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 10d";
  };

  #xdg.portal.enable = true;
  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?

}
