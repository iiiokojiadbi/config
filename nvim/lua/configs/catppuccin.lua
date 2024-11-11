local M = {}

M.config = function()
  require("catppuccin").setup {
    flavour = "mocha",
    transparent_background = true,
  }

  vim.cmd.colorscheme "catppuccin-mocha"
end

return M
