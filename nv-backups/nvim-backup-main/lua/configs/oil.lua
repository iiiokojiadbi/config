local map = require("vim.modules").map

local M = {}

M.mappings = function()
  map({ "n" }, "<leader>E", function()
    require("oil").toggle_float()
  end)
end

M.config = function()
  require("oil").setup {
    default_file_explorer = false,
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,
    view_options = {
      show_hidden = true,
      natural_order = true,
      is_always_hidden = function(name, _)
        return name == ".." or name == ".git"
      end,
    },
    float = {
      padding = 2,
      max_width = 150,
      max_height = 0,
    },
    win_options = {
      wrap = true,
      winblend = 0,
    },
    keymaps = {
      ["<C-c>"] = false,
      ["q"] = "actions.close",
    },
  }
end

return M
