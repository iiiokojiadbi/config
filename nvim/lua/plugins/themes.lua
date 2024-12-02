local get_config = require("modules").get_config

return {
    {
        "rebelot/kanagawa.nvim",
        config = get_config("themes/kanagawa"),
        priority = 1000,
        lazy = false
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = get_config("themes/catppuccin"),
        enabled = false
    },
}
