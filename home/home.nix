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

  xdg.configFile."xdg-desktop-portal-wlr/config".text = lib.generators.toINI { } {
    # 2021-05-24: See https://github.com/emersion/xdg-desktop-portal-wlr/issues/124
    screencast = {
      chooser_cmd = "fuzzel --dmenu --prompt='Select the target to share:'";
      chooser_type = "dmenu";
    };
  };

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

  gtk = {
    enable = true;
    colorScheme = "dark";
    gtk2.enable = false;
  };

  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface".color-scheme = "prefer-dark";
      "org/gnome/desktop/wm/preferences".button-layout = "minimize,maximize,close";
    };
  };

  # qt = {
  #   enable = false;
  #   style = "breeze";
  # };

  programs.zathura = {
    enable = true;

    options = {
      "selection-clipboard" = "clipboard";
    };
  };

  programs.mpv = {
    enable = true;
    scripts = with pkgs; [
      mpvScripts.mpris
      mpvScripts.thumbfast
      mpvScripts.mpv-playlistmanager
      # mpvScripts.simple-mpv-ui
      mpvScripts.uosc
    ];
    config = {
      osc = "no"; # uosc
      hwdec = "vaapi";
      gpu-context = "wayland";
      keep-open = "yes";
      force-window = "immediate";
      ao = "pipewire";
      alang = "eng";
      slang = "eng";
      sub-auto = "fuzzy";
      save-position-on-quit = "yes";
      screenshot-template = "%F - [%P]v%#01n";
      screenshot-format = "png";
      ytdl-raw-options = "sub-lang=en,write-auto-sub=";
      ytdl-format = "bestvideo[height<=720]+bestaudio";
      cache = "yes";
      demuxer-max-bytes = "1GiB";
    };
    bindings = {
      "ctrl+r" = ''cycle_values video-rotate "90" "180" "270" "0"'';
      "k" = ''script-message playlistmanager playlist-next'';
      "shift+k" = ''script-message playlistmanager playlist-prev'';
      ";" = ''script-message playlistmanager shuffle'';
    };
  };

  programs.yt-dlp = {
    enable = true;
    settings = {
      embed-thumbnail = true;
      embed-subs = true;
      downloader = "aria2c";
    };
  };

  programs.kitty = {
    #enable = true;
    enableGitIntegration = true;
    font = {
      name = "Hack";
      size = 13;
    };
    # settings = {
    #   shell = "${pkgs.fish}/bin/fish --interactive";
    # };
  };

  programs.alacritty = {
    #enable = true;
    theme = "kitty";
    # settings = {
    #   terminal.shell = {
    #     program = "${pkgs.fish}/bin/fish";
    #     args = [ "--interactive" ];
    #   };
    # };
  };

  programs.ghostty = {
    #enable = true;
    enableBashIntegration = true;
    settings = {
      theme = "Kitty Default";
      #command = "${pkgs.fish}/bin/fish --interactive";
    };
  };

  xdg.configFile."scroll/config" = {
    source = ../assets/scroll/config;
  };

  xdg.configFile."DankMaterialShell/default-settings.json".text = lib.generators.toJSON { } {
    acLockTimeout = 0;
    acMonitorTimeout = 0;
    acProfileName = "";
    acSuspendBehavior = 0;
    acSuspendTimeout = 0;
    animationSpeed = 0;
    appLauncherGridColumns = 4;
    appLauncherViewMode = "grid";
    audioInputDevicePins = { };
    audioOutputDevicePins = { };

    barConfigs = [
      {
        autoHide = false;
        autoHideDelay = 250;
        borderColor = "surfaceText";
        borderEnabled = false;
        borderOpacity = 1;
        borderThickness = 1;
        bottomGap = 0;

        centerWidgets = [
          "music"
          "clock"
          "weather"
        ];

        enabled = true;
        fontScale = 1;
        gothCornerRadiusOverride = false;
        gothCornerRadiusValue = 12;
        gothCornersEnabled = false;
        id = "default";
        innerPadding = -7;

        leftWidgets = [
          {
            enabled = true;
            id = "launcherButton";
          }
          {
            enabled = true;
            id = "workspaceSwitcher";
          }
          {
            enabled = true;
            id = "focusedWindow";
          }
        ];

        maximizeDetection = true;
        name = "Main Bar";
        noBackground = true;
        openOnOverview = false;
        popupGapsAuto = true;
        popupGapsManual = 4;
        position = 0;

        rightWidgets = [
          "systemTray"
          "clipboard"
          "cpuUsage"
          "memUsage"
          "notificationButton"
          {
            enabled = true;
            id = "battery";
          }
          "controlCenterButton"
        ];

        screenPreferences = [ "all" ];
        showOnLastDisplay = true;
        spacing = 0;
        squareCorners = true;
        transparency = 0.14;
        visible = true;
        widgetOutlineColor = "primary";
        widgetOutlineEnabled = false;
        widgetOutlineOpacity = 1;
        widgetOutlineThickness = 1;
        widgetTransparency = 0.25;
      }
    ];

    batteryLockTimeout = 0;
    batteryMonitorTimeout = 0;
    batteryProfileName = "";
    batterySuspendBehavior = 0;
    batterySuspendTimeout = 0;
    bluetoothDevicePins = { };
    blurWallpaperOnOverview = false;
    blurredWallpaperLayer = false;
    brightnessDevicePins = { };
    centeringMode = "index";
    clockCompactMode = false;
    clockDateFormat = "";
    configVersion = 2;

    controlCenterShowAudioIcon = true;
    controlCenterShowBatteryIcon = false;
    controlCenterShowBluetoothIcon = true;
    controlCenterShowBrightnessIcon = false;
    controlCenterShowMicIcon = false;
    controlCenterShowNetworkIcon = true;
    controlCenterShowPrinterIcon = false;
    controlCenterShowVpnIcon = true;

    controlCenterWidgets = [
      {
        enabled = true;
        id = "volumeSlider";
        width = 50;
      }
      {
        enabled = true;
        id = "brightnessSlider";
        width = 50;
      }
      {
        enabled = true;
        id = "wifi";
        width = 50;
      }
      {
        enabled = true;
        id = "bluetooth";
        width = 50;
      }
      {
        enabled = true;
        id = "audioOutput";
        width = 50;
      }
      {
        enabled = true;
        id = "audioInput";
        width = 50;
      }
      {
        enabled = true;
        id = "nightMode";
        width = 50;
      }
      {
        enabled = true;
        id = "darkMode";
        width = 50;
      }
      {
        enabled = true;
        id = "idleInhibitor";
        width = 50;
      }
      {
        enabled = true;
        id = "doNotDisturb";
        width = 50;
      }
      {
        enabled = true;
        id = "battery";
        width = 50;
      }
    ];

    cornerRadius = 12;
    currentThemeName = "cat-rosewater";
    customAnimationDuration = 500;

    customPowerActionHibernate = "";
    customPowerActionLock = "";
    customPowerActionLogout = "";
    customPowerActionPowerOff = "";
    customPowerActionReboot = "";
    customPowerActionSuspend = "";
    customThemeFile = "";

    displayNameMode = "system";
    dockAutoHide = true;
    dockBorderColor = "surfaceText";
    dockBorderEnabled = false;
    dockBorderOpacity = 1;
    dockBorderThickness = 1;
    dockBottomGap = 0;
    dockGroupByApp = false;
    dockIconSize = 40;
    dockIndicatorStyle = "line";
    dockMargin = 0;
    dockOpenOnOverview = false;
    dockPosition = 1;
    dockSpacing = 4;
    dockTransparency = 1;

    dwlShowAllTags = false;
    enableFprint = true;
    enabledGpuPciIds = [ ];
    fadeToLockEnabled = false;
    fadeToLockGracePeriod = 5;
    focusedWindowCompactMode = false;

    fontFamily = "Inter Variable";
    fontScale = 1;
    fontWeight = 400;

    gtkThemingEnabled = false;
    hideBrightnessSlider = false;
    iconTheme = "System Default";
    keyboardLayoutNameCompactMode = false;

    launchPrefix = "";
    launcherLogoBrightness = 0.5;
    launcherLogoColorInvertOnMode = false;
    launcherLogoColorOverride = "";
    launcherLogoContrast = 1;
    launcherLogoCustomPath = "";
    launcherLogoMode = "os";
    launcherLogoSizeOffset = -6;

    lockBeforeSuspend = false;
    lockDateFormat = "";
    lockScreenActiveMonitor = "all";
    lockScreenInactiveColor = "#000000";
    lockScreenShowPowerActions = true;
    loginctlLockIntegration = true;

    matugenScheme = "scheme-tonal-spot";
    matugenTargetMonitor = "";
    maxFprintTries = 3;
    maxWorkspaceIcons = 3;
    mediaSize = 1;

    modalDarkenBackground = true;
    monoFontFamily = "Fira Code";
    networkPreference = "auto";
    nightModeEnabled = false;
    niriOverviewOverlayEnabled = true;

    notepadFontFamily = "";
    notepadFontSize = 14;
    notepadLastCustomTransparency = 0.7;
    notepadShowLineNumbers = false;
    notepadTransparencyOverride = -1;
    notepadUseMonospace = true;

    notificationOverlayEnabled = false;
    notificationPopupPosition = 0;
    notificationTimeoutCritical = 0;
    notificationTimeoutLow = 5000;
    notificationTimeoutNormal = 5000;

    osdAlwaysShowValue = true;
    osdAudioOutputEnabled = true;
    osdBrightnessEnabled = true;
    osdCapsLockEnabled = true;
    osdIdleInhibitorEnabled = true;
    osdMediaVolumeEnabled = true;
    osdMicMuteEnabled = true;
    osdPosition = 0;
    osdPowerProfileEnabled = false;
    osdVolumeEnabled = true;

    popupTransparency = 1;
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
    preventIdleForMedia = false;

    privacyShowCameraIcon = false;
    privacyShowMicIcon = false;
    privacyShowScreenShareIcon = false;

    qtThemingEnabled = false;
    runUserMatugenTemplates = true;

    runningAppsCompactMode = true;
    runningAppsCurrentWorkspace = false;
    runningAppsGroupByApp = true;

    screenPreferences = {
      dock = [ "all" ];
      wallpaper = [ ];
    };

    scrollTitleEnabled = true;
    selectedGpuIndex = 0;

    showBattery = true;
    showCapsLockIndicator = true;
    showClipboard = true;
    showClock = true;
    showControlCenterButton = true;
    showCpuTemp = true;
    showCpuUsage = true;
    showDock = false;
    showFocusedWindow = true;
    showGpuTemp = true;
    showLauncherButton = true;
    showMemUsage = true;
    showMusic = true;
    showNotificationButton = true;
    showOccupiedWorkspacesOnly = false;

    showOnLastDisplay = {
      dock = true;
    };

    showPrivacyButton = true;
    showSeconds = false;
    showSystemTray = true;
    showWeather = true;
    showWorkspaceApps = false;
    showWorkspaceIndex = true;
    showWorkspacePadding = false;
    showWorkspaceSwitcher = true;

    sortAppsAlphabetically = false;

    soundNewNotification = true;
    soundPluggedIn = true;
    soundVolumeChanged = true;
    soundsEnabled = true;

    spotlightCloseNiriOverview = true;
    spotlightModalViewMode = "list";
    syncModeWithPortal = true;

    terminalsAlwaysDark = false;
    updaterCustomCommand = "";
    updaterTerminalAdditionalParams = "";
    updaterUseCustomCommand = false;

    use24HourClock = false;
    useAutoLocation = false;
    useFahrenheit = false;
    useSystemSoundTheme = false;

    vpnLastConnected = "";
    wallpaperFillMode = "Fill";
    waveProgressEnabled = true;

    weatherCoordinates = "52.3730796,4.8924534";
    weatherEnabled = true;
    weatherLocation = "Amsterdam, Noord-Holland";

    widgetBackgroundColor = "s";
    widgetColorMode = "default";

    wifiNetworkPins = { };
    workspaceNameIcons = { };
    workspaceScrolling = false;
    workspacesPerMonitor = true;
  };

  xdg.configFile."nvim" = {
    source = ../assets/nvim;
    recursive = true;
  };

  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
    initLua = ''
      require("starship"):setup()
      require("full-border"):setup()
    '';
    settings = {
      plugin = {
        prepend_fetchers = [
          {
            id = "mime";
            name = "*"; # use `url` if you're using the nightly version of Yazi
            run = "mime-ext";
            prio = "high";
          }
        ];
      };

      mgr = {
        ratio = [
          0
          2
          6
        ];
      };

      preview = {
        image_delay = 0;
        max_width = 10000;
        max_height = 10000;
      };

      opener = {
        play = [
          {
            run = ''umpv "$@"'';
            orphan = true;
            for = "unix";
          }
        ];
      };
    };
    plugins = {
      full-border = pkgs.yaziPlugins.full-border;
      mime-ext = pkgs.yaziPlugins.mime-ext;
      starship = pkgs.yaziPlugins.starship;
    };
  };

  programs.tealdeer = {
    enable = true;
    settings.updates.auto_update = true;
  };

  programs.bash = {
    enable = true;
    initExtra = ''
      if [[ $(${pkgs.procps}/bin/ps --no-header --pid=$PPID --format=comm) != "fish" && -z ''${BASH_EXECUTION_STRING} ]]
      then
        shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=""
        exec ${pkgs.fish}/bin/fish $LOGIN_OPTION
      fi

      if command -v starship >/dev/null; then
        eval "$(starship init bash)"
      fi
      if command -v atuin >/dev/null; then
        eval "$(atuin init bash)"
      fi
      if command -v zoxide >/dev/null; then
        eval "$(zoxide init bash)"
      fi
    '';
    profileExtra = ''
      export GOPATH="~/.local/share/gopath";
      export XDG_DATA_DIRS="$XDG_DATA_DIRS:/usr/share:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share"
      export PATH="$PATH:$GOPATH/bin"
      export PATH="$PATH:$HOME/.cargo/bin"
      export PATH="$PATH:$HOME/.local/bin"
      for d in "$HOME/.local/vbin"/*/; do PATH="$d:$PATH"; done; PATH="$HOME/.local/vbin:$PATH"

      if [[ -z $DISPLAY ]] && (($EUID != 0)) && [[ $(tty) = /dev/tty1 ]] && command -v scroll >/dev/null; then
        	export XDG_CURRENT_DESKTOP=scroll
        	export QT_QPA_PLATFORM=wayland
        	export _JAVA_AWT_WM_NONREPARENTING=1
        	export MOZ_ENABLE_WAYLAND=1
        	export GTK_USE_PORTAL=1
        	dbus-run-session scroll 2>&1 && exit
      fi
    '';
  };

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
      set -g fish_key_bindings fish_vi_key_bindings
      starship init fish | source
      atuin init fish | source
      zoxide init fish | source

      if type -q eza
        alias ls='eza --icons=auto --hyperlink'
      end

      if type -q batman
        alias man='batman'
      end

      if type -q flatpak
        abbr --add fin 'flatpak install flathub --user'
        abbr --add flathub 'flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo'
        abbr --add fun 'flatpak uninstall'
        abbr --add frun 'flatpak run --user'
        abbr --add fundelete 'flatpak uninstall --delete-data'
        abbr --add fclean 'flatpak uninstall --unused --delete-data'
        abbr --add fupdate 'flatpak update'
      end

      fish_add_path $HOME/.local/vbin/**/
      fish_add_path $GOPATH/bin
      fish_add_path $HOME/.cargo/bin
      fish_add_path $HOME/.local/bin

      if test -f /opt/homebrew/bin/brew
          /opt/homebrew/bin/brew shellenv | source
      end

      # Creates XDG dirs and Other Required Directories
      # if not present
      mkdir -p ~/.cache \
               ~/.config \
               ~/.xdgpath \
               ~/.xdgpath/pictures \
               ~/.xdgpath/pictures/wallpapers \
               ~/space \
               ~/space/downloads \
               ~/.local/sockets \
               ~/.xdgpath/desktop \
               ~/.xdgpath/documents \
               ~/.xdgpath/music \
               ~/.xdgpath/pictures \
               ~/.xdgpath/publicshare \
               ~/.xdgpath/templates \
               ~/.xdgpath/videos
    '';
    shellAliases = {
      v = "nvim";
      bvim = "nvim -u ~/.config/barevim/init.vim";
      diff = "diff --color=auto";
      grep = "grep --color=auto";
      ip = "ip -color=auto";
      g = "git";
      lg = "lazygit";
      ldo = "lazydocker";
      aget = "aria2c";
    };
    shellAbbrs = {
      chx = "chmod +x";
      lsa = "ls -a";
      lsta = "lst -a";
    };
    functions = {
      pastebin = ''curl -F "file=@-" https://0x0.st'';
      cl = ''cd $argv; and ls -a'';
      mkcd = ''mkdir -p $argv; and cd $argv'';
      run = ''setsid $argv &>/dev/null &'';
      getMime = ''file -b --mime-type $argv'';
      sshKeyGen = ''ssh-keygen -t ed25519 $argv'';
      # yazi integration
      n = ''
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
          builtin cd -- "$cwd"
        end
          rm -f -- "$tmp"
      '';
      lst = ''eza -T --icons=always --hyperlink --color=always $argv | bat --color=always --style=plain'';
      zl = "z $argv; and ls -a";
    };
    plugins = [
      {
        name = "fish-bd";
        src = pkgs.fishPlugins.fish-bd.src;
      }
      {
        name = "autopair";
        src = pkgs.fishPlugins.autopair.src;
      }
      {
        name = "fzf.fish";
        src = pkgs.fishPlugins.fzf-fish.src;
      }
    ];
  };

  programs.atuin = {
    enable = true;
    settings = {
      enter_accept = "false";
      style = "compact";
      auto_sync = "false";
      update_check = "false";
    };
  };

  # Several Scripts here
  home.file.".local/vbin" = {
    source = ../assets/vbin;
    recursive = true;
  };

  programs.fuzzel = {
    enable = true;

    settings = {
      main = {
        font = "Hack:size=13";
        show-actions = true;
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
        selection-match = "f38ba8ff";
        selection-text = "cdd6f4ff";
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
        #shell = "${pkgs.fish}/bin/fish --interactive";
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

  # home.packages = with pkgs; [
  #   claude-code
  #   claude-code-router
  # ];
  #
  # https://github.com/zed-industries/zed/discussions/39290
  # programs.claude-code = {
  #   # enable = true;
  #   settings = {
  #     "env" = {
  #       "ANTHROPIC_BASE_URL" = "http://localhost:3456";
  #       "ANTHROPIC_AUTH_TOKEN" = "dummy-key-for-router";
  #     };
  #   };
  # };

  programs.distrobox = {
    enable = true;
    settings = {
      container_always_pull = "1";
      container_manager = "docker";
      container_image_default = "ghcr.io/ublue-os/arch-toolbox";
    };
  };

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
    settings = {
      init = {
        defaultBranch = "main";
      };

      core = {
        pager = "delta";
      };

      help = {
        autoCorrect = "prompt";
      };
      interactive = {
        diffFilter = "delta --color-only";
      };

      delta = {
        navigate = "true"; # use n and N to move between diff sections
        side-by-side = "true";
        line-numbers = "true";
        features = "decorations";
      };

      merge = {
        conflictstyle = "diff3";
      };

      diff = {
        colorMoved = "default";
      };

      push = {
        autoSetupRemote = "true";
      };

      # Aliases
      alias = {
        br = "branch";
        ci = "commit";
        cia = "commit --amend";
        cl = "clone";
        co = "checkout";
        committers = "shortlog --summary --numbered";
        cp = "cherry-pick";
        di = "diff";
        ft = "fetch";
        yolo = ''!git commit -m "$(curl -s https://whatthecommit.com/index.txt)"'';
        h = "help";
        l = "log";
        log1 = "log --pretty=oneline";
        logs = "log --stat";
        logself = "!sh -c 'git log --author=$(git config user.email)'";
        logself1 = "!sh -c 'git log --author=$(git config user.email) --pretty=oneline'";
        logr = "log --graph --decorate --pretty=oneline --abbrev-commit";
        logra = "log --graph --decorate --pretty=oneline --abbrev-commit --all";
        ls = "ls-files";
        mb = "merge-base";
        originurl = "config --get remote.origin.url";
        pu = "push";
        pushall = "!git remote | xargs -L1 git push --all"; # Ref: https://stackoverflow.com/a/18674313
        pa = "pushall";
        pushfwl = "push --force-with-lease"; # Ref: https://stackoverflow.com/a/43726130/265508
        rb = "rebase";
        re = "restore";
        sha1head = ''!"git rev-parse HEAD | tee /dev/tty | tr -d '\n' | wl-copy"''; # sha1head = rev-parse HEAD
        st = "status";
        stashshow0 = "stash show -p stash@{0}";
        stat = "status";
        sub = "submodule";
        sw = "switch";
        # Show recent branches. Ref: https://news.ycombinator.com/item?id=32467957
        recent = "for-each-ref \
            --sort=-committerdate refs/heads/ \
            --format='%(HEAD) %(color:red)%(objectname:short)%(color:reset) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'";
      };

      # User Settings Below
      user = {
        email = "mailvarbhat@gmail.com";
        name = "varbhat";
        signingkey = "${config.home.homeDirectory}/.ssh/id_ed25519.pub";
      };

      core = {
        sshCommand = "ssh -i ${config.home.homeDirectory}/.ssh/id_ed25519";
      };

      gpg = {
        format = "ssh";
      };

      commit = {
        gpgSign = "true";
      };

      tag = {
        gpgSign = "true";
      };
    };
    includes = [
      {
        path = "~/space/work/.gitconfig";
        condition = "gitdir:~/space/work/";
      }
    ];
  };
}
