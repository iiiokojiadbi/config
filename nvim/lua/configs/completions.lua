local M = {}

M.config = function()
  require("luasnip.loaders.from_vscode").lazy_load()
  local cmp = require "cmp"

  local tab_next = function(fallback)
    if cmp.visible() then
      cmp.select_next_item()
    else
      fallback()
    end
  end

  local tab_prev = function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
    else
      fallback()
    end
  end

  cmp.setup {
    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert {
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<Tab>"] = cmp.mapping(tab_next, { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(tab_prev, { "i", "s" }),
      ["<CR>"] = cmp.mapping.confirm { select = true },
    },
    sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "path" },
      { name = "buffer" },
    }, {
      { name = "buffer" },
    }),
  }
end

return M
