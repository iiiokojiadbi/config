local M = {}

local ensure_installed = {
    "lua",
    "vimdoc",
    "rust",
    "json",
    "toml",
    "markdown",
    "typescript",
    "javascript"
}

M.config = function(_, opts)
    require("nvim-treesitter.configs").setup {
        ensure_installed,
        auto_install = true,
        highlight = {
            enable = true,
            use_languagetree = true,
        },
        indent = { enable = true },
    }
end


return M
