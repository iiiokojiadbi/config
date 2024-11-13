local zen_mode = require "configs.zen-mode"

return {
  "folke/zen-mode.nvim",
  cmd = { "ZenMode" },
  keys = zen_mode.mappings,
  opts = {},
}
