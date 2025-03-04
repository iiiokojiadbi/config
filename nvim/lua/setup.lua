require('lazy').setup { -- plugins
  -- LSP AND CORE
  require 'plugins.core.nvim-lspconfig', -- Main LSP Configuration
  require 'plugins.core.nvim-lint', -- Linting
  require 'plugins.core.blink', -- Autocompletion
  require 'plugins.core.conform', -- Autoformat
  require 'plugins.core.nvim-treesitter', -- Highlight, edit, and navigate code
  -- UI
  require 'plugins.ui.nvim-colorizer', -- color highlighter
  require 'plugins.ui.btw', -- Dashboard
  require 'plugins.ui.todo-comments', -- Highlight todo, notes, etc in comments
  -- PACKS
  require 'plugins.snacks', -- A collection of small QoL plugins for Neovim
  -- THEMES
  require 'plugins.themes.catppuccin',
  require 'plugins.themes.kanagawa',
  -- require 'plugins.lualine',
}

-- vim.cmd.colorscheme 'catppuccin'
vim.cmd.colorscheme 'kanagawa'
