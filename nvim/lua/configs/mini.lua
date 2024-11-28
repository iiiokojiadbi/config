local M = {}

M.ai = {}
M.icons = {}
M.pairs = {}
M.surround = {}
M.bufremove = {}
M.bracketed = {}

M.indentscope = {
    symbol = "▎",
    draw = {
        animation = require("mini.indentscope").gen_animation.none(),
    },
}

M.files = {
    use_as_default_explorer = true,
    windows = {
        max_number = math.huge,
        preview = false,
        width_focus = 30,
        width_nofocus = 20,
        width_preview = 25,
    },
    mappings = {
        go_in = '<Enter>'
    }
}

M.move = {
    mappings = {
        -- Move visual selection in Visual mode.
        left = "<M-Left>",
        right = "<M-Right>",
        down = "<M-Down>",
        up = "<M-Up>",

        -- Move current line in Normal mode
        line_left = "<M-Left>",
        line_right = "<M-Right>",
        line_down = "<M-Down>",
        line_up = "<M-Up>",
    },
}

return M
