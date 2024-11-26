local get_config = require("modules").get_config

return {
    {
        "rebelot/kanagawa.nvim",
        config = get_config("themes/kanagawa"),
        priority = 1000,
        lazy = false
    },
    {
        "EdenEast/nightfox.nvim",
        config = get_config("themes/nightfox"),
        enabled = false
    },
    {
        "folke/tokyonight.nvim",
        config = get_config("themes/tokyonight"),
        enabled = false
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = get_config("themes/catppuccin"),
        enabled = false
    },
}
