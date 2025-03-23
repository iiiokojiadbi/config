return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false, -- neo-tree will lazily load itself
  opts = function(_, opts)
    local function on_move(data)
      Snacks.rename.on_rename_file(data.source, data.destination)
    end

    local events = require "neo-tree.events"
    opts.event_handlers = opts.event_handlers or {}
    opts.close_if_last_window = false

    vim.list_extend(opts.event_handlers, {
      { event = events.FILE_MOVED, handler = on_move },
      { event = events.FILE_RENAMED, handler = on_move },
    })
  end,
  config = function(_, opts)
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", fg = "none" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "none" })
    vim.diagnostic.config {
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = " ",
          [vim.diagnostic.severity.WARN] = " ",
          [vim.diagnostic.severity.INFO] = " ",
          [vim.diagnostic.severity.HINT] = " ",
        },
      },
    }
    require("neo-tree").setup(opts)
  end,
  keys = {
    {
      "<leader>ec",
      function()
        vim.cmd "Neotree close"
      end,
      desc = "Проводник закрыть все",
    },
    {
      "<leader>e",
      "<cmd>Neotree filesystem left focus reveal<cr>",
      desc = "Проводник файлы",
    },
    {
      "<leader>eb",
      "<cmd>Neotree buffers left focus reveal<cr>",
      desc = "Проводник буферы",
    },
    {
      "<leader>eg",
      "<cmd>Neotree git_status left focus reveal<cr>",
      desc = "Проводник git_status",
    },
  },
}
