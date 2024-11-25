local M = {}

local formatters = {
  lua = { "stylua" },
  css = { "prettier" },
  html = { "prettier" },
  javascript = { "prettier" },
  typescript = { "prettier" },
  typescriptreact = { "prettier" },
  javascriptreact = { "prettier" },
  rust = { "rustfmt", lsp_format = "fallback" },
  json = { "prettier" },
  yaml = { "prettier" },
  markdown = { "prettier" },
}

M.config = function()
  require("conform").setup {
    formatters_by_ft = formatters,
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_fallback = true,
    },
  }
end

return M
