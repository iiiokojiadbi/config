local map = require("vim.modules").map

local M = {}

M.icons = {}
M.pairs = {}

M.pick = {
  options = {
    use_cache = true,
  },
}

M.files = {
  use_as_default_explorer = true,
  windows = {
    max_number = math.huge,
    preview = false,
    width_focus = 30,
    width_nofocus = 20,
    width_preview = 25,
  },
}

M.config = function(_, opts)
  local mini_config = require "configs.mini"
  local mini_modules = {
    "icons",
    "files",
    "pairs",
    "pick",
  }
  for _, module in ipairs(mini_modules) do
    require("mini." .. module).setup(mini_config[module])
  end
end

M.mappings = function(_, opts)
  map({ "n" }, "<leader>e", function()
    local _ = require("mini.files").close() or require("mini.files").open()
  end, "mini показать/закрыть файловый менеджер")
end

return M
