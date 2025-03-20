local M = {}

function M.setup()
  vim.g.mapleader = " "
  vim.g.maplocalleader = " "
  vim.g.have_nerd_font = true
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  vim.opt.termguicolors = true
  vim.opt.number = true
  vim.opt.numberwidth = 2
  vim.opt.ruler = false
  -- vim.opt.relativenumber = true
  -- vim.opt.mouse = 'a'
  vim.opt.mouse = ""
  vim.opt.showmode = false
  vim.opt.breakindent = true
  vim.opt.undofile = true
  vim.opt.ignorecase = true
  vim.opt.smartcase = true
  vim.opt.signcolumn = "yes"
  vim.opt.splitright = true
  vim.opt.splitbelow = true
  vim.opt.list = true
  vim.opt.listchars = {
    tab = "» ",
    trail = "·",
    nbsp = "␣",
  }
  vim.opt.inccommand = "split"
  vim.opt.cursorline = true
  vim.opt.cursorcolumn = true
  vim.opt.scrolloff = 10

  vim.opt.expandtab = true
  vim.opt.smartindent = true
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.softtabstop = 2

  -- Decrease update time
  vim.opt.updatetime = 250
  -- Decrease mapped sequence wait time
  vim.opt.timeoutlen = 300

  vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
  end)
end

return M
