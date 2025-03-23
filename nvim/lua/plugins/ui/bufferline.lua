return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  keys = {
    { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Буфер закрепить" },
    { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Буфер удалить все незакрепленные" },
    { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Буфер удалить все справа" },
    { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Буфер удалить все слева" },
    { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Буфер предыдущий" },
    { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Буфер следующий" },
    { "[B", "<cmd>BufferLineMovePrev<cr>", desc = "Буфер передвинуть слева" },
    { "]B", "<cmd>BufferLineMoveNext<cr>", desc = "Буфер передвинуть справа" },
  },
  opts = {
    options = {
      close_command = function(n)
        Snacks.bufdelete(n)
      end,
      right_mouse_command = function(n)
        Snacks.bufdelete(n)
      end,
      diagnostics = "nvim_lsp",
      always_show_bufferline = false,
      offsets = {
        {
          filetype = "neo-tree",
          text = "Neo-tree",
          highlight = "Directory",
          text_align = "left",
        },
        {
          filetype = "snacks_layout_box",
        },
      },
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)
    vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
      callback = function()
        vim.schedule(function()
          pcall(nvim_bufferline)
        end)
      end,
    })
  end,
}
