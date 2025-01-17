local get_config = require("modules").get_config

return {{
    "brenoprata10/nvim-highlight-colors",
    config = get_config("highlight-colors")
}, {
    "rcarriga/nvim-notify",
    config = get_config("notify")
}, -- lualine очень сложный конфиг
{
    "nvim-lualine/lualine.nvim",
    config = get_config("lualine"),
    event = "VeryLazy"
}, {
    "folke/zen-mode.nvim",
    config = get_config("zen-mode"),
    event = "VeryLazy"
}, {
    "folke/which-key.nvim",
    config = get_config("which-key"),
    event = "VeryLazy"
}, {
    "stevearc/dressing.nvim",
    event = "VeryLazy"
}}
