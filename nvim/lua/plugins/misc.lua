return {
  {
    "nvim-lua/plenary.nvim",
    lazy = false,
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = false,
    enabled = vim.g.have_nerd_font,
  },
  {
    "MunifTanjim/nui.nvim",
    lazy = false,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    opts = {},
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",
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
    lazy = false,
    opts = {
      notification = {
        window = {
          winblend = 0,
        },
      },
    },
  },
  {
    "kevinhwang91/nvim-bqf",
    lazy = false,
  },
}
