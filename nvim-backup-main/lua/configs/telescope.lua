local map = require("vim.modules").telescope_lazy_action

local M = {}

M.keys = {
  map("<leader>", "oldfiles", "telescope поиск по недавно открытым"),
  map("fz", "current_buffer_fuzzy_find", "telescope поиск по текущему буферу"),
  map("ff", "find_files", "telescope поиск по файлам"),
  map("fb", "buffers", "telescope поиск по буферам"),
  map("fw", "live_grep", "telescope поиск по слову"),
  map("fgc", "git_commits", "telescope git commits"),
  map("fgC", "git_bcommits", "telescope git b commits"),
  map("fgs", "git_status", "telescope git status"),
  map("fgS", "git_stash", "telescope git stash"),
  map("fm", "marks", "telescope поиск по меткам"),
  map("fh", "help_tags", "telescope поиск по документации и помощи"),
  map("fa", "find_files", "telescope поиск по файлам", {
    follow = true,
    no_ignore = true,
    hidden = true,
  }),
}

M.config = function()
  require("telescope").setup {
    defaults = {
      mappings = {
        n = {
          ["d"] = "delete_buffer",
          ["q"] = "close",
        },
      },
    },
    pickers = {
      find_files = {
        hidden = true,
        theme = "ivy",
      },
    },
  }

  -- map({"n"}, "<leader>sk", builtin.keymaps,  "[S]earch [K]eymaps" )
  -- map({"n"}, "<leader>ss", builtin.builtin,  "[S]earch [S]elect Telescope" )
  -- map({"n"}, "<leader>sw", builtin.grep_string,  "[S]earch current [W]ord" )
  -- map({"n"}, "<leader>sd", builtin.diagnostics,  "[S]earch [D]iagnostics" )
  -- map({"n"}, "<leader>sr", builtin.resume,  "[S]earch [R]esume" )

  -- require("telescope").load_extension "ui-select"
end

return M
