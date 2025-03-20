return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = {},
    },
    {
      "j-hui/fidget.nvim",
      opts = {},
    },
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "saghen/blink.cmp",
  },
  config = function()
    require("vim.autocommands").lsp_attach()

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend("force", capabilities, require("blink.cmp").get_lsp_capabilities())

    local servers = {
      lua_ls = {
        settings = {
          Lua = {
            completion = {
              callSnippet = "Replace",
            },
            diagnostics = { globals = { "vim" } },
          },
        },
      },
      html = {},
      cssls = {},
      ts_ls = {
        cmd = { "typescript-language-server", "--stdio" },
        filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
        init_options = {
          hostInfo = "neovim",
        },
        single_file_support = true,
        settings = {
          completions = {
            completeFunctionCalls = true,
          },
        },
      },
      rust_analyzer = {},
    }

    local ensure_installed = vim.tbl_keys(servers or {})
    vim.list_extend(ensure_installed, { "stylua", "prettier", "eslint_d" })

    require("mason-tool-installer").setup {
      ensure_installed = ensure_installed,
    }

    require("mason-lspconfig").setup {
      automatic_installation = true,
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          server.capabilities = capabilities
          require("lspconfig")[server_name].setup(server)
        end,
      },
    }
  end,
}
