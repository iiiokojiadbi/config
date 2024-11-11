local mini_config = require "configs.mini"

return {
  "echasnovski/mini.nvim",
  version = false,
  ----
  init = function()
    -- ?? выглядит как перезапись одних иконок на другие
    ---@diagnostic disable-next-line: duplicate-set-field
    package.preload["nvim-web-devicons"] = function()
      package.loaded["nvim-web-devicons"] = {}
      require("mini.icons").mock_nvim_web_devicons()
      return package.loaded["nvim-web-devicons"]
    end
  end,
  event = "VimEnter",
  keys = mini_config.mappings,
  config = mini_config.config,
}
