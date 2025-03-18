local border = 'single'

return {
  'saghen/blink.cmp',
  event = { 'LspAttach' },
  dependencies = 'rafamadriz/friendly-snippets',
  version = '*',
  opts = {
    keymap = {
      preset = 'enter',
      -- ['<C-space>'] = {'show', 'show_documentation', 'hide_documentation'},
      ['<C-e>'] = { 'hide' },
      -- ['<CR>'] = {'accept'},
      ['<S-Tab>'] = { 'select_prev', 'fallback' },
      ['<Tab>'] = { 'select_next', 'fallback' },
      ['<C-u>'] = { 'scroll_documentation_up', 'fallback' },
      ['<C-d>'] = { 'scroll_documentation_down', 'fallback' },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono',
    },
    signature = {
      window = {
        border = border,
      },
    },
    completion = {
      -- Disable auto brackets
      -- NOTE: some LSPs may add auto brackets themselves anyway
      accept = {
        auto_brackets = {
          enabled = false,
        },
      },
      menu = {
        border = border,
      },
      documentation = {
        window = {
          border = border,
        },
      },
      ghost_text = {
        enabled = true,
      },
      list = {
        selection = {
          -- preselect = true,
          auto_insert = true,
          preselect = function(ctx)
            return ctx.mode ~= 'cmdline' and not require('blink.cmp').snippet_active {
              direction = 1,
            }
          end,
        },
      },
    },
  },
}
