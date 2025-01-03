local telescope_config = require "configs.telescope"

return {
  "nvim-telescope/telescope.nvim",
  cmd = { "Telescope" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  tag = "0.1.5",
  keys = telescope_config.keys,
  config = telescope_config.config,
}
