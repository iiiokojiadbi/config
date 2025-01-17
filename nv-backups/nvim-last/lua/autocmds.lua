local api = vim.api

api.nvim_create_autocmd("FileType", {
    pattern = {"html", "markdown", "text"},
    callback = function()
        vim.opt_local.spell = true
    end
})

-- Highlight on yank
local yankGrp = vim.api.nvim_create_augroup("YankHighlight", {
    clear = true
})

api.nvim_create_autocmd("TextYankPost", {
    group = yankGrp,
    pattern = "*",
    callback = function()
        vim.highlight.on_yank()
    end,
    desc = "Highlight yank"
})

-- show cursor line only in active window
local cursorGrp = api.nvim_create_augroup("CursorLine", {
    clear = true
})

api.nvim_create_autocmd({"InsertLeave", "WinEnter"}, {
    pattern = "*",
    command = "set cursorline",
    group = cursorGrp
})

api.nvim_create_autocmd({"InsertEnter", "WinLeave"}, {
    pattern = "*",
    command = "set nocursorline",
    group = cursorGrp
})

-- show cursor col line only in active window
local cursorColGrp = api.nvim_create_augroup("CursorColumn", {
    clear = true
})

api.nvim_create_autocmd({"InsertLeave", "WinEnter"}, {
    pattern = "*",
    command = "set cursorcolumn",
    group = cursorColGrp
})

api.nvim_create_autocmd({"InsertEnter", "WinLeave"}, {
    pattern = "*",
    command = "set nocursorcolumn",
    group = cursorColGrp
})

-- auto-reload files when modified externally
-- https://unix.stackexchange.com/a/383044
vim.api.nvim_create_autocmd({"BufEnter", "CursorHold", "CursorHoldI", "FocusGained"}, {
    command = "if mode() != 'c' | checktime | endif",
    pattern = {"*"}
})
