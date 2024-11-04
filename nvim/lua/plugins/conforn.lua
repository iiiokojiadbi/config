return {
  "stevearc/conform.nvim",
  event = "BufWritePre", -- uncomment for format on save
  config = function()
    require("conform").setup {
      formatters_by_ft = {
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
      },

      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
      },
    }

    vim.keymap.set("n", "<leader>fc", function()
      require("conform").format { lsp_fallback = true }
    end, { desc = "форматировать файл" })
  end,
}
