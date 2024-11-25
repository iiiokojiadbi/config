return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "b0o/schemastore.nvim",
  },
  config = function()
    require "configs.lspconfig"
  end,
}
