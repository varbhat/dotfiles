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
  };

  outputs =
    inputs@{ self
    , nixpkgs
    , home-manager
    , ...
    }:
    {
      nixosConfigurations = {
        # nh os switch . -H ryze
        # sudo nixos-rebuild switch --flake '.#ryze'
        ryze = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ./hardware/ryze.nix
            ./host/ryze.nix
            ./nixos/configuration.nix
            inputs.scroll-flake.nixosModules.default
          ];
        };

        # nh os switch . -H frame
        # sudo nixos-rebuild switch --flake '.#frame'
        frame = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ./hardware/framework13.nix
            ./host/framework13.nix
            ./nixos/configuration.nix
            inputs.scroll-flake.nixosModules.default
          ];
        };
      };

      homeConfigurations = {
        # nh home switch . -c 'vbt@ryze'
        # home-manager switch --flake '.#vbt@ryze'
        "vbt@ryze" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs; };
          modules = [
            ./home/home.nix
          ];
        };

        # nh home switch . -c 'vbt@frame'
        # home-manager switch --flake '.#vbt@frame'
        "vbt@frame" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs; };
          modules = [
            ./home/home.nix
          ];
        };
      };
    };
}
