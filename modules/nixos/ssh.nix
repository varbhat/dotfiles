{ config
, pkgs
, ...
}:

{
  imports = [
  ];

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
}
