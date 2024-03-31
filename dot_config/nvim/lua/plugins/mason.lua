return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Golang
        "gopls",
        "goimports",
        "golangci-lint",
        "go-debug-adapter",
        "delve",
        "gomodifytags",

        -- Rust
        "rust-analyzer",

        -- Web
        "biome",
        "typescript-language-server",
        "svelte-language-server",
        "tailwindcss-language-server",

        -- Python
        -- "ruff",
        --"ruff-lsp",
        --"pylyzer",
        "pyright",

        -- Clang Tools
        "clangd",
        "codelldb",
        "clang-format",

        -- Misc
        "stylua",
        "shfmt",
      },
    },
  },
}
