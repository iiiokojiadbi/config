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
      ensure_installed = { "lua_ls" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    cmd = { "LspInfo", "LspInstall", "LspUninstall" },
    event = { "BufReadPost", "BufNewFile" },
    keys = function()
      lsp_config.mappings()
    end,
    config = lsp_config.config,
  },
}
