local get_config = require("modules").get_config

return {
    {"numToStr/Comment.nvim", lazy = false, config = get_config("Comment")},
    {"rlane/pounce.nvim", config = get_config("pounce")}, {
        "lewis6991/gitsigns.nvim",
        event = "BufReadPre",
        config = get_config("gitsigns")
    },
    {"windwp/nvim-ts-autotag", event = "InsertEnter"},
    {"windwp/nvim-autopairs", config = get_config("autopairs")}
}
