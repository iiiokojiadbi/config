
-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Общая вставка
vim.opt.clipboard = "unnamedplus"

-- Отключение мышки
vim.o.mouse = ""

-- Относительные строки
vim.wo.relativenumber = true

-- Стилизация редактора
vim.opt.fillchars = {
  vert = "│",
  fold = "⠀",
  eob = " ", -- suppress ~ at EndOfBuffer
  diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
  msgsep = "‾",
  foldopen = "▾",
  foldsep = "│",
  foldclose = "▸",
}

vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.autoindent = true
