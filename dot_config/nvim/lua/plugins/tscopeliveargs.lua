return {
  {
    "nvim-telescope/telescope-live-grep-args.nvim",
    config = function()
      LazyVim.on_load("telescope.nvim", function()
        require("telescope").load_extension("live_grep_args")
      end)
    end,
    keys = {
      {
        "<leader>sL",
        function()
          require("telescope").extensions.live_grep_args.live_grep_args({})
        end,
        desc = "Live Grep Args",
      },
    },
  },
}
