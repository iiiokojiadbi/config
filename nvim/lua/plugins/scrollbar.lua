return {
  "petertriho/nvim-scrollbar",
  event = "VeryLazy",
  config = function()
    require("scrollbar").setup {
      handle = {
        color = "#312A19",
      },
    }
  end,
}
