require "core.options"
require "core.mappings"

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  require "plugins.tmux-navigator",
  -- require "plugins.neotree",
  require "plugins.nord",
  require "plugins.oil",
  require "plugins.bufferline",
  require "plugins.scrollbar",
  require "plugins.lualine",
  require "plugins.treesitter",
  require "plugins.telescope",
  require "plugins.autocompletion",
  require "plugins.conform",
  require "plugins.gitsigns",
  require "plugins.lint",
  require "plugins.lsp",
  require "plugins.general",

  performance = {
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "tohtml",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "logipat",
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
        "matchit",
        "tar",
        "tarPlugin",
        "rrhelper",
        "spellfile_plugin",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
        "tutor",
        "rplugin",
        "syntax",
        "synmenu",
        "optwin",
        "compiler",
        "bugreport",
        "ftplugin",
      },
    },
  },
}
