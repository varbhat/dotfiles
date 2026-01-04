{ config
, pkgs
, ...
}:

{
  imports = [
  ];

  programs.fuzzel = {
    enable = true;

    settings = {
      main = {
        font = "Hack:size=13";
        show-actions = true;
        width = 100;
      };

      border = {
        radius = 0;
      };

      colors = {
        background = "1e1e2edd";
        text = "cdd6f4ff";
        prompt = "bac2deff";
        placeholder = "7f849cff";
        input = "cdd6f4ff";
        match = "f38ba8ff";
        selection = "585b70ff";
        selection-match = "f38ba8ff";
        selection-text = "cdd6f4ff";
        counter = "7f849cff";
        border = "b4befeff";
      };
    };
  };
}
