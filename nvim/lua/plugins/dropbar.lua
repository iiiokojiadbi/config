return {
  "Bekaboo/dropbar.nvim",
  lazy = false,
  name = "dropbar",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("dropbar").setup()

    vim.keymap.set("n", "<leader>P", function()
      require("dropbar.api").pick(vim.v.count ~= 0 and vim.v.count)
    end, { desc = "Toggle dropbar menu" })
  end,
}
