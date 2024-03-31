return {
  {
    "jvgrootveld/telescope-zoxide",
    config = function()
      LazyVim.on_load("telescope.nvim", function()
        require("telescope").load_extension("zoxide")
      end)
    end,
    keys = {
      {
        "<leader>zz",
        function()
          require("telescope").extensions.zoxide.list({})
        end,
        desc = "Zoxide",
      },
    },
  },
}
