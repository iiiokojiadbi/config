require('lazy').setup { -- plugins
  -- LSP AND CORE
  require 'plugins.core.nvim-lspconfig', -- Main LSP Configuration
  require 'plugins.core.nvim-lint', -- Linting
  require 'plugins.core.blink', -- Autocompletion
  require 'plugins.core.conform', -- Autoformat
  require 'plugins.core.nvim-treesitter', -- Highlight, edit, and navigate code
  require 'plugins.core.nvim-ts-autotag',
  require 'plugins.core.toggleterm',
  require 'plugins.core.nvim-autopairs',
  require 'plugins.core.trouble',
  require 'plugins.core.ts-comments',
  -- UI
  require 'plugins.ui.nvim-colorizer', -- color highlighter
  require 'plugins.ui.btw', -- Dashboard
  require 'plugins.ui.todo-comments', -- Highlight todo, notes, etc in comments
  -- THEMES
  require 'plugins.themes.kanagawa',
  -- require 'plugins.lualine',
  -- PACKS
  require 'plugins.snacks',
}

vim.cmd.colorscheme 'kanagawa'
