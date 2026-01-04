{ config
, pkgs
, ...
}:

{
  imports = [
  ];

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
}
