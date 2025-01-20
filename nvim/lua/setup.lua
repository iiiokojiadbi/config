require('lazy').setup({ -- plugins
-- LSP AND CORE
require 'plugins.nvim-lspconfig', -- Main LSP Configuration
require 'plugins.nvim-lint', -- Linting
require 'plugins.blink', -- Autocompletion
require 'plugins.conform', -- Autoformat
require 'plugins.gitsigns', -- Adds git related signs to the gutter, as well as utilities for managing changes
require 'plugins.nvim-treesitter', -- Highlight, edit, and navigate code
-- UI
require 'plugins.lualine', -- 
require 'plugins.nvim-colorizer', -- 
require 'plugins.catppuccin', -- Theme catppuccin
require 'plugins.btw', -- Dashboard
require 'plugins.vim-sleuth', -- Detect tabstop and shiftwidth automatically
require 'plugins.todo-comments', -- Highlight todo, notes, etc in comments
-- PACKS
require 'plugins.snacks' -- A collection of small QoL plugins for Neovim
}, {
    ui = {
        -- If you are using a Nerd Font: set icons to an empty table which will use the
        -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
        icons = vim.g.have_nerd_font and {} or {
            cmd = '⌘',
            config = '🛠',
            event = '📅',
            ft = '📂',
            init = '⚙',
            keys = '🗝',
            plugin = '🔌',
            runtime = '💻',
            require = '🌙',
            source = '📄',
            start = '🚀',
            task = '📌',
            lazy = '💤 '
        }
    }
})

vim.cmd.colorscheme 'catppuccin'
