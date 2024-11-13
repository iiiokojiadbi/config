return {
  "windwp/nvim-ts-autotag",
  event = "User FilePost",
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}
