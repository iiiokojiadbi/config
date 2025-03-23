local border = "single"

return {
  "saghen/blink.cmp",
  event = { "LspAttach" },
  dependencies = "rafamadriz/friendly-snippets",
  version = "*",
  opts = {
    keymap = { preset = "enter" },
    sources = {
      default = { "lazydev", "lsp", "path", "snippets", "buffer" },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 100,
        },
      },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono",
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
            return ctx.mode ~= "cmdline" and not require("blink.cmp").snippet_active {
              direction = 1,
            }
          end,
        },
      },
    },
  },
}
