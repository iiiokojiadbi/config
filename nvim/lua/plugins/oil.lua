local oil_config = require "configs.oil"

return {
  "stevearc/oil.nvim",
  event = "VimEnter",
  keys = oil_config.mappings,
  config = oil_config.config,
}
