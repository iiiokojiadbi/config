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
      default_integrations = true,
      integrations = {
        alpha = true,
        cmp = true,
        dap = true,
        dap_ui = true,
        dashboard = true,
        diffview = true,
        flash = true,
        fidget = true,
        gitsigns = true,
        markdown = true,
        mason = true,
        neogit = true,
        neotree = true,
        nvimtree = true,
        ufo = true,
        rainbow_delimiters = true,
        render_markdown = true,
        lsp_trouble = true,
        semantic_tokens = not is_vim,
        telescope = { enabled = true },
        treesitter = not is_vim,
        treesitter_context = true,
        barbecue = {
          dim_dirname = true,
          bold_basename = true,
          dim_context = false,
          alt_background = false,
        },
        illuminate = {
          enabled = true,
          lsp = false,
        },
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
        navic = {
          enabled = false,
          custom_bg = "NONE",
        },
        dropbar = {
          enabled = true,
          color_mode = false,
        },
        colorful_winsep = {
          enabled = false,
          color = "red",
        },
        mini = {
          enabled = true,
          indentscope_color = "text",
        },
      },
    }
    vim.cmd.colorscheme "catppuccin-mocha"
  end,
}
