{ config
, pkgs
, ...
}:

{
  imports = [
  ];

  programs.vscode = {
    enable = true;
    package = pkgs.vscodium-fhs; # code-cursor-fhs
    profiles.default.extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      jgclark.vscode-todo-highlight
      ms-python.vscode-pylance
      rust-lang.rust-analyzer
      golang.go
      humao.rest-client
      ms-vscode.live-server
      usernamehw.errorlens
      saoudrizwan.claude-dev # Cline
    ];
  };

  home.packages = with pkgs; [
    #code-cursor-fhs
  ];
}
