return {
  {
    "tpope/vim-fugitive",
    lazy = false,
    config = function()
      vim.keymap.set("n", "<leader>lf", ":Flog<CR>", { desc = "Git Log" })
    end,
  },
  { "rbong/vim-flog", lazy = false },
  {
    "sindrets/diffview.nvim",
    lazy = false,
    config = function()
      vim.keymap.set("n", "<leader>lh", ":DiffviewFileHistory<CR>", { desc = "Git File History" })
      vim.keymap.set("n", "<leader>lo", ":DiffviewOpen HEAD~1<CR>", { desc = "Git Last Commit" })
      vim.keymap.set("n", "<leader>lt", ":DiffviewToggleFile<CR>", { desc = "Git File History" })
    end,
  },
}
