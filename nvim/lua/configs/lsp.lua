local map = require("vim.modules").map

local M = {}

local servers = {
  "lua_ls",
  -- "rust_analyzer",
  -- "html",
  -- "cssls",
  "ts_ls",
  -- "jsonls",
}

M.mappings = function()
  -- map the following keys on lsp attach only
  vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
      vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

      -- Diagnostics mappings
      map({ "n" }, "K", vim.lsp.buf.hover, "Open lsp hover")
      map({ "n" }, "<leader>gd", vim.lsp.buf.definition)
      map({ "n" }, "<leader>gr", vim.lsp.buf.references)
      map({ "n" }, "<leader>ca", vim.lsp.buf.code_action)
      map({ "n" }, "<space>rn", vim.lsp.buf.rename)
    end,
  })
end

M.config = function()
  local lspconfig = require "lspconfig"

  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      -- capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = { globals = { "vim", "require" } },
        },
        -- json = {
        --   schemas = require("schemastore").json.schemas(),
        --   validate = { enable = true },
        -- },
      },
    }
  end
end

return M
