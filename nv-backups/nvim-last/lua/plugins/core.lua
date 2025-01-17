local get_config = require("modules").get_config

return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = "BufReadPost",
        config = get_config("treesitter")
    }, {
        "saghen/blink.cmp",
        lazy = false, -- lazy loading handled internally
        -- optional: provides snippets for the snippet source
        dependencies = "rafamadriz/friendly-snippets",
        version = "v0.6.1",
        opts = get_config("blink")
    },
    {"mfussenegger/nvim-lint", event = "VeryLazy", config = get_config("lint")},
    {
        "stevearc/conform.nvim",
        event = {"BufWritePre"},
        cmd = {"ConformInfo"},
        config = get_config("conform")
    }, {"neovim/nvim-lspconfig", config = get_config("lsp")},
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = get_config("mason", "core")
    }, {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        lazy = false,
        config = get_config("mason", 'tool')
    }, {
        "williamboman/mason-lspconfig.nvim",
        event = {"BufReadPost", "BufNewFile"},
        config = get_config("mason", "lspconfig")
    }
}
