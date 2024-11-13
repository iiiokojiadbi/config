local lsp_config = require "configs.lsp"

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = true,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "prettier",
        "stylua",
        "eslint_d",
      },
    },
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      automatic_installation = true,
      ensure_installed = { "lua_ls", "ts_ls", "rust_analyzer" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "b0o/schemastore.nvim",
    },
    cmd = { "LspInfo", "LspInstall", "LspUninstall" },
    event = { "BufReadPost", "BufNewFile" },
    keys = lsp_config.mappings,
    config = lsp_config.config,
  },
}
