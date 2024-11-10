local telescope_config = require("configs.telescope")

return {
  "nvim-telescope/telescope.nvim",
  name = "telescope",
  event = "VeryLazy",
  dependencies = {
    'nvim-lua/plenary.nvim',
    "nvim-telescope/telescope-ui-select.nvim",
  },
  tag = "0.1.5",
  opts = telescope_config.opts,
  config = telescope_config.config
}
