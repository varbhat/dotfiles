{ config
, pkgs
, ...
}:

{
  imports = [
  ];

  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
    initLua = ''
      require("starship"):setup()
      require("full-border"):setup()
    '';
    settings = {
      plugin = {
        prepend_fetchers = [
          {
            id = "mime";
            name = "*"; # use `url` if you're using the nightly version of Yazi
            run = "mime-ext";
            prio = "high";
          }
        ];
      };

      mgr = {
        ratio = [
          0
          2
          6
        ];
      };

      preview = {
        image_delay = 0;
        max_width = 10000;
        max_height = 10000;
      };

      opener = {
        play = [
          {
            run = ''umpv "$@"'';
            orphan = true;
            for = "unix";
          }
        ];
      };

      # tasks = {
      #   # Increase bound limits for Image Preview
      #   image_bound = [
      #     50000
      #     50000
      #   ];
      # };
    };
    plugins = {
      full-border = pkgs.yaziPlugins.full-border;
      mime-ext = pkgs.yaziPlugins.mime-ext;
      starship = pkgs.yaziPlugins.starship;
    };
  };
}
