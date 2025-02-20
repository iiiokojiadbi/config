require('lazy').setup({                      -- plugins
    -- LSP AND CORE
    require('plugins.core.nvim-lspconfig'),  -- Main LSP Configuration
    require('plugins.core.nvim-lint'),       -- Linting
    require('plugins.core.blink'),           -- Autocompletion
    require('plugins.core.conform'),         -- Autoformat
    require('plugins.core.nvim-treesitter'), -- Highlight, edit, and navigate code
    -- UI
    require('plugins.ui.nvim-colorizer'),    -- color highlighter
    require('plugins.ui.btw'),               -- Dashboard
    require('plugins.ui.todo-comments'),     -- Highlight todo, notes, etc in comments
    -- require 'plugins.lualine',
    -- PACKS
    require 'plugins.snacks', -- A collection of small QoL plugins for Neovim
    -- GIT
    -- require 'plugins.gitsigns', -- Adds git related signs to the gutter, as well as utilities for managing changes
    -- THEMES
    require('plugins.themes.catppuccin'),
    require('plugins.themes.kanagawa'),
}
-- ,
-- {
--     ui = {
--         -- If you are using a Nerd Font: set icons to an empty table which will use the
--         -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
--         icons = vim.g.have_nerd_font and {} or {
--             cmd = '⌘',
--             config = '🛠',
--             event = '📅',
--             ft = '📂',
--             init = '⚙',
--             keys = '🗝',
--             plugin = '🔌',
--             runtime = '💻',
--             require = '🌙',
--             source = '📄',
--             start = '🚀',
--             task = '📌',
--             lazy = '💤 '
--         }
--     }
-- }
)

-- vim.cmd.colorscheme 'catppuccin'
vim.cmd.colorscheme("kanagawa")
