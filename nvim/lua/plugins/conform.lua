local conform_config = require "configs.conform"

return {
  "stevearc/conform.nvim",
  event = { "BufReadPost", "BufNewFile" },
  config = conform_config.config,
}
