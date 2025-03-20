require("lazy").setup { -- plugins
  -- LSP AND CORE
  require "plugins.core.nvim-web-devicons",
  require "plugins.core.nvim-lspconfig",
  require "plugins.core.nvim-lint",
  require "plugins.core.blink",
  require "plugins.core.conform",
  require "plugins.core.nvim-treesitter",
  require "plugins.core.nvim-ts-autotag",
  require "plugins.core.toggleterm",
  require "plugins.core.nvim-autopairs",
  require "plugins.core.trouble",
  require "plugins.core.ts-comments",
  require "plugins.core.neo-tree",
  require "plugins.core.gitsigns",
  -- UI
  require "plugins.ui.nvim-colorizer",
  require "plugins.ui.todo-comments",
  require "plugins.ui.which-key",
  -- THEMES
  require "plugins.themes.kanagawa",
  -- PACKS
  require "plugins.snacks",
}

vim.cmd.colorscheme "kanagawa"
