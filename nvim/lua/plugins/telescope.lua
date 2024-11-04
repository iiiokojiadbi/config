return {
  "nvim-telescope/telescope.nvim",
  event = "VimEnter",
  branch = "*",
  config = function()
    require("telescope").setup {
      -- You can put your default mappings / updates / etc. in here
      --  All the info you're looking for is in `:help telescope.setup()`
      defaults = {
        mappings = {
          i = {
            ["<C-k>"] = require("telescope.actions").move_selection_previous, -- move to prev result
            ["<C-j>"] = require("telescope.actions").move_selection_next, -- move to next result
            ["<C-l>"] = require("telescope.actions").select_default, -- open file
          },
        },
      },
      pickers = {
        find_files = {
          file_ignore_patterns = { "node_modules", ".git", ".venv" },
          hidden = true,
        },
      },
      live_grep = {
        file_ignore_patterns = { "node_modules", ".git", ".venv" },
        additional_args = function(_)
          return { "--hidden" }
        end,
      },
    }

    -- See `:help telescope.builtin`
    local builtin = require "telescope.builtin"
    -- vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
    -- vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
    -- vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
    -- vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
    -- vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })

    vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "telescope поиск по слову" })

    vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "telescope поиск по буферам" })

    vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = "telescope поиск по меткам" })

    vim.keymap.set("n", "<leader>fgc", builtin.git_commits, { desc = "telescope git commits" })

    vim.keymap.set("n", "<leader>fgC", builtin.git_bcommits, { desc = "telescope git b commits" })

    vim.keymap.set("n", "<leader>fgs", builtin.git_status, { desc = "telescope git status" })

    vim.keymap.set("n", "<leader>fgS", builtin.git_stash, { desc = "telescope git stash" })

    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "telescope поиск по файлам" })

    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "telescope поиск по документации и помощи" })

    vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "telescope посмотреть недавно открытые файлы" })

    vim.keymap.set("n", "<leader>fz", builtin.current_buffer_fuzzy_find, { desc = "telescope поиск по текущему буферу" })

    vim.keymap.set("n", "<leader>fa", function()
      builtin.find_files {
        follow = true,
        no_ignore = true,
        hidden = true,
      }
    end, { desc = "telescope поиск по всем файлам" })

    -- It's also possible to pass additional configuration options.
    --  See `:help telescope.builtin.live_grep()` for information about particular keys
    -- vim.keymap.set('n', '<leader>s/', function()
    --   builtin.live_grep {
    --     grep_open_files = true,
    --     prompt_title = 'Live Grep in Open Files',
    --   }
    -- end, { desc = '[S]earch [/] in Open Files' })
  end,
}
