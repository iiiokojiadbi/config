local get_config = require("modules").get_config

return {
    { "kdheepak/lazygit.nvim" },
    {
        "stevearc/dressing.nvim",
        event = "VeryLazy"
    },
    { "mbbill/undotree" },
    {
        "LudoPinelli/comment-box.nvim",
        event = "VeryLazy"
    },
    {
        "numToStr/Comment.nvim",
        lazy = false,
        config = get_config("Comment")
    },
    {
        "rlane/pounce.nvim",
        config = get_config("pounce")
    },
    {
        "nvim-lualine/lualine.nvim",
        config = get_config("lualine"),
        event = "VeryLazy",
    },
    {
        "folke/zen-mode.nvim",
        config = get_config("zen-mode"),
        event = "VeryLazy",
    },
    {
        "folke/which-key.nvim",
        config = get_config("which-key"),
        event = "VeryLazy",
    },
    {
        "brenoprata10/nvim-highlight-colors",
        config = get_config("highlight-colors")
    },
    {
        "rcarriga/nvim-notify",
        config = get_config("notify")
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "BufReadPre",
        config = get_config("gitsigns"),
    },

    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = get_config("fzf"),
    },


    {
        "windwp/nvim-ts-autotag",
        event = "InsertEnter"
    },
    {
        "windwp/nvim-autopairs",
        config = get_config("autopairs"),
    },
    {
        "kylechui/nvim-surround",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup()
        end,
    }
}
