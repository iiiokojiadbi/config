return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = function()
    local is_vim = vim.fn.has "nvim" ~= 1

    if is_vim then
      require "catppuccin.lib.vim"
    end

    require("catppuccin").setup {
      flavour = "mocha",
      transparent_background = true,
      integrations = {
        cmp = true,
        diffview = true,
        fidget = true,
        gitsigns = true,
        markdown = true,
        mason = true,
        render_markdown = true,
        lsp_trouble = true,
        telescope = { enabled = true },
        treesitter = not is_vim,
        treesitter_context = true,
        indent_blankline = {
          enabled = true,
          scope_color = "",
          colored_indent_levels = true,
        },
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
            ok = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
            ok = { "underline" },
          },
          inlay_hints = {
            background = true,
          },
        },
        dropbar = {
          enabled = true,
          color_mode = false,
        },
      },
    }

    vim.cmd.colorscheme "catppuccin-mocha"
  end,
}
