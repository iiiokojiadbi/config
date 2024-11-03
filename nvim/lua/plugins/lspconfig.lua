return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "b0o/schemastore.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    require "configs.lspconfig"
  end,
}
