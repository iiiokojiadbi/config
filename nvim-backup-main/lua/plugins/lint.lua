local lint_config = require "configs.lint"

return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPost", "BufNewFile" },
  config = lint_config.config,
}
