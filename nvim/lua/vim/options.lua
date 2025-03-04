local M = {}

function M.setup()
    vim.g.mapleader = ' '
    vim.g.maplocalleader = ' '
    vim.g.have_nerd_font = true
    vim.opt.number = true
    -- vim.opt.relativenumber = true
    vim.opt.mouse = 'a'
    vim.opt.showmode = false
    vim.opt.breakindent = true
    vim.opt.undofile = true
    vim.opt.ignorecase = true
    vim.opt.smartcase = true
    vim.opt.signcolumn = 'yes'
    vim.opt.splitright = true
    vim.opt.splitbelow = true
    vim.opt.list = true
    vim.opt.listchars = {
        tab = '» ',
        trail = '·',
        nbsp = '␣'
    }
    vim.opt.inccommand = 'split'
    vim.opt.cursorline = true
    vim.opt.cursorcolumn = true
    vim.opt.scrolloff = 10

    -- Decrease update time
    vim.opt.updatetime = 250
    -- Decrease mapped sequence wait time
    vim.opt.timeoutlen = 300

    vim.schedule(function()
        vim.opt.clipboard = 'unnamedplus'
    end)
end

return M
