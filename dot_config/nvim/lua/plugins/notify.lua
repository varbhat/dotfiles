return {
  -- notify customization
  {
    "rcarriga/nvim-notify",
    opts = {
      stages = "fade_in_slide_out",
      timeout = 3000,
      render = "compact",
      top_down = false,
    },
  },

  {
    "nvimdev/dashboard-nvim",
    opts = {
      config = {
        header = vim.split("", "\n"),
      },
    },
  },
}
