{ config
, pkgs
, ...
}:

{
  imports = [
  ];

  environment.variables = {
    RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
  };
}
