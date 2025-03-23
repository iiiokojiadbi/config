local lsp_map = function(event, keys, func, desc, mode)
  mode = mode or "n"
  vim.keymap.set(mode, keys, func, {
    buffer = event.buf,
    desc = "LSP: " .. desc,
  })
end

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "williamboman/mason.nvim", opts = {} },
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "saghen/blink.cmp",
  },
  config = function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend("force", capabilities, require("blink.cmp").get_lsp_capabilities())

    local servers = {
      lua_ls = {},
      html = {},
      cssls = {},
    }

    local on_attach = function(event)
      lsp_map(event, "<leader>ca", vim.lsp.buf.code_action, "действия по коду", { "n", "x" })
      lsp_map(event, "<leader>rn", vim.lsp.buf.rename, "переименовать все ссылки", { "n" })
    end

    local ensure_installed = vim.tbl_keys(servers or {})
    vim.list_extend(ensure_installed, { "stylua", "prettier", "eslint_d" })

    require("mason-tool-installer").setup {
      ensure_installed = ensure_installed,
    }

    require("mason-lspconfig").setup {
      ensure_installed = {},
      automatic_installation = true,
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          capabilities.textDocument.completion.completionItem.snippetSupport = true
          server.capabilities = capabilities
          server.on_attach = on_attach

          require("lspconfig")[server_name].setup(server)
        end,
      },
    }
  end,
}
