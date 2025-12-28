{ ...
}:

{
  imports = [
  ];
  networking.hostName = "frame"; # hostname of framework13
  boot.initrd.availableKernelModules = [ "amdgpu" ];
}
