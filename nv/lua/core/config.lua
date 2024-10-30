-- Leader
vim.g.mapleader = " "

-- Отключение мышки
vim.o.mouse = ""

-- Относительные строки
vim.wo.number = true
vim.wo.relativenumber = true

-- Общая вставка
vim.opt.clipboard = "unnamedplus"

-- Отступы
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- Скролл
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.opt.termguicolors = true

-- Стилизация редактора
vim.opt.fillchars = {
	vert = "│",
	fold = "⠀",
	eob = " ", -- suppress ~ at EndOfBuffer
	diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
	msgsep = "‾",
	foldopen = "▾",
	foldsep = "│",
	foldclose = "▸"
}

-- Кодировка
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- 
vim.opt.breakindent = true
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.autoindent = true
