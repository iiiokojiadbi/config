
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

-- Отступы
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- Относительные строки
vim.wo.number = true
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

-- Скролл
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.opt.termguicolors = true

-- Кодировка
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.breakindent = true
vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.autoindent = true
