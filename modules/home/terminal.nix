{
  config,
  pkgs,
  ...
}:

{
  imports = [
  ];

  programs.kitty = {
    #enable = true;
    enableGitIntegration = true;
    font = {
      name = "Hack";
      size = 13;
    };
    # settings = {
    #   shell = "${pkgs.fish}/bin/fish --interactive";
    # };
  };

  programs.alacritty = {
    #enable = true;
    theme = "kitty";
    # settings = {
    #   terminal.shell = {
    #     program = "${pkgs.fish}/bin/fish";
    #     args = [ "--interactive" ];
    #   };
    # };
  };

  programs.ghostty = {
    #enable = true;
    enableBashIntegration = true;
    settings = {
      theme = "Kitty Default";
      #command = "${pkgs.fish}/bin/fish --interactive";
    };
  };

  programs.foot = {
    enable = true;
    server.enable = true;

    settings = {
      main = {
        font = "Hack:size=13, Symbols Nerd Font:size=13, Noto Color Emoji:size=13";
        #shell = "${pkgs.fish}/bin/fish --interactive";
      };

      key-bindings = {
        show-urls-launch = "Control+Shift+b";
      };

      colors = {
        cursor = "111111 cccccc";
        foreground = "dddddd";
        background = "000000";
        regular0 = "000000"; # black
        regular1 = "cc0403"; # red
        regular2 = "19cb00"; # green
        regular3 = "cecb00"; # yellow
        regular4 = "0d73cc"; # blue
        regular5 = "cb1ed1"; # magenta
        regular6 = "0dcdcd"; # cyan
        regular7 = "dddddd"; # white
        bright0 = "767676"; # bright black
        bright1 = "f2201f"; # bright red
        bright2 = "23fd00"; # bright green
        bright3 = "fffd00"; # bright yellow
        bright4 = "1a8fff"; # bright blue
        bright5 = "fd28ff"; # bright magenta
        bright6 = "14ffff"; # bright cyan
        bright7 = "ffffff"; # bright white
      };
    };
  };
}
