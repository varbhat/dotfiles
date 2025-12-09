{
  description = "vbt's nix config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };


    # scroll
    scroll-flake = {
      url = "github:AsahiRocks/scroll-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };


    dgop = {
      url = "github:AvengeMedia/dgop";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # dms
    dankMaterialShell = {
      url = "github:AvengeMedia/DankMaterialShell";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.dgop.follows = "dgop";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, ... }: {
    # NixOS Configuration Entrypoint
    # Available through:
    # nixos-rebuild --flake .#hostname
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./nixos/configuration.nix
          inputs.dankMaterialShell.nixosModules.dankMaterialShell
          inputs.scroll-flake.nixosModules.default
        ];
      };
    };

    # Standalone home-manager configuration entrypoint
    # Available through 'home-manager --flake .#your-username@your-hostname'
    homeConfigurations = {
      # FIXME replace with your username@hostname
      "vbt@nixos" = home-manager.lib.homeManagerConfiguration {
        # Home-manager requires 'pkgs' instance
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # FIXME replace x86_64-linux with your architecure 
        extraSpecialArgs = { inherit inputs; };
        modules = [
          ./home-manager/home.nix
          inputs.dankMaterialShell.homeModules.dankMaterialShell.default
        ];
        # > Our main home-manager configuration file <
      };
    };
  };
}
