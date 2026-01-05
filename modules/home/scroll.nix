{ config
, pkgs
, lib
, ...
}:

{
  imports = [
  ];

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

  xdg.configFile."scroll/config" = {
    source = ../../assets/scroll/config;
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

  services.mpris-proxy.enable = true;

  home.packages = with pkgs; [
    waypipe
    wl-mirror
    wayvnc
    wvkbd
    wtype
    fuzzel
    # iwgtk
    wl-clipboard
    grim
    slurp
    pwvucontrol
    wdisplays
    blueman
  ];
}
