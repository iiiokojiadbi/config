local get_config = require("modules").get_config

return {
    {
        "nvim-treesitter/nvim-treesitter",
        config = get_config("treesitter"),
        build = ":TSUpdate",
        event = "BufReadPost",
    },
    {
        "saghen/blink.cmp",
        lazy = false, -- lazy loading handled internally
        -- optional: provides snippets for the snippet source
        dependencies = "rafamadriz/friendly-snippets",
        version = "v0.6.1",
        opts = get_config("blink")
    },
    {
        "rmagatti/auto-session",
        config = get_config("auto-session")
    },
    {
        "neovim/nvim-lspconfig",
        config = get_config("lsp"),
    },
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        config = get_config("conform"),
    }
}
