local opt = vim.opt
local g = vim.g
local opts = {}

opts.initial = function()
  g.mapleader = " "
  -- g.maplocalleader = "\\"

  opt.laststatus = 3
  opt.clipboard = "unnamedplus"
  opt.termguicolors = true
  opt.cursorline = true
  opt.cursorlineopt = "number"
  opt.ruler = true
  opt.number = true
  opt.relativenumber = true
  opt.breakindent = true
  opt.linebreak = true
  opt.swapfile = false
  opt.undofile = true
  opt.cmdheight = 0
  opt.wrap = false
end

opts.final = function()
  opt.completeopt = { "menuone", "noselect", "noinsert" }
  opt.wildmenu = true
  opt.pumheight = 10
  opt.ignorecase = true
  opt.smartcase = true
  opt.timeout = false
  opt.updatetime = 400
  opt.confirm = false
  opt.equalalways = false
  opt.splitbelow = true
  opt.splitright = true
  opt.scrolloff = 20

  -- Indenting
  opt.shiftwidth = 2
  opt.smartindent = true
  opt.tabstop = 2
  opt.expandtab = true
  opt.softtabstop = 2
  opt.sidescrolloff = 2

  --   -- Disable providers
  -- g.loaded_node_provider = 0
  -- g.loaded_python3_provider = 0
  -- g.loaded_perl_provider = 0
  -- g.loaded_ruby_provider = 0
end

--- Load shada after ui-enter
local shada = vim.o.shada
vim.o.shada = ""
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    vim.o.shada = shada
    pcall(vim.cmd.rshada, { bang = true })
  end,
})

return opts