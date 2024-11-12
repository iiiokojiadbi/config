local treesitter_config = require "configs.treesitter"

return {
  {
    "nvim-treesitter/nvim-treesitter",
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = treesitter_config.config,
  },
  {
    "windwp/nvim-ts-autotag",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "folke/ts-comments.nvim",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("ts-comments").setup()
    end,
  },
}
