return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        bigfile = {
            enabled = true
        },
        bufdelete = {
            enabled = true
        },
        dashboard = {
            enabled = false
        },
        indent = {
            enabled = true
        },
        input = {
            enabled = true
        },
        notifier = {
            enabled = true,
            timeout = 3000
        },
        quickfile = {
            enabled = false
        },
        scroll = {
            enabled = true
        },
        statuscolumn = {
            enabled = true
        },
        words = {
            enabled = false
        },
        picker = {
            enable = true
        },
        terminal = {
            enable = true
        },
        rename = {
            enable = true
        }
    }
}
