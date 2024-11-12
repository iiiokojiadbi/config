local catppuccin_config = require "configs.catppuccin"

return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = catppuccin_config.config,
}
