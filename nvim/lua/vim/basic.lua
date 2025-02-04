local M = {}

function M.basic_options()
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

function M.basic_keymaps()
    vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

    vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, {
        desc = 'Open diagnostic [Q]uickfix list'
    })

    vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', {
        desc = 'Exit terminal mode'
    })

    vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
    vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
    vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
    vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

    vim.keymap.set('n', '<C-h>', '<C-w><C-h>', {
        desc = 'Move focus to the left window'
    })
    vim.keymap.set('n', '<C-l>', '<C-w><C-l>', {
        desc = 'Move focus to the right window'
    })
    vim.keymap.set('n', '<C-j>', '<C-w><C-j>', {
        desc = 'Move focus to the lower window'
    })
    vim.keymap.set('n', '<C-k>', '<C-w><C-k>', {
        desc = 'Move focus to the upper window'
    })
end

function M.basic_autocommands()
    vim.api.nvim_create_autocmd('TextYankPost', {
        desc = 'Highlight when yanking (copying) text',
        group = vim.api.nvim_create_augroup('highlight-yank', {
            clear = true
        }),
        callback = function()
            vim.highlight.on_yank()
        end
    })

    -- show cursor line only in active window
    local cursorGrp = vim.api.nvim_create_augroup("CursorLine", {
        clear = true
    })

    vim.api.nvim_create_autocmd({"InsertLeave", "WinEnter"}, {
        pattern = "*",
        command = "set cursorline",
        group = cursorGrp
    })

    vim.api.nvim_create_autocmd({"InsertEnter", "WinLeave"}, {
        pattern = "*",
        command = "set nocursorline",
        group = cursorGrp
    })

    -- show cursor col line only in active window
    local cursorColGrp = vim.api.nvim_create_augroup("CursorColumn", {
        clear = true
    })

    vim.api.nvim_create_autocmd({"InsertLeave", "WinEnter"}, {
        pattern = "*",
        command = "set cursorcolumn",
        group = cursorColGrp
    })

    vim.api.nvim_create_autocmd({"InsertEnter", "WinLeave"}, {
        pattern = "*",
        command = "set nocursorcolumn",
        group = cursorColGrp
    })
end

return M
