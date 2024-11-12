return {
  "folke/zen-mode.nvim",
  cmd = { "ZenMode" },
  keys = function()
    local toggler = function()
      require("zen-mode").toggle {
        window = {
          width = 0.65, -- width will be 85% of the editor width
        },
      }
    end

    vim.keymap.set({ "n" }, "<leader>T", toggler, {})
  end,
  opts = {},
}
