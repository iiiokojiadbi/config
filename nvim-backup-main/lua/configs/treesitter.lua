local M = {}

local languages = {
  "lua",
  "vimdoc",
  "rust",
  "json",
  "toml",
  "markdown",
  "typescript",
  "javascript",
}

M.config = function()
  require("nvim-treesitter.configs").setup {
    ensure_installed = languages,
    auto_install = true,
    highlight = {
      enable = true,
      use_languagetree = true,
    },
    indent = { enable = true },
  }
end

return M
