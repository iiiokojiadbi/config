return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
    {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      lazy = false,
      config = function()
        require("mason-tool-installer").setup {
          ensure_installed = {
            "prettier",
            "stylua",
            "eslint_d",
          },
        }
      end,
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "b0o/schemastore.nvim",
    },
    lazy = false,
    config = function()
      require("lspconfig.ui.windows").default_options = {
        border = "single",
      }

      -- local capabilities = vim.lsp.protocol.make_client_capabilities()
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      local lspconfig = require "lspconfig"

      local servers = {
        "rust_analyzer",
        "html",
        "cssls",
        "ts_ls",
        "lua_ls",
        "jsonls",
      }

      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
          capabilities = capabilities,
          settings = {
            Lua = {
              diagnostics = { globals = { "vim", "require" } },
            },
            json = {
              schemas = require("schemastore").json.schemas(),
              validate = { enable = true },
            },
          },
        }
      end

      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = "single",
      })

      vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
        border = "single",
      })

      vim.diagnostic.config {
        float = { border = "single" },
      }

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
      vim.keymap.set("n", "<leader>ga", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>gn", vim.lsp.buf.rename, {})
      vim.keymap.set("n", "<leader>ge", vim.diagnostic.open_float, {})
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})
    end,
  },
}
