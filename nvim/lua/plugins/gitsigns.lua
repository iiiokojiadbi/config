return {
  "lewis6991/gitsigns.nvim",
  lazy = false,
  config = function()
    -- local opts = {
    --   add = { text = "┃" },
    --   change = { text = "~" },
    --   delete = { text = "_" },
    --   topdelete = { text = "‾" },
    --   changedelete = { text = "~" },
    -- }
    --
    -- require("gitsigns").setup {
    --   signs = opts,
    --   signs_staged = opts,
    -- }

    require("gitsigns").setup {}
  end,
}
