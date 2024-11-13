return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local opts = {
      add = { text = "┃" },
      change = { text = "~" },
      delete = { text = "_" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
    }

    require("gitsigns").setup {
      signs = opts,
      signs_staged = opts,
    }
  end,
}
