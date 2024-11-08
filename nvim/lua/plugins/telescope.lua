return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
    event = "VeryLazy",
  },
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    tag = "0.1.5",
    config = function()
      require("telescope").setup {
        defaults = {
          mappings = {
            n = {
              ["d"] = require("telescope.actions").delete_buffer,
              ["q"] = require("telescope.actions").close,
            },
          },
        },
        pickers = {
          find_files = {
            hidden = true,
            theme = "ivy",
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {},
          },
        },
      }
      local builtin = require "telescope.builtin"
      vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, { desc = "telescope поиск по недавно открытым" })
      -- vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
      -- vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
      -- vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
      -- vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
      -- vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
      vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "telescope поиск по слову" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "telescope поиск по буферам" })
      vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = "telescope поиск по меткам" })
      vim.keymap.set("n", "<leader>fgc", builtin.git_commits, { desc = "telescope git commits" })
      vim.keymap.set("n", "<leader>fgC", builtin.git_bcommits, { desc = "telescope git b commits" })
      vim.keymap.set("n", "<leader>fgs", builtin.git_status, { desc = "telescope git status" })
      vim.keymap.set("n", "<leader>fgS", builtin.git_stash, { desc = "telescope git stash" })
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "telescope поиск по файлам" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "telescope поиск по документации и помощи" })
      vim.keymap.set("n", "<leader>fz", builtin.current_buffer_fuzzy_find, { desc = "telescope поиск по текущему буферу" })

      vim.keymap.set("n", "<leader>fa", function()
        builtin.find_files {
          follow = true,
          no_ignore = true,
          hidden = true,
        }
      end, { desc = "telescope поиск по всем файлам" })

      require("telescope").load_extension "ui-select"
    end,
  },
}
