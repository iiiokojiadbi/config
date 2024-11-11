local treesitter_config = require "configs.treesitter"

return {
  "nvim-treesitter/nvim-treesitter",
  cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
  build = ":TSUpdate",
  event = {
    "BufReadPost",
    "BufNewFile",
  },
  config = treesitter_config.config,
}
