local oil_config = require "configs.oil"

return {
  "stevearc/oil.nvim",
  cmd = { "Oil" },
  keys = oil_config.mappings,
  config = oil_config.config,
}
