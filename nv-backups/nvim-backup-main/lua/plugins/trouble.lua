local trouble_config = require "configs.trouble"

return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "Trouble", "Telescope", "TodoQuickFix", "TodoLocList", "TodoTelescope" },
    keys = trouble_config.todo_keys,
    opts = {},
  },
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    keys = trouble_config.trouble_keys,
    opts = {}, -- for default options, refer to the configuration section for custom setup.
  },
}
