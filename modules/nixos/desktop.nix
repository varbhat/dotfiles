{ config
, pkgs
, inputs
, ...
}:

{
  imports = [
  ];

  # Greeter
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

  hardware.graphics = {
    enable = true;
  };

  programs.scroll = {
    enable = true;
    package = inputs.scroll-flake.packages.${pkgs.stdenv.hostPlatform.system}.scroll-git;
  };

  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      hack-font
      nerd-fonts.symbols-only
      nerd-fonts.hack
      font-awesome_6
      inter
    ];
    fontconfig.defaultFonts = {
      serif = [ "Noto Serif" ];
      sansSerif = [ "Noto Sans" ];
      monospace = [ "Hack" ];
    };
  };

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

}
