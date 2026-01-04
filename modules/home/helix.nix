{ config
, pkgs
, ...
}:

{
  imports = [
  ];

  # Helix Text editor
  programs.helix = {
    enable = true;
    package = pkgs.evil-helix;
    settings = {
      theme = "monokai";
      keys.normal = {
        space.space = "file_picker";
        space.w = ":w";
        space.q = ":q";
        V = [
          "select_mode"
          "extend_to_line_bounds"
        ];
      };
    };
  };
}
