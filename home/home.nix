# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  # TODO: Set your username
  home = {
    username = "vbt";
    homeDirectory = "/home/vbt";
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

  xdg = {
    portal = {
      enable = true;
      config = {
        scroll = {
          default = [ "gtk" ];
          "org.freedesktop.impl.portal.Screenshot" = [ "wlr" ];
          "org.freedesktop.impl.portal.ScreenCast" = [ "wlr" ];
          "org.freedesktop.impl.portal.Inhibit" = [ "none" ];
        };
      };
      extraPortals = with pkgs; [
        xdg-desktop-portal-wlr
        xdg-desktop-portal-gtk
      ];
    };
  };

  xdg.configFile."xdg-desktop-portal-wlr/config".text = ''
     # 2021-05-24: See https://github.com/emersion/xdg-desktop-portal-wlr/issues/124
    [screencast]
    chooser_cmd = fuzzel --dmenu --prompt='Select the target to share:'
    chooser_type = dmenu
  '';

  xdg.configFile."barevim/init.vim".text = ''
    syntax enable
    filetype indent on
    colorscheme wildcharm
    set autoindent
    set expandtab
    set number
    set hlsearch
    set incsearch
    set nobackup
    "set cursorline
    set clipboard=unnamedplus
    set tabstop=4
    set backspace=indent,eol,start
    set softtabstop=4
    set shiftwidth=4
    		'';

  xdg.configFile."gtk-3.0/settings.ini".text = ''
    [Settings]
    gtk-application-prefer-dark-theme=1
    		'';

  xdg.configFile."gtk-4.0/settings.ini".text = ''
    [Settings]
    gtk-application-prefer-dark-theme=1
    		'';

  xdg.configFile."MangoHud/MangoHud.conf".text = ''
    toggle_fps_limit=F1


    legacy_layout=false
    gpu_stats
    gpu_temp
    gpu_load_change
    gpu_load_value=50,90
    gpu_load_color=FFFFFF,FFAA7F,CC0000
    gpu_text=GPU
    cpu_stats
    cpu_temp
    cpu_load_change
    core_load_change
    cpu_load_value=50,90
    cpu_load_color=FFFFFF,FFAA7F,CC0000
    cpu_color=2e97cb
    cpu_text=CPU
    io_color=a491d3
    vram
    vram_color=ad64c1
    ram
    ram_color=c26693
    fps
    engine_color=eb5b5b
    gpu_color=2e9762
    wine_color=eb5b5b
    frame_timing=1
    frametime_color=00ff00
    media_player_color=ffffff
    table_columns=3
    no_display
    background_alpha=0.4
    font_size=24

    background_color=020202
    position=top-left
    text_color=ffffff
    round_corners=0
    #GOVERLAY_THEME=mangohuddefault
    toggle_hud=F4
    toggle_logging=Shift_L+F2
    upload_log=F5
    output_folder=/home/vbt
    media_player_name=spotify
  '';

  programs.zathura = {
    enable = true;

    options = {
      "selection-clipboard" = "clipboard";
    };
  };

  programs.mpv.enable = true;

  xdg.configFile."mpv/mpv.conf".text = ''
    hwdec=vaapi
    gpu-context=wayland
    keep-open=yes
    force-window=immediate
    ao=pipewire
    alang=eng
    slang=eng
    sub-auto=fuzzy
    screenshot-template="%F - [%P]v%#01n"
    screenshot-format=png
    ytdl-raw-options=sub-lang=en,write-auto-sub=
    ytdl-format=bestvideo[height<=720]+bestaudio
    cache=yes
    demuxer-max-bytes=1GiB
    		'';

  xdg.configFile."mpv/input.conf".text = ''
    ctrl+r cycle_values video-rotate "90" "180" "270" "0"
    k playlist-next
    shift+k playlist-prev
    		'';

  xdg.configFile."mpv/scripts/playlist-shuffle.lua".text = ''
    --[[
        shuffles the playlist and moves the currently playing file to the start of the playlist
        available at: https://github.com/CogentRedTester/mpv-scripts
    ]]
    --

    mp.add_key_binding(";", "playlist-shuffle", function()
    	mp.command("playlist-shuffle")
    	local pos = mp.get_property_number("playlist-pos")
    	mp.commandv("playlist-move", pos, 0)
    	mp.osd_message("playlist shuffled")
    end)
  '';

  xdg.configFile."kitty/kitty.conf".text = ''
    # vim:fileencoding=utf-8:foldmethod=marker

    # BEGIN_KITTY_FONTS
    font_family      family=Hack postscript_name=Hack-Regular
    font_size 13
    bold_font        auto
    italic_font      auto
    bold_italic_font auto
    # END_KITTY_FONTS
    		'';

  xdg.configFile."scroll/config" = {
    source = ../assets/scroll/config;
  };

  home.file.".zshenv".text = ''
    ZDOTDIR=$HOME/.config/zsh
  '';

  xdg.configFile."zsh" = {
    source = ../assets/zsh;
    recursive = true;
  };

  xdg.configFile."nvim" = {
    source = ../assets/nvim;
    recursive = true;
  };

  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
  };
  xdg.configFile."yazi" = {
    source = ../assets/yazi;
    recursive = true;
  };

  home.file.".local/vbin" = {
    source = ../assets/vbin;
    recursive = true;
  };

  programs.fuzzel = {
    enable = true;

    settings = {
      main = {
        font = "Hack:size=13";
        "show-actions" = true;
        width = 100;
      };

      border = {
        radius = 0;
      };

      colors = {
        background = "1e1e2edd";
        text = "cdd6f4ff";
        prompt = "bac2deff";
        placeholder = "7f849cff";
        input = "cdd6f4ff";
        match = "f38ba8ff";
        selection = "585b70ff";
        "selection-match" = "f38ba8ff";
        "selection-text" = "cdd6f4ff";
        counter = "7f849cff";
        border = "b4befeff";
      };
    };
  };

  programs.foot = {
    enable = true;
    #server.enable = true;

    settings = {
      main = {
        font = "Hack:size=13, Symbols Nerd Font:size=13, Noto Color Emoji:size=13";
      };

      key-bindings = {
        show-urls-launch = "Control+Shift+b";
      };

      colors = {
        cursor = "111111 cccccc";
        foreground = "dddddd";
        background = "000000";
        regular0 = "000000"; # black
        regular1 = "cc0403"; # red
        regular2 = "19cb00"; # green
        regular3 = "cecb00"; # yellow
        regular4 = "0d73cc"; # blue
        regular5 = "cb1ed1"; # magenta
        regular6 = "0dcdcd"; # cyan
        regular7 = "dddddd"; # white
        bright0 = "767676"; # bright black
        bright1 = "f2201f"; # bright red
        bright2 = "23fd00"; # bright green
        bright3 = "fffd00"; # bright yellow
        bright4 = "1a8fff"; # bright blue
        bright5 = "fd28ff"; # bright magenta
        bright6 = "14ffff"; # bright cyan
        bright7 = "ffffff"; # bright white
      };
    };
  };

  programs.kitty = {
    enable = true;
    font = {
      name = "Hack";
      size = 13;
    };
  };

  # Helix Text editor
  programs.helix = {
    enable = true;
    package = pkgs.evil-helix;
    settings = {
      theme = "monokai";
      keys.normal = {
        space.space = "file_picker";
        space.w = ":w";
        space.q = ":q";
        V = [
          "select_mode"
          "extend_to_line_bounds"
        ];
      };
    };
  };

  programs.zed-editor = {
    enable = true;
    extensions = [
      "nix"
      "golangci-lint"
      "catppuccin"
      "html"
    ];
    extraPackages = with pkgs; [
      nixd
    ];
    userSettings = {
      vim_mode = true;
      base_keymap = "JetBrains";
      theme = {
        mode = "system";
        light = "Catppuccin Latte";
        dark = "Catppuccin Mocha";
      };
    };
  };

  programs.distrobox = {
    enable = true;
    settings = {
      container_always_pull = "1";
      container_manager = "docker";
      container_image_default = "ghcr.io/ublue-os/arch-toolbox";
    };
  };

  # lf file manager
  programs.lf.enable = true;

  # Add stuff for your user as you see fit:
  # home.packages = with pkgs; [ steam ];

  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    withPython3 = true;
    withNodeJs = true;

    extraLuaPackages =
      lps: with lps; [
        luautf8
        jsregexp
      ];

    extraPackages = with pkgs; [
      clang
      curl
      delta
      fd
      git
      lazygit
      ripgrep
      wl-clipboard
      clang-tools
      nodePackages.bash-language-server
      tailwindcss-language-server
      lua-language-server
      stylua
      nixd
      nixfmt-rfc-style
      vscode-langservers-extracted
      gdb
      gopls
      gotools
      golangci-lint
      golangci-lint-langserver
      delve
      gomodifytags
      rust-analyzer
      svelte-language-server
      vtsls
      prettier
      basedpyright
      stylua
      shfmt
      ast-grep
      jq
      jq-lsp
      sqls
      taplo
      yaml-language-server
      docker-language-server
      docker-compose-language-service
      jdt-language-server
    ];
  };

  # Enable home-manager and git
  programs.home-manager.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.05";

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

  services.mpris-proxy.enable = true;

  programs.git = {
    enable = true;
  };

  xdg.configFile."git" = {
    source = ../assets/git;
    recursive = true;
  };

  programs.dank-material-shell = {
    enable = true;

    default.settings = {
      currentThemeName = "cat-rosewater";
      customThemeFile = "";
      matugenScheme = "scheme-tonal-spot";
      runUserMatugenTemplates = true;
      matugenTargetMonitor = "";
      popupTransparency = 1;
      dockTransparency = 1;
      widgetBackgroundColor = "s";
      widgetColorMode = "default";
      cornerRadius = 12;
      use24HourClock = false;
      showSeconds = false;
      useFahrenheit = false;
      nightModeEnabled = false;
      animationSpeed = 0;
      customAnimationDuration = 500;
      wallpaperFillMode = "Fill";
      blurredWallpaperLayer = false;
      blurWallpaperOnOverview = false;
      showLauncherButton = true;
      showWorkspaceSwitcher = true;
      showFocusedWindow = true;
      showWeather = true;
      showMusic = true;
      showClipboard = true;
      showCpuUsage = true;
      showMemUsage = true;
      showCpuTemp = true;
      showGpuTemp = true;
      selectedGpuIndex = 0;
      enabledGpuPciIds = [ ];
      showSystemTray = true;
      showClock = true;
      showNotificationButton = true;
      showBattery = true;
      showControlCenterButton = true;
      showCapsLockIndicator = true;
      controlCenterShowNetworkIcon = true;
      controlCenterShowBluetoothIcon = true;
      controlCenterShowAudioIcon = true;
      controlCenterShowVpnIcon = true;
      controlCenterShowBrightnessIcon = false;
      controlCenterShowMicIcon = false;
      controlCenterShowBatteryIcon = false;
      controlCenterShowPrinterIcon = false;
      showPrivacyButton = true;
      privacyShowMicIcon = false;
      privacyShowCameraIcon = false;
      privacyShowScreenShareIcon = false;

      controlCenterWidgets = [
        {
          id = "volumeSlider";
          enabled = true;
          width = 50;
        }
        {
          id = "brightnessSlider";
          enabled = true;
          width = 50;
        }
        {
          id = "wifi";
          enabled = true;
          width = 50;
        }
        {
          id = "bluetooth";
          enabled = true;
          width = 50;
        }
        {
          id = "audioOutput";
          enabled = true;
          width = 50;
        }
        {
          id = "audioInput";
          enabled = true;
          width = 50;
        }
        {
          id = "nightMode";
          enabled = true;
          width = 50;
        }
        {
          id = "darkMode";
          enabled = true;
          width = 50;
        }
        {
          id = "idleInhibitor";
          enabled = true;
          width = 50;
        }
        {
          id = "doNotDisturb";
          enabled = true;
          width = 50;
        }
        {
          id = "battery";
          enabled = true;
          width = 50;
        }
      ];

      showWorkspaceIndex = true;
      showWorkspacePadding = false;
      workspaceScrolling = false;
      showWorkspaceApps = false;
      maxWorkspaceIcons = 3;
      workspacesPerMonitor = true;
      showOccupiedWorkspacesOnly = false;
      dwlShowAllTags = false;
      workspaceNameIcons = { };

      waveProgressEnabled = true;
      scrollTitleEnabled = true;
      clockCompactMode = false;
      focusedWindowCompactMode = false;
      runningAppsCompactMode = true;
      keyboardLayoutNameCompactMode = false;
      runningAppsCurrentWorkspace = false;
      runningAppsGroupByApp = true;
      centeringMode = "index";
      clockDateFormat = "";
      lockDateFormat = "";
      mediaSize = 1;
      appLauncherViewMode = "grid";
      spotlightModalViewMode = "list";
      sortAppsAlphabetically = false;
      appLauncherGridColumns = 4;
      spotlightCloseNiriOverview = true;
      niriOverviewOverlayEnabled = true;

      weatherLocation = "Amsterdam, Noord-Holland";
      weatherCoordinates = "52.3730796,4.8924534";
      useAutoLocation = false;
      weatherEnabled = true;
      networkPreference = "auto";
      vpnLastConnected = "";
      iconTheme = "System Default";
      launcherLogoMode = "os";
      launcherLogoCustomPath = "";
      launcherLogoColorOverride = "";
      launcherLogoColorInvertOnMode = false;
      launcherLogoBrightness = 0.5;
      launcherLogoContrast = 1;
      launcherLogoSizeOffset = -6;

      fontFamily = "Inter Variable";
      monoFontFamily = "Fira Code";
      fontWeight = 400;
      fontScale = 1;
      notepadUseMonospace = true;
      notepadFontFamily = "";
      notepadFontSize = 14;
      notepadShowLineNumbers = false;
      notepadTransparencyOverride = -1;
      notepadLastCustomTransparency = 0.7;

      soundsEnabled = true;
      useSystemSoundTheme = false;
      soundNewNotification = true;
      soundVolumeChanged = true;
      soundPluggedIn = true;

      acMonitorTimeout = 0;
      acLockTimeout = 0;
      acSuspendTimeout = 0;
      acSuspendBehavior = 0;
      acProfileName = "";
      batteryMonitorTimeout = 0;
      batteryLockTimeout = 0;
      batterySuspendTimeout = 0;
      batterySuspendBehavior = 0;
      batteryProfileName = "";
      lockBeforeSuspend = false;
      preventIdleForMedia = false;
      loginctlLockIntegration = true;
      fadeToLockEnabled = false;
      fadeToLockGracePeriod = 5;
      launchPrefix = "";

      brightnessDevicePins = { };
      wifiNetworkPins = { };
      bluetoothDevicePins = { };
      audioInputDevicePins = { };
      audioOutputDevicePins = { };

      gtkThemingEnabled = false;
      qtThemingEnabled = false;
      syncModeWithPortal = true;
      terminalsAlwaysDark = false;

      showDock = false;
      dockAutoHide = true;
      dockGroupByApp = false;
      dockOpenOnOverview = false;
      dockPosition = 1;
      dockSpacing = 4;
      dockBottomGap = 0;
      dockMargin = 0;
      dockIconSize = 40;
      dockIndicatorStyle = "line";
      dockBorderEnabled = false;
      dockBorderColor = "surfaceText";
      dockBorderOpacity = 1;
      dockBorderThickness = 1;

      notificationOverlayEnabled = false;
      modalDarkenBackground = true;
      lockScreenShowPowerActions = true;
      enableFprint = true;
      maxFprintTries = 3;
      lockScreenActiveMonitor = "all";
      lockScreenInactiveColor = "#000000";

      hideBrightnessSlider = false;
      notificationTimeoutLow = 5000;
      notificationTimeoutNormal = 5000;
      notificationTimeoutCritical = 0;
      notificationPopupPosition = 0;

      osdAlwaysShowValue = true;
      osdPosition = 0;
      osdVolumeEnabled = true;
      osdMediaVolumeEnabled = true;
      osdBrightnessEnabled = true;
      osdIdleInhibitorEnabled = true;
      osdMicMuteEnabled = true;
      osdCapsLockEnabled = true;
      osdPowerProfileEnabled = false;
      osdAudioOutputEnabled = true;

      powerActionConfirm = true;
      powerActionHoldDuration = 0.5;
      powerMenuActions = [
        "reboot"
        "logout"
        "poweroff"
        "lock"
        "suspend"
        "restart"
      ];
      powerMenuDefaultAction = "logout";
      powerMenuGridLayout = true;

      customPowerActionLock = "";
      customPowerActionLogout = "";
      customPowerActionSuspend = "";
      customPowerActionHibernate = "";
      customPowerActionReboot = "";
      customPowerActionPowerOff = "";

      updaterUseCustomCommand = false;
      updaterCustomCommand = "";
      updaterTerminalAdditionalParams = "";

      displayNameMode = "system";

      screenPreferences = {
        wallpaper = [ ];
        dock = [ "all" ];
      };

      showOnLastDisplay = {
        dock = true;
      };

      barConfigs = [
        {
          id = "default";
          name = "Main Bar";
          enabled = true;
          position = 0;
          screenPreferences = [ "all" ];
          showOnLastDisplay = true;

          leftWidgets = [
            {
              id = "launcherButton";
              enabled = true;
            }
            {
              id = "workspaceSwitcher";
              enabled = true;
            }
            {
              id = "focusedWindow";
              enabled = true;
            }
          ];

          centerWidgets = [
            "music"
            "clock"
            "weather"
          ];

          rightWidgets = [
            "systemTray"
            "clipboard"
            "cpuUsage"
            "memUsage"
            "notificationButton"
            {
              id = "battery";
              enabled = true;
            }
            "controlCenterButton"
          ];

          spacing = 0;
          innerPadding = -7;
          bottomGap = 0;
          transparency = 0.14;
          widgetTransparency = 0.25;
          squareCorners = true;
          noBackground = true;

          gothCornersEnabled = false;
          gothCornerRadiusOverride = false;
          gothCornerRadiusValue = 12;

          borderEnabled = false;
          borderColor = "surfaceText";
          borderOpacity = 1;
          borderThickness = 1;

          widgetOutlineEnabled = false;
          widgetOutlineColor = "primary";
          widgetOutlineOpacity = 1;
          widgetOutlineThickness = 1;

          fontScale = 1;
          autoHide = false;
          autoHideDelay = 250;
          openOnOverview = false;
          visible = true;
          popupGapsAuto = true;
          popupGapsManual = 4;
          maximizeDetection = true;
        }
      ];

      configVersion = 2;

    };

    default.session = {
      # Session state defaults
    };
  };

}
