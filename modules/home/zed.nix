{ config
, pkgs
, ...
}:

{
  imports = [
  ];

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
}
