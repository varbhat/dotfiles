{ ...
}:

{
  imports = [
  ];
  networking.hostName = "ryze"; # hostname of ryze
  boot.initrd.availableKernelModules = [ "amdgpu" ];
}
