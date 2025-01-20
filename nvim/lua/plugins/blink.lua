return {
    'saghen/blink.cmp',
    event = {"LspAttach"},
    dependencies = 'rafamadriz/friendly-snippets',
    version = '*',
    opts = {
        keymap = {
            preset = none,
            ['<C-space>'] = {'show', 'show_documentation', 'hide_documentation'},
            ['<C-e>'] = {'hide'},
            ['<Enter>'] = {'select_and_accept'},
            ['<S-Tab>'] = {'select_prev', 'fallback'},
            ['<Tab>'] = {'select_next', 'fallback'},
            ['<C-u>'] = {'scroll_documentation_up', 'fallback'},
            ['<C-d>'] = {'scroll_documentation_down', 'fallback'}
        },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono'
        },
        completion = {
            -- Disable auto brackets
            -- NOTE: some LSPs may add auto brackets themselves anyway
            accept = {
                auto_brackets = {
                    enabled = false
                }
            },
            menu = {
                border = 'single'
            },
            documentation = {
                window = {
                    border = 'single'
                }
            },
            ghost_text = {
                enabled = true
            }
        },
        sources = {
            default = {"lazydev", "lsp", "path", "snippets", "buffer"},
            providers = {
                lazydev = {
                    name = "LazyDev",
                    module = "lazydev.integrations.blink",
                    score_offset = 100
                }
            }
        }
    }
}
