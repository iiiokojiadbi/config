require("lazy").setup {
  -- plugins
  -- MAIN
  require "plugins.core.conform",
  require "plugins.core.neo-tree",
  require "plugins.core.nvim-treesitter",
  require "plugins.core.nvim-ts-autotag",
  require "plugins.core.nvim-autopairs",
  require "plugins.core.ts-comments",
  require "plugins.core.nvim-web-devicons",
  require "plugins.core.nvim-lint",
  require "plugins.core.trouble",
  --
  -- LSP
  require "plugins.lsp.blink",
  require "plugins.lsp.nvim-lspconfig",
  require "plugins.lsp.typescript-tools",
  require "plugins.lsp.lazydev",
  -- require "plugins.lsp.rustaceanvim",
  --
  -- UI
  require "plugins.ui.nvim-colorizer",
  require "plugins.ui.todo-comments",
  require "plugins.ui.which-key",
  require "plugins.ui.bufferline",
  require "plugins.ui.gitsigns",
  --
  -- THEMES
  require "plugins.themes.kanagawa",
  --
  -- PACKS
  require "plugins.snacks",
}

vim.cmd.colorscheme "kanagawa"
