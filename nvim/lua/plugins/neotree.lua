return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  config = function()
    local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type

      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end

    require("neo-tree").setup {
      close_if_last_window = false,
    }

vim.keymap.set("n", "<leader>e", ":Neotree left toggle reveal<CR>", { desc = "Открыть дерево файлов" })
  end,
}
