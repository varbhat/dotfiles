{
  config,
  pkgs,
  ...
}:

{
  imports = [
  ];

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
      "libvirtd"
    ];
    packages = with pkgs; [
    ];
  };

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
}
