{ config
, pkgs
, ...
}:

{
  imports = [
  ];

  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    withPython3 = true;
    withNodeJs = true;

    extraLuaPackages =
      lps: with lps; [
        luautf8
        jsregexp
      ];

    extraPackages = with pkgs; [
      clang
      curl
      delta
      fd
      git
      lazygit
      ripgrep
      wl-clipboard
      clang-tools
      nodePackages.bash-language-server
      tailwindcss-language-server
      lua-language-server
      stylua
      nixd
      nixfmt-rfc-style
      nixpkgs-fmt
      vscode-langservers-extracted
      gdb
      gopls
      gotools
      golangci-lint
      golangci-lint-langserver
      delve
      gomodifytags
      rust-analyzer
      svelte-language-server
      vtsls
      prettier
      basedpyright
      stylua
      shfmt
      ast-grep
      jq
      jq-lsp
      sqls
      taplo
      yaml-language-server
      docker-language-server
      docker-compose-language-service
      jdt-language-server
    ];
  };

  xdg.configFile."nvim" = {
    source = ../../assets/nvim;
    recursive = true;
  };

  xdg.configFile."barevim/init.vim".text = ''
    syntax enable
    filetype indent on
    colorscheme wildcharm
    set autoindent
    set expandtab
    set number
    set hlsearch
    set incsearch
    set nobackup
    "set cursorline
    set clipboard=unnamedplus
    set tabstop=4
    set backspace=indent,eol,start
    set softtabstop=4
    set shiftwidth=4
    		'';
}
