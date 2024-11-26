local get_config = require("modules").get_config

return {
    {
        "echasnovski/mini.ai",
        config = get_config("mini-ai"),
        version = false
    },
    {
        "echasnovski/mini.bracketed",
        config = get_config("mini-bracketed"),
        version = false
    },
    {
        "echasnovski/mini.bufremove",
        config = get_config("mini-bufremove"),
        version = false
    },
    {
        "echasnovski/mini.indentscope",
        config = get_config("mini-indentscope"),
        version = false,
        event = "VeryLazy"
    },
    {
        "echasnovski/mini.move",
        config = get_config("mini-move"),
        version = false
    },
}
