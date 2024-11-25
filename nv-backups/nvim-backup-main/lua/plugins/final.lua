local conf_path = vim.fn.stdpath "config"

return {
  name = "options",
  event = "VeryLazy",
  dir = conf_path,
  config = function()
    require("vim.options").final()
    require("vim.mappings").general()
    require("vim.modules").autocmds()
  end,
}
