return {
    keymap = {
        ["<CR>"] = { "select_and_accept", "fallback" },
        ["<tab>"] = { "select_next", "fallback" },
        ["<S-tab>"] = { "select_prev", "fallback" },
        ["<C-y>"] = { "scroll_documentation_down" },
        ["<C-e>"] = { "scroll_documentation_up" },
    },
    highlight = {
        use_nvim_cmp_as_default = true
    },
    windows = {
        autocomplete = {
            border = "single",
            draw = {
                columns = {{
                    "label",
                    "label_description",
                    gap = 1
                }, {"kind_icon", "kind"}}
            }
        },
        documentation = {
            auto_show = true,
            border = "single",
            auto_show_delay_ms = 100,
          },
    },
    nerd_font_variant = 'Nerd Font',
    accept = {
        auto_brackets = {
            enabled = true
        }
    },
    trigger = {
        signature_help = {
            enabled = true
        }
    }
}
