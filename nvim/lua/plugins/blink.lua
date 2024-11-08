return {
  "saghen/blink.cmp",
  event = { "LspAttach", "InsertCharPre" },
  version = "v0.*",
  opts = {
    highlight = {
      use_nvim_cmp_as_default = true,
    },
    nerd_font_variant = "mono",
    trigger = { signature_help = { enabled = true } },
    keymap = {
      ["<CR>"] = { "select_and_accept", "fallback" },
      ["<tab>"] = { "select_next", "fallback" },
      ["<s-tab>"] = { "select_prev", "fallback" },
      ["<C-b>"] = { "scroll_documentation_down" },
      ["<C-k>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-f>"] = { "scroll_documentation_up" },
    },
    windows = {
      autocomplete = {
        border = "single",
      },
      documentation = {
        border = "single",
      },
    },
  },
}

-- ["<C-b>"] = cmp.mapping.scroll_docs(-4),
-- ["<C-f>"] = cmp.mapping.scroll_docs(4),
-- ["<C-Space>"] = cmp.mapping.complete(),
-- ["<C-e>"] = cmp.mapping.abort(),
-- ["<CR>"] = cmp.mapping.confirm { select = true },
-- ["<Tab>"] = cmp.mapping(tab_next, { "i", "s" }),
-- ["<S-Tab>"] = cmp.mapping(tab_prev, { "i", "s" }),
