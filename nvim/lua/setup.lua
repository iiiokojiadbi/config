require('lazy').setup({ -- plugins
-- LSP AND CORE
require("plugins.nvim-lspconfig"), -- Main LSP Configuration
require("plugins.nvim-lint"), -- Linting
require("plugins.autopairs"), -- Autopairs
require("plugins.nvim-cmp"), -- ! -- Autocompletion
require("plugins.conform"), -- Autoformat
require("plugins.telescope"), -- Fuzzy Finder (files, lsp, etc)
require("plugins.gitsigns"), -- Adds git related signs to the gutter, as well as utilities for managing changes
require("plugins.nvim-treesitter"), -- Highlight, edit, and navigate code
require("plugins.lazydev"), -- ? `lazydev` configures Lua LSP for your Neovim config, runtime and plugins used for completion, annotations and signatures of Neovim apis
-- UI
require("plugins.vim-sleuth"), -- Detect tabstop and shiftwidth automatically
require("plugins.indent-blankline"), -- Add indentation guides even on blank lines
require("plugins.todo-comments"), -- Highlight todo, notes, etc in comments
require("plugins.mini") -- Collection of various small independent plugins/modules
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
