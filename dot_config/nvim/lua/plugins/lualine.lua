return {
  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      --      local icons = require("lazyvim.config").icons

      --   opts.options.disabled_filetypes.winbar = { "alpha", "dashboard", "neo-tree", "neo-tree-popup" }
      opts.options.section_separators = { left = "", right = "" }
      --   opts.sections.lualine_c = {
      --     {
      --       "diagnostics",
      --       symbols = {
      --         error = icons.diagnostics.Error,
      --         warn = icons.diagnostics.Warn,
      --         info = icons.diagnostics.Info,
      --         hint = icons.diagnostics.Hint,
      --       },
      --     },
      --     { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
      --     { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
      --     {
      --       -- limit to 180 chars
      --       function()
      --         local blame_text = require("gitblame").get_current_blame_text()
      --         if blame_text:len() > 180 then
      --           blame_text = blame_text:sub(1, 180) .. "..."
      --         end
      --         return blame_text
      --       end,
      --       cond = require("gitblame").is_blame_text_available,
      --     },
      --   }
      --   table.insert(opts.sections.lualine_x, {
      --     function()
      --       return require("util.dashboard").status()
      --     end,
      --   })
      --   table.insert(opts.sections.lualine_x, {
      --     function()
      --       local buf_clients = vim.lsp.get_clients({ bufnr = 0 })
      --       if #buf_clients == 0 then
      --         return "LSP Inactive"
      --       end

      --       local formatters = require("conform").list_formatters(0)

      --       local buf_client_names = {}
      --       local buf_formatters = {}

      --       for _, client in pairs(buf_clients) do
      --         if client.name ~= "copilot" then
      --           table.insert(buf_client_names, client.name)
      --         end
      --       end

      --       for _, client in pairs(formatters) do
      --         table.insert(buf_formatters, client.name)
      --       end

      --       vim.list_extend(buf_client_names, buf_formatters)

      --       if #buf_client_names == 0 then
      --         return "LSP Inactive"
      --       end

      --       local unique_client_names = table.concat(buf_client_names, ", ")
      --       local language_servers = string.format("[%s]", unique_client_names)

      --       return language_servers
      --     end,
      --     color = { gui = "bold" },
      --     -- cond = conditions.hide_in_width,
      --   })
      opts.sections.lualine_z = {
        function()
          return ""
          --return " " .. os.date("%I:%M %p")
        end,
      }
    end,
  },
}

