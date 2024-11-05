return {
  {
    "nvim-lua/plenary.nvim",
  },
  {
    "nvim-tree/nvim-web-devicons",
    enabled = vim.g.have_nerd_font,
  },
  {
    "MunifTanjim/nui.nvim",
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    opts = {},
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("ibl").setup()
    end,
  },
  {
    "folke/ts-comments.nvim",
    event = "VeryLazy",
  },
  {
    "j-hui/fidget.nvim",
    opts = {},
  },
}