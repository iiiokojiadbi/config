local M = {}

M.todo_keys = {
  {
    "<leader>qt",
    "<cmd>Trouble todo<CR>",
    desc = "Open Todo Trouble",
  },
}

M.trouble_keys = {
  {
    "<leader>qq",
    "<cmd>Trouble diagnostics toggle focus=true<cr>",
    desc = "Diagnostics (Trouble)",
  },
  {
    "<leader>qQ",
    "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
    desc = "Buffer Diagnostics (Trouble)",
  },
  {
    "<leader>qK",
    "<cmd>Trouble symbols toggle focus=false<cr>",
    desc = "Symbols (Trouble)",
  },
  {
    "<leader>qk",
    "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
    desc = "LSP Definitions / references / ... (Trouble)",
  },
  {
    "<leader>ql",
    "<cmd>Trouble loclist toggle<cr>",
    desc = "Location List (Trouble)",
  },
  {
    "<leader>qL",
    "<cmd>Trouble qflist toggle<cr>",
    desc = "Quickfix List (Trouble)",
  },
}

return M
